#!/usr/bin/env python2.7

import sys
import math
import numpy as np
import scipy
from sklearn.cluster import k_means, KMeans, MiniBatchKMeans
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
    #centers, _, score = k_means(data, n_clusters=200)
    #
    m = MiniBatchKMeans(n_clusters=200, batch_size=6000) #, init_size=1000
    m.fit(data)
    centers = m.cluster_centers_
    score = m.score(data) * -1

    for r in centers:
        print("1\t%s" % " ".join(map(str, r)))
    if "--local" in sys.argv:
        print >> sys.stderr, score / len(data)


if __name__ == "__main__":
    data = read_input()
    cluster(data)




