#!/usr/bin/env python2.7

import sys
from sklearn.cluster import k_means
import numpy as np
import scipy as sp

def distancestocentres( test_data, cluster_centers):
    D = sp.spatial.distance.cdist(test_data, cluster_centers, 'sqeuclidean')

    return D

def getMinimumIndicesToRemove(D):
    indices = np.argmin(D, 1)
    rowIndex = np.argmin(D[range(D.shape[0]), indices])
    return rowIndex, indices[rowIndex]

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

    # iteratively merge closest clusters
    D = distancestocentres(clusters, clusters)
    np.fill_diagonal(D, np.inf)  # set distance to itself to infinity
    while clusters.shape[0] > 200:
        (index_c1, index_c2) = getMinimumIndicesToRemove(D)

        # compute weights
        w_total = weights[index_c1] + weights[index_c2]
        w_c1 = weights[index_c1] / float(w_total)
        w_c2 = weights[index_c2] / float(w_total)

        # merge 2 clusters
        c_new = w_c1 * clusters[index_c1, :] +  w_c2 * clusters[index_c2, :]

        # update cluster arrays
        clusters[index_c2, :] = c_new    # replace with merged cluster
        weights[index_c2] = w_total # replace with total weight

        # update distance array
        D_temp = distancestocentres(clusters, np.reshape(c_new, [1, 750]))  # compute all distances to merged cluster
        D[range(D.shape[0]), index_c2] = D_temp.ravel()
        D[index_c2, range(D.shape[0])] = D_temp.ravel()
        D[index_c2, index_c2] = np.inf

        # remove merged cluster
        clusters = np.delete(clusters, (index_c1), axis=0) # remove merged cluster
        weights = np.delete(weights, (index_c1), axis=0) # remove weight
        D = np.delete(D, (index_c1), axis=0)  # remove merged cluster (row)
        D = np.delete(D, (index_c1), axis=1)  # remove merged cluster (column)


    for i in range(clusters.shape[0]):
        print("%s" % " ".join(map(str, clusters[i, :])))