#!/usr/bin/env python2.7

import sys
import math
import numpy as np
import scipy
from sklearn.cluster import MiniBatchKMeans
import scipy as sp
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
    mbk = MiniBatchKMeans(init='k-means++', n_clusters=200,n_init=10, max_no_improvement=10, verbose=0, batch_size=100)
    mbk.fit(data)
    #mbk_means_labels = mbk.labels_
    mbk_means_cluster_centers = mbk.cluster_centers_
    #mbk_means_labels_unique = np.unique(mbk_means_labels)
    for r in mbk_means_cluster_centers[:,:]:
        print("1\t%s" % " ".join(map(str, r)))

def distancestocentres( test_data, cluster_centers):
    D = sp.spatial.distance.cdist(test_data, cluster_centers, 'sqeuclidean')
    return D.min(axis=1)  # all the distances


def generateCoreset(data):
    Dprime = data
    B = np.empty(shape=(0,data.shape[1]))

    while Dprime.shape[0] > 0:

        nPointsToSample = int(np.ceil(np.log2(Dprime.shape[0])))
        indices = np.random.choice(Dprime.shape[0], nPointsToSample, replace=False)


        if Dprime.shape[0] >= 5:
            S = Dprime[indices, :]
            Dprime = np.delete(Dprime, indices, axis=0) # remove chosen samples from remaining dataset

            # remove 1/2 of the closest samples
            minDist = distancestocentres(Dprime, S)
            indices2keep = np.where(minDist > np.median(minDist))[0]
            Dprime = Dprime[indices2keep,:]

            # Add chosen samples to the set B
            B = np.vstack([B,S])
        else:
            # if only 5 points left => take all points and stop
            B = np.vstack([B, Dprime])
            break


    # compute
    distance = sp.spatial.distance.cdist(data, B, 'sqeuclidean')
    indicesToSmallestCluster = np.argmin(distance, 1)

    q = np.zeros(shape=(data.shape[0]))
    for b in range(B.shape[0]):
        row_indices = np.where(indicesToSmallestCluster==b)[0]
        D_b = data[row_indices, :]

        total_cell_dist = sum(distance[row_indices, b])
        for i in row_indices:
            if total_cell_dist==0: # in case of just 1 element, then element = cluster center => distance = 0
                q[i] = np.ceil( 200/float(D_b.shape[0]))
            else:
                q[i] = np.ceil( 200/float(D_b.shape[0]) +  distance[i, b] / total_cell_dist)

    q_normalized=q/float(sum(q)) #normalize
    q_distribution = sp.stats.rv_discrete(name='q_distribution', values=(range(data.shape[0]),q_normalized))
    indices_of_samples = q_distribution.rvs(size=200)
    weights = 1/q;

    for i in indices_of_samples:
        print("1\t%f\t%s" % (weights[i], " ".join(map(str, data[i,:]))))




if __name__ == "__main__":
    data = read_input()
    generateCoreset(data)




