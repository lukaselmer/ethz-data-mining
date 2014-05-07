#!/usr/bin/env python2.7

import sys
import math
import numpy as np
import scipy
from sklearn.cluster import k_means, KMeans
import datetime


def load_prediction():
    reader = open('./centers.txt', 'r')
    cluster_centers = []
    for line in reader:
        cluster_centers.append(np.fromstring(line, dtype=np.float, sep=' '))
    return np.array(cluster_centers)


def load_test_data(test_set_id):
    reader = open('../../training_part%i.csv' % test_set_id, 'r')
    test_data = []
    for line in reader:
        test_data.append(np.fromstring(line, dtype=np.float, sep=' '))
    return np.array(test_data)


def run():
    cluster_centers = load_prediction()
    tot = 0
    rg = range(10, 16)
    for i in rg:
        test_data = load_test_data(i)
        k = KMeans(n_clusters=200)
        k.cluster_centers_ = cluster_centers
        score = k.score(test_data) / len(test_data) * -1
        print("Test set %i: %f" % (i, score))
        tot += score
    print("Avg: %f" % (tot / len(rg)))


if __name__ == "__main__":
    run()
