#!/usr/bin/env python2.7
import logging

import sys
import math
import numpy as np
import scipy
from sklearn.cluster import MiniBatchKMeans, KMeans
from sklearn.metrics import euclidean_distances
import datetime
#import good_data

# 40'000: Submission 2952, score: 740.608811745 => 12 minutes
# 55'000: Submission: 2953, score: 739.711630341 => 20 minutes
# 65'000: Submission: 2954, score: 739.300944969 => ? minutes
# 75'000: Submission: 2955, score: ? => ? minutes
# 85'000: Submission: 2956, score: ? => ? minutes

class Helper:
    def __init__(self):
        pass

    @staticmethod
    def dist_func(center, point):
        return euclidean_distances(center, point, squared=True)


class ClusterCenter():
    def __init__(self, center):
        self.center = center
        self.points = []
        self.dist_sum = None

    def add_point(self, point):
        self.points.append(point)
        self.dist_sum = None

    def dist_point_sum(self):
        if self.dist_sum is None:
            self.dist_sum = 0.0
            for point in self:
                self.dist_sum += Helper.dist_func(self.center, point)
        return self.dist_sum

    def __len__(self):
        return len(self.points)

    def __getitem__(self, item):
        return self.points[item]

    def get_half_farthest_points(self):
        dist_points = [[Helper.dist_func(self.center, p), p] for p in self.points]
        sorted_dist_points = sorted(dist_points, key=lambda dist_point: dist_point[0])
        to_keep = len(self.points) / 2
        return [dist_point[1] for dist_point in sorted_dist_points][0:to_keep]


class DataPoint():
    def __init__(self, point, cluster):
        self.point = point
        self.cluster = cluster
        self.cluster.add_point(point)
        self.q = None
        self.dp_sum = None

    def calc_sampling_weight(self):
        if self.q is None:
            # Formula slide 33, dm-09
            center_dist_ratio = 1.0
            if Helper.dist_func(self.cluster.center, self.point) != 0.0:
                center_dist_ratio = Helper.dist_func(self.cluster.center, self.point) / self.cluster.dist_point_sum()

            self.q = np.ceil(
                (5.0 / len(self.cluster)) +
                center_dist_ratio
            )
        return self.q

    def calc_sampling_probability(self):
        return self.calc_sampling_weight() / self.dp_sum

    def calc_weight(self):
        return 1.0 / self.calc_sampling_probability()


class Mapper:
    def __init__(self):
        total_rows_in_reducer, mappers = [65000, 14] if "--local" in sys.argv else [65000, 300]

        self.no_clusters = 200
        self.out_per_mapper = total_rows_in_reducer / mappers
        self.written = 0

        self.num_per_mapper = 6667
        self.avg_cluster_size = None
        self.keep_ratio = None

        self.cluster_centers = None
        self.cluster_center_points = None
        self.data_points = None

    def run(self):
        self.data = self.read_input()

        self.num_per_mapper = len(self.data)
        self.avg_cluster_size = float(self.num_per_mapper) / float(self.no_clusters)
        self.keep_ratio = float(self.out_per_mapper) / float(self.num_per_mapper)

        np.random.shuffle(self.data)
        self.cluster_center_points = self.build_coresets()
        self.cluster_centers = [ClusterCenter(c) for c in self.cluster_center_points]
        self.sample_points()
        #logging.warn("Written %i" % self.written)
        #logging.warn(self.out_per_mapper)

    def read_input(self):
        reader = sys.stdin

        if "--read_from_file" in sys.argv:
            index = int(sys.argv[1])

            return np.load("../../../1-data/training.npz")['arr_0'][
                   ((index - 1) * self.num_per_mapper):(index * self.num_per_mapper)]

        arr = []
        for line in reader:
            arr.append(np.fromstring(line, dtype=np.float64, sep=' '))

        return np.array(arr)

    def write_feature(self, row, weight):
        print("1\t%f\t%s" % (weight, " ".join(map(str, row))))
        self.written += 1

    def can_write_more_features(self):
        return self.written < self.out_per_mapper

    def cluster_center(self, cluster_index):
        return self.cluster_centers[cluster_index]

    def build_coresets(self):
        # The number of elements to take into the coreset at each iteration
        # should be 10 * d * k * ln(1/epsilon) = 10 * 750 * 200 * ln(1/0.1) = HUGE!?
        # Hmm...
        # From: http://www.mit.edu/~michaf/Code/SVDCoresetAlg.m: "Should be equal to k / epsilon^2"
        # k / epsilon^2
        # for epsilon = 0.99: 200/(0.99)^2 = 205
        # for epsilon = 0.5: 200/(0.5)^2   = 800
        # for epsilon = 0.4: 200/(0.4)^2   = 1250
        # for epsilon = 0.3: 200/(0.3)^2   = 2223
        # for epsilon = 0.2: 200/(0.2)^2   = 5000
        # for epsilon = 0.1: 200/(0.1)^2   = 20000
        # for epsilon = 0.05: 200/(0.05)^2 = 80000
        # => to have at most 60'000 dp's at the reducer, chose at most 200 per mapper => gives an epsilon = 0.99??
        # => have to merge coresets at the reducer!
        # TODO: use higher value here, and merge coresets at reducer
        magic_constant = int(self.out_per_mapper / np.log2(len(self.data)) / 2.0 + 1)

        # self.data is shuffled already => it's ok to take the first n points for uniform sampling
        dat = self.data.tolist()
        coreset = []
        while len(dat) > 0:
            coreset_part = dat[0:magic_constant]
            coreset += coreset_part
            dat = np.delete(dat, range(0, min(magic_constant, len(dat))), axis=0)
            dat = self.remove_half_nearest_points(coreset_part, dat)
        return coreset

    def sample_points(self):
        k = KMeans(n_clusters=self.no_clusters)
        k.cluster_centers_ = np.array(self.cluster_center_points)
        assigned_clusters = k.predict(np.array(self.data))

        self.cluster_centers = [ClusterCenter(c) for c in self.cluster_center_points]
        self.data_points = [DataPoint(self.data[i], self.cluster_centers[assigned_clusters[i]]) for i in
                            range(len(self.data))]

        dp_sum = np.sum([dp.calc_sampling_weight() for dp in self.data_points]) / self.out_per_mapper

        for dp in self.data_points:
            dp.dp_sum = dp_sum

        #logging.warn("Tot!")
        #logging.warn(sum([dp.calc_sampling_probability() for dp in self.data_points]))
        #logging.error(len(self.data_points))

        while self.can_write_more_features():
            np.random.shuffle(self.data_points)
            for dp in self.data_points:
                if not self.can_write_more_features():
                    return

                dp.dp_sum = dp_sum
                if np.random.sample() < dp.calc_sampling_probability():
                    self.write_feature(dp.point, dp.calc_sampling_weight())

    def remove_half_nearest_points(self, center_points, data):
        k = KMeans(n_clusters=self.no_clusters)
        k.cluster_centers_ = np.array(center_points)
        assigned_clusters = k.predict(np.array(data))
        clusters = [ClusterCenter(c) for c in center_points]
        for i in range(0, len(assigned_clusters)):
            clusters[assigned_clusters[i]].add_point(data[i])

        ret = []
        for c in clusters:
            ret += c.get_half_farthest_points()
        return ret


if __name__ == "__main__":
    m = Mapper()
    m.run()




