#!/usr/bin/env python2.7

import sys
from sklearn.cluster import k_means
import numpy as np
import datetime

if __name__ == "__main__":
    reader = sys.stdin
    clusters = []
    weights = []


    # for f in range(1, 16):
    #     for line in open('./1-data/results/mapper_results_%i.txt' % f, 'r'):
    #         key, weight, data = line.split("\t")
    #         clusters.append(np.fromstring(data, dtype=np.float, sep=' '))
    #         weights.append(float(weight))

    for line in reader:
         key, weight, data = line.split("\t")
         clusters.append(np.fromstring(data, dtype=np.float, sep=' '))
         weights.append(float(weight))

    clusters = np.array(clusters)
    weights = np.array(weights)

    res = k_means(clusters, init='k-means++', n_clusters=200, n_jobs=-1)
    for r in res[0]:
        print("%s" % " ".join(map(str, r)))
