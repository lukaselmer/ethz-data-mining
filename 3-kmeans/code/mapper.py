#!/usr/bin/env python2.7

import sys
import math
import numpy as np
import scipy
from sklearn.cluster import k_means, KMeans
import datetime


def read_input():
    reader = sys.stdin
    read_from_file = "--read_from_file=1" in sys.argv

    if read_from_file:
        reader = open('./1-data/training_part1.csv', 'r')

    arr = []
    for line in reader:
        arr.append(np.fromstring(line, dtype=np.float, sep=' '))

    return np.array(arr)


def cluster(data):
    k_means = KMeans(n_clusters=100, init='k-means++', n_init=10, precompute_distances=True)
    k_means.fit(data)
    k_means_labels = k_means.labels_
    k_means_cluster_centers = k_means.cluster_centers_

    for i in range(k_means_cluster_centers.shape[0]):
        print("1\t%d\t%s" % (np.where(k_means_labels == i)[0].size, " ".join(map(str, k_means_cluster_centers[i, :]))))


if __name__ == "__main__":
    data = read_input()
    cluster(data)




