#!/usr/bin/env python2.7

import sys
from sklearn.cluster import MiniBatchKMeans
import numpy as np
import datetime

if __name__ == "__main__":
    reader = sys.stdin
    mbk = MiniBatchKMeans(init='k-means++', n_clusters=200, n_init=10, verbose=0, random_state=42)

    arr = []
    for line in reader:
        key, data = line.split("\t")
        arr.append(np.fromstring(data, dtype=np.float, sep=' '))

        if len(arr) == 300000:
            arr = np.array(arr)
            mbk.partial_fit(arr)
            arr = []

    # fit the rest
    if len(arr) > 0:
        arr = np.array(arr)
        mbk.partial_fit(arr)

    mbk_means_cluster_centers = mbk.cluster_centers_

    for r in mbk_means_cluster_centers[:,:]:
        print("%s" % " ".join(map(str, r)))
