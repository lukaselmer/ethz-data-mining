#!/usr/bin/env python2.7

import sys
import math
import numpy as np
import scipy
from sklearn.cluster import MiniBatchKMeans
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
    mbk = MiniBatchKMeans(init='k-means++', n_clusters=200,n_init=10, max_no_improvement=10, verbose=0)
    mbk.fit(data)
    #mbk_means_labels = mbk.labels_
    mbk_means_cluster_centers = mbk.cluster_centers_
    #mbk_means_labels_unique = np.unique(mbk_means_labels)
    for r in mbk_means_cluster_centers[:,:]:
        print("1\t%s" % " ".join(map(str, r)))


if __name__ == "__main__":
    data = read_input()
    cluster(data)




