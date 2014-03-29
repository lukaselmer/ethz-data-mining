#!/usr/bin/env python2.7

import sys
import numpy as np

if __name__ == "__main__":
    W = []
    for line in sys.stdin:
        key, w = line.strip().split('\t')
        W.append(np.fromstring(w, sep=' '))

    W = np.array(W)
    print " ".join(map(str, np.mean(W, 0)))

