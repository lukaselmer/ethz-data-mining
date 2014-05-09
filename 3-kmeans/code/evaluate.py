#!/usr/bin/env python2.7

import sys
import math
import numpy as np
import scipy as sp
from sklearn.cluster import k_means, KMeans
import datetime


def load_prediction():
    reader = open('./centers.txt', 'r')
    cluster_centers = []
    for line in reader:
        cluster_centers.append(np.fromstring(line, dtype=np.float, sep=' '))
    return np.array(cluster_centers)


def load_test_data(test_set_id):
    reader = open('../../../1-data/training_part%i.csv' % test_set_id, 'r')
    test_data = []
    for line in reader:
        test_data.append(np.fromstring(line, dtype=np.float, sep=' '))
    return np.array(test_data)

def distancestocentres( test_data, cluster_centers):
    D = sp.spatial.distance.cdist(test_data, cluster_centers, 'sqeuclidean')
    return D.min(axis=1)  # all the distances


def run(lastFile):
    cluster_centers = load_prediction()
    tot = 0
    n = 0
    rg = range(1, lastFile+1)
    for i in rg:
        print "computing score of set %i" % i
        test_data = load_test_data(i)
        dist = distancestocentres(test_data,cluster_centers)
        tot+=sum(dist)
        print("Score on set %i (local): %f" % (i, tot / len(test_data)))
        n += test_data.shape[0]

    print("Avg (local): %f" % (tot / n))


if __name__ == "__main__":
    run(int(sys.argv[1]))
