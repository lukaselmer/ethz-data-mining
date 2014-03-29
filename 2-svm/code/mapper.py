#!/usr/bin/env python2.7

import sys
import numpy as np
import scipy
from sklearn.svm import LinearSVC

#from sklearn.multiclass import OneVsRestClassifier
#from sklearn.svm import LinearSVC
#from sklearn.metrics import accuracy_score
#from sklearn import cross_validation

# This function has to either stay in this form or implement the
# feature mapping. For details refer to the handout pdf.
def transform(x_original):
    return x_original

if __name__ == "__main__":
    MAX_LINES = -1

    clf = LinearSVC()
    X = []
    Y = []

    read_from_file = "--read_from_file=1" in sys.argv
    reader = open('./1-data/training', 'r') if read_from_file else sys.stdin
    if read_from_file:
        MAX_LINES = 100

    count = 0

    for line in reader:
        count += 1
        if count > MAX_LINES > 0:
            break

        line = line.strip().split(' ')
        Y.append(int(line.pop(0)))
        X.append(map(float, line))

    X = np.array(X)
    Y = np.array(Y)

    z = clf.fit(X, Y)
    print("1\t%s" % ",".join(map(str, z.coef_[0])))
