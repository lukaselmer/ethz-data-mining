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


if __name__ == "__main__":

    Xtest = []
    Ytest = []
    Train = []

    reader = open('./1-data/training', 'r')
    max_test = 5000
    max_train = 20000

    count = 0

    for line in reader:
        max_test_reached = len(Xtest) >= max_test
        max_train_reached = len(Train) >= max_train

        if max_train_reached and max_train_reached:
            break

        train = np.random.random() < 0.9 and not max_train_reached
        test = (not train) and np.random.random() < 0.9 and not max_test_reached

        if not (test or train):
            continue

        def appendList(lx, ly, x, y):
            ly.append(x)
            ly.append(y)

        l = line.strip().split(' ')
        a = l.pop(0)
        b = " ".join(l)

        if test:
            Ytest.append(a)
            Xtest.append(b)
        else:
            Train.append(line.strip())


def write_array(stream, array):
    for a in array:
        stream.write(a + "\n")


write_array(open('./1-data/training.txt', 'w'), Train)
write_array(open('./1-data/test_data.txt', 'w'), Xtest)
write_array(open('./1-data/test_labels.txt', 'w'), Ytest)

