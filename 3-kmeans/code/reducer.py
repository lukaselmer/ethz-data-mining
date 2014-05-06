#!/usr/bin/env python2.7

import sys
from sklearn.cluster import k_means
import numpy as np
import datetime

if __name__ == "__main__":
    reader = sys.stdin
    arr = []
    for line in reader:
        key, data = line.split("\t")
        arr.append(np.fromstring(data, dtype=np.float, sep=' '))

    arr = np.array(arr)

    res = k_means(arr, n_clusters=200)
    for r in res[0]:
        print("%s" % " ".join(map(str, r)))
