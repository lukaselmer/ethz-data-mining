#!/usr/bin/env python2.7

import sys
from sklearn.cluster import MiniBatchKMeans, KMeans
from sklearn.metrics import euclidean_distances
import numpy as np
import datetime


if __name__ == "__main__":
    reader = sys.stdin

    arr = []
    weights = []
    for line in reader:
        key, weight, data = line.split("\t")
        weights.append(weight)
        arr.append(np.fromstring(data, dtype=np.float64, sep=' '))

    # TODO: use / implement WeightedKMeans


    #mbk = KMeans(n_clusters=200, n_init=1, random_state=42, init=load_good_centers())
    k = KMeans(n_clusters=200, n_init=1, random_state=42)
    k.fit(arr)

    for row in k.cluster_centers_:
        print("%s" % " ".join(map(str, row)))
