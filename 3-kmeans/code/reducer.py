#!/usr/bin/env python2.7

import sys
from sklearn.cluster import MiniBatchKMeans, KMeans
from sklearn.metrics import euclidean_distances
import numpy as np
import datetime
import logging


if __name__ == "__main__":
    reader = sys.stdin

    arr = []
    weights = []
    for line in reader:
        key, weight, data = line.split("\t")
        weights.append(np.float64(weight))
        arr.append(np.fromstring(data, dtype=np.float64, sep=' '))

    data = np.array(arr)
    nSamples = data.shape[0]
    weights = np.array(weights)

    # initialize 200 clusters
    indices = np.random.randint(nSamples, size=200)
    clusters = data[indices, :]

    # run weighted k-means
    km = KMeans(n_clusters=200, n_init=1)
    #km.fit(data)
    km.cluster_centers_ = clusters
    for t in range(200):
        cluster_indices = km.predict(data)  # get the indices to which each data sample belongs

        for i in range(clusters.shape[0]):
            data_indices = np.where(cluster_indices == i)[0]  # get all sample indices associated to cluster i

            weights_normalized = weights[data_indices] / float(sum(weights[data_indices]))
            weights_normalized = np.reshape(weights_normalized, [data_indices.shape[0], 1])

            data_normalized = data[data_indices, :] * weights_normalized
            clusters[i, :] = np.sum(data_normalized, axis=0)

        km.cluster_centers_ = clusters
        #logging.warn("Iteration %i, %f" % t)


    for r in range(clusters.shape[0]):
        print("%s" % " ".join(map(str, clusters[r, :])))

