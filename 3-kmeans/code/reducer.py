#!/usr/bin/env python2.7

import sys
from sklearn.cluster import MiniBatchKMeans
import numpy as np
import datetime

if __name__ == "__main__":
    reader = sys.stdin
    arr = []
    for line in reader:
        key, data = line.split("\t")
        arr.append(np.fromstring(data, dtype=np.float, sep=' '))

    arr = np.array(arr)

    mbk = MiniBatchKMeans(init='k-means++', n_clusters=200,
                      n_init=10, max_no_improvement=10, verbose=0)
    mbk.fit(arr)
    #mbk_means_labels = mbk.labels_
    mbk_means_cluster_centers = mbk.cluster_centers_
    #mbk_means_labels_unique = np.unique(mbk_means_labels)
    for r in mbk_means_cluster_centers[:,:]:
        print("%s" % " ".join(map(str, r)))
