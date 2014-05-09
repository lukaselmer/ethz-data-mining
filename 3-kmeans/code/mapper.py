#!/usr/bin/env python2.7

import sys
import math
import numpy as np
import scipy
from sklearn.cluster import MiniBatchKMeans
import datetime


def read_input():
    reader = sys.stdin

    if "--read_from_file=1" in sys.argv:
        reader = open('./1-data/training_part1.csv', 'r')

    arr = []
    for line in reader:
        arr.append(np.fromstring(line, dtype=np.float64, sep=' '))

    return np.array(arr)


def cluster(data):
    total_rows_in_reducer = 150000.0
    mappers = 14.0 if "--local" in sys.argv else 300.0
    p_out = (total_rows_in_reducer / mappers) / len(data)

    for row in data:
        if np.random.random_sample() < p_out:
            print("1\t%s" % " ".join(map(str, row)))


if __name__ == "__main__":
    data = read_input()
    cluster(data)




