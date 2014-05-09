#!/usr/bin/env python2.7

import sys
from sklearn.cluster import k_means
import numpy as np
import datetime
from sklearn.cluster.k_means_ import KMeans


if __name__ == "__main__":
    reader = sys.stdin
    data = []
    weights = []


    #for f in range(1, 16):
    #     for line in open('./1-data/results/mapper_results_%i.txt' % f, 'r'):
    #         key, weight, sample= line.split("\t")
    #         data.append(np.fromstring(sample, dtype=np.float, sep=' '))
    #         weights.append(float(weight))

    for line in reader:
         key, weight, sample = line.split("\t")
         data.append(np.fromstring(sample, dtype=np.float, sep=' '))
         weights.append(float(weight))

    data = np.array(data)
    nSamples = data.shape[0]
    weights = np.array(weights)

    # initialize 200 clusters
    indices = np.random.randint(nSamples, size=200)
    clusters = data[indices, :]

    # run weighted k-means
    km = KMeans(n_clusters=200)
    km.cluster_centers_ = clusters
    for t in range(500):

        cluster_indices = km.predict(data) # get the indices to which each data sample belongs

        for i in range(clusters.shape[0]):
            data_indices = np.where(cluster_indices == i)[0]  # get all sample indices associated to cluster i

            weights_normalized = weights[data_indices] / float(sum(weights[data_indices]))
            weights_normalized = np.reshape(weights_normalized, [data_indices.shape[0], 1])

            data_normalized = data[data_indices, :] * weights_normalized
            clusters[i, :] = np.sum(data_normalized, axis=0)

        km.cluster_centers_ = clusters


    for r in range(clusters.shape[0]):
        print("%s" % " ".join(map(str, clusters[r, :])))
