#!/usr/bin/env python2.7
import logging

import sys
import math
import numpy as np
import scipy
from sklearn.cluster import MiniBatchKMeans, KMeans
import datetime
import good_data


class Mapper:
    def __init__(self):
        total_rows_in_reducer, mappers = [8000, 14] if "--local" in sys.argv else [40000, 300]

        self.no_clusters = 200
        self.out_per_mapper = total_rows_in_reducer / mappers
        self.written = 0
        self.num_per_mapper = 6667
        self.avg_cluster_size = float(self.num_per_mapper / self.no_clusters)

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

    def write_feature(self, row):
        print("1\t%s" % " ".join(map(str, row)))
        self.written += 1

    def can_write_more_features(self):
        return self.written < self.out_per_mapper

    def cluster(self, data):
        np.random.shuffle(data)

        cluster_sizes = {}

        k = KMeans(n_clusters=self.no_clusters, n_init=1, random_state=42, init=good_data.load_good_centers_data())
        clusters = k.fit_predict(data)

        for cluster in clusters:
            if not cluster_sizes.has_key(cluster):
                cluster_sizes[cluster] = 0
            cluster_sizes[cluster] += 1

        for i in range(len(data)):
            if not self.can_write_more_features():
                return

            row = data[i]
            cluster = clusters[i]
            cluster_size = cluster_sizes[cluster]

            p_use = cluster_size / self.avg_cluster_size * 3.0

            if np.random.sample < p_use:
                continue

            self.write_feature(row)

            #for row in data[0:out_per_mapper]:
            #    print("1\t%s" % " ".join(map(str, row)))


if __name__ == "__main__":
    m = Mapper()
    m.run()




