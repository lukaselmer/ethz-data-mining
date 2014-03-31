#!/usr/bin/env python2.7

import sys
import math
import numpy as np
import scipy
from sklearn import linear_model
from sklearn.svm import LinearSVC
from sklearn.kernel_approximation import RBFSampler
from sklearn.kernel_approximation import AdditiveChi2Sampler

#from sklearn.multiclass import OneVsRestClassifier
#from sklearn.svm import LinearSVC
#from sklearn.metrics import accuracy_score
#from sklearn import cross_validation

# This function has to either stay in this form or implement the
# feature mapping. For details refer to the handout pdf.
def transform(x_original, make_np=True):
    x = []

    def kill_noise(arr, threshold=0.0001):
        return arr
        return [el if el >= threshold else 0 for el in arr]

    x_killed_noise = kill_noise(x_original)

    def multiply_x(times):
        def multiply(x):
            return x * times

        return multiply

    x1 = x_killed_noise
    x10 = map(multiply_x(10), x_killed_noise)
    x100 = map(multiply_x(100), x_killed_noise)
    xd10 = map(multiply_x(.1), x_killed_noise)
    xd100 = map(multiply_x(.01), x_killed_noise)

    def sqr(x):
        return x * x

    def sqr3(x):
        return x * x * x

    def e_pow(x):
        return math.exp(x) / math.e

    def me_pow(x):
        return math.exp(-x) * math.e

    def fred(x):
        return round(math.fabs(x) * 1000)

    def count0(arr):
        return sum(1 if el == 0.0 else 0 for el in arr)

    def count_smaller_ratio(arr, delta):
        return sum(1 if el <= delta else 0 for el in arr) / len(arr)

    def count_larger_ratio(arr, delta):
        return sum(1 if el >= delta else 0 for el in arr) / len(arr)

    def add_to_arr(arr, num):
        return [el + num for el in arr]

    def extend_x(arr, add_specials=True):
        x.extend(arr)
        if add_specials:
            #x.append(scipy.std(arr) * .1)
            #x.append(scipy.var(arr))
            x.append(sum(arr) / len(arr))
            #x.append(min(arr))
            #x.append(max(arr))
            #x.append(scipy.mean(arr))
            #x.append(scipy.median(arr))

    if False:
        rbf_feature = RBFSampler(gamma=500, random_state=1, n_components=1000)
        zzz = rbf_feature.fit_transform(np.array(x1))[0]
        extend_x(list(zzz))

    if False:
        rbf_feature = AdditiveChi2Sampler(1)
        zzz = rbf_feature.fit_transform(np.array(x100))[0]
        extend_x(list(zzz))


    if True:
        x.append(count0(x_original))
        x.append(count0(x1))
        x.append(count_smaller_ratio(x1, 0.01))
        x.append(count_smaller_ratio(x1, 0.001))
        x.append(count_smaller_ratio(x1, 0.0001))
        x.append(count_smaller_ratio(x1, 0.00001))
        x.append(count_smaller_ratio(x1, 0.000001))
        extend_x(map(sqr, x1))
        extend_x(map(e_pow, xd10))
        extend_x(map(me_pow, x1))
        extend_x(map(math.sqrt, xd10))
        extend_x(map(sqr, map(e_pow, xd10)))
        x.append(1.)
        x.extend(map(math.log, add_to_arr(xd100, .01)))


    #x.append(count_larger_ratio(x1, 0.3) * 1000.)
    #x.append(count_smaller_ratio(x1, 0.1))
    #x.append(count_smaller_ratio(x1, -0.0000001))
    #x.append(count_smaller_ratio(x1, 0.0000001))
    #x.append(count_smaller_ratio(x1, 0.00000001) * 100.)
    #extend_x(xd10)
    #extend_x(map(np.abs, x1))
    #x.extend(map(math.sin, xd10))
    #x.extend(map(math.sin, map(math.sqrt, xd10)))

    #extend_x(map(math.sqrt, map(e_pow, x1)))
    #extend_x(map(math.sqrt, map(math.sqrt, xd100)))

    #x.append(sum(np.abs(x1)) / len(x_original))

    #x.extend(map(fred, x1))
    #x.extend(map(sqr3, x1))
    #x.extend(map(me_pow, x_original))


    if make_np:
        return np.array(x)

    return x


if __name__ == "__main__":
    def list_split(l):
        center = len(l) / 2
        return l[:center], l[center:]

    MAX_LINES = -1

    clf = LinearSVC(dual=False, C=1.1, loss='l2', penalty='l2', tol=7e-5, fit_intercept=True, intercept_scaling=True)
    #clf = LinearSVC(dual=True, C=1.1, loss='l1', penalty='l2')
    #clf = linear_model.SGDClassifier()
    X = []
    Y = []

    reader = sys.stdin
    read_from_file = "--read_from_file=1" in sys.argv
    print_svm_score = "--print_svm_score=1" in sys.argv
    if read_from_file:
        reader = open('./1-data/training.txt', 'r')
        if not print_svm_score:
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
        if print_svm_score:
            print(clf.score(X, Y))

        print("1\t%s" % ",".join(map(str, z.coef_[0])))

    #q, w = list_split(X)
    #x1, x2 = list_split(q)
    #x3, x4 = list_split(w)
    #q, w = list_split(Y)
    #y1, y2 = list_split(q)
    #y3, y4 = list_split(w)

    fit(X, Y)









