#!/usr/bin/env python2.7

import sys
import math
import numpy as np
import scipy
from sklearn import linear_model
from sklearn.svm import LinearSVC

#from sklearn.multiclass import OneVsRestClassifier
#from sklearn.svm import LinearSVC
#from sklearn.metrics import accuracy_score
#from sklearn import cross_validation

# This function has to either stay in this form or implement the
# feature mapping. For details refer to the handout pdf.
def transform(x_original, make_np=True):
    x = []

    def sqr(x):
        return x * x

    def sqr3(x):
        return x * x * x

    def e_pow(x):
        return math.exp(x)

    def me_pow(x):
        return math.exp(-x)

    def fred(x):
        return round(math.fabs(x) * 1000)

    def extend_x(arr):
        x.extend(arr)
        x.append(scipy.std(arr))
        x.append(scipy.var(arr))
        x.append(sum(arr) / len(arr))
        x.append(min(arr))
        x.append(max(arr))
        x.append(scipy.mean(arr))
        x.append(scipy.median(arr))

    extend_x(x_original)
    extend_x(map(sqr, x_original))
    extend_x(map(e_pow, x_original))
    extend_x(map(me_pow, x_original))
    extend_x(map(math.sqrt, x_original))
    extend_x(map(np.abs, x_original))
    extend_x(map(sqr, map(e_pow, x_original)))
    #x.extend(map(math.sin, x_original))
    #x.extend(map(math.sin, map(math.sqrt, x_original)))

    #extend_x(map(math.sqrt, map(e_pow, x_original)))
    #extend_x(map(math.sqrt, map(math.sqrt, x_original)))

    x.append(sum(np.abs(x_original)) / len(x_original))
    x.append(1.)

    #x.extend(map(fred, x_original))
    #x.extend(map(sqr3, x_original))
    #x.extend(map(me_pow, x_original))
    #x.extend(map(math.log, x_original))

    if make_np:
        return np.array(x)

    return x


if __name__ == "__main__":
    def list_split(l):
        center = len(l) / 2
        return l[:center], l[center:]

    MAX_LINES = -1

    clf = LinearSVC(dual=False, C=1.1, loss='l2', penalty='l2')
    #clf = LinearSVC(dual=True, C=1.1, loss='l1', penalty='l2')
    #clf = linear_model.SGDClassifier()
    X = []
    Y = []

    reader = sys.stdin
    read_from_file = "--read_from_file=1" in sys.argv
    if read_from_file:
        reader = open('./1-data/training', 'r')
        MAX_LINES = 100

    count = 0

    for line in reader:
        count += 1
        if count > MAX_LINES > 0:
            break

        line = line.strip().split(' ')
        Y.append(int(line.pop(0)))
        X.append(transform(map(float, line), False))

    X = np.array(X)
    Y = np.array(Y)

    def fit(X, Y):
        z = clf.fit(X, Y)
        print("1\t%s" % ",".join(map(str, z.coef_[0])))

    #q, w = list_split(X)
    #x1, x2 = list_split(q)
    #x3, x4 = list_split(w)
    #q, w = list_split(Y)
    #y1, y2 = list_split(q)
    #y3, y4 = list_split(w)

    fit(X, Y)









