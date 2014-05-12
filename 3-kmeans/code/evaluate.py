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


def load_test_data():
    return np.load("../../../1-data/training.npz")['arr_0']


def run():
    cluster_centers = load_prediction()
    test_data = load_test_data()
    k = KMeans(n_clusters=200)
    k.cluster_centers_ = cluster_centers
    score = k.score(test_data)
    print("Score: %f" % (score / len(test_data) * -1))


if __name__ == "__main__":
    run()
