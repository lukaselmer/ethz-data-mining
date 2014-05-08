#!/usr/bin/env python2.7

import sys
import math
import numpy as np
import scipy
from sklearn.cluster import k_means
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
    np.random.shuffle(data)
    num_mappers = (10 if "--local" in sys.argv else 300)
    total_in_reducer = 9999
    per_reducer = total_in_reducer / num_mappers
    for r in data[0:per_reducer]:
        print("1\t%s" % " ".join(map(str, r)))


if __name__ == "__main__":
    data = read_input()
    cluster(data)
