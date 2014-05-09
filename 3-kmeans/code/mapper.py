#!/usr/bin/env python2.7
import logging

import sys
import math
import numpy as np
import scipy
from sklearn.cluster import MiniBatchKMeans, KMeans
from sklearn.metrics import euclidean_distances
import datetime
import good_data


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


class DataPoint():
    def __init__(self, point, cluster):
        self.point = point
        self.cluster = cluster
        self.cluster.addPoint(point)
        self.q = None
        self.dp_sum = None

    def calc_sampling_weight(self):
        if self.q is None:
            # Formula slide 33, dm-09
            self.q = np.ceil(
                (5.0 / len(self.cluster)) +
                (Helper.dist_func(self.cluster.center, self.point) / self.cluster.dist_point_sum())
            )
        return self.q

    def calc_sampling_probability(self):
        return self.calc_sampling_weight() / self.dp_sum

    def calc_weight(self):
        return 1.0 / self.calc_sampling_probability()


class Mapper:
    def __init__(self):
        total_rows_in_reducer, mappers = [8000, 14] if "--local" in sys.argv else [40000, 300]

        self.no_clusters = 200
        self.out_per_mapper = total_rows_in_reducer / mappers
        self.written = 0
        self.num_per_mapper = 6667
        self.avg_cluster_size = float(self.num_per_mapper / self.no_clusters)
        self.cluster_centers = None
        self.data_points = None

    def run(self):
        data = self.read_input()
        self.cluster(data)

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

    def cluster(self, data):
        np.random.shuffle(data)

        k = KMeans(n_clusters=self.no_clusters, n_init=1, random_state=42, init=good_data.load_good_centers_data())
        assigned_clusters = k.fit_predict(data)
        self.cluster_centers = [ClusterCenter(c) for c in k.cluster_centers_]
        self.data_points = [DataPoint(data[i], self.cluster_centers[assigned_clusters[i]]) for i in range(len(data))]

        dp_sum = sum([dp.calc_sampling_weight() for dp in self.data_points])

        for dp in self.data_points:
            if not self.can_write_more_features():
                return

            dp.dp_sum = dp_sum
            if np.random.sample() < dp.calc_sampling_probability():
                continue

            self.write_feature(dp.point, dp.calc_sampling_weight())


if __name__ == "__main__":
    m = Mapper()
    m.run()




