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
    max_test = 100
    max_train = 1000

    count = 0

    for line in reader:
        max_test_reached = len(Xtest) >= max_test
        max_train_reached = len(Train) >= max_train

        if max_train_reached and max_train_reached:
            break

        train = np.rand() < 0.01 and not max_train_reached
        test = (not train) and np.rand() < 0.01 and not max_test_reached

        if not (test or train):
            continue

        def appendList(lx, ly, x, y):
            ly.append(x)
            ly.append(y)

        line = line.strip().split(' ')
        a = line.pop(0)
        b = " ".join(line)

        if test:
            Xtest.append(a)
            Ytest.append(b)
        else:
            Train.append(line)

open('./1-data/training.txt', 'w').writelines(Train)
open('./1-data/test_data.txt', 'w').writelines(Xtest)
open('./1-data/test_labels.txt', 'w').writelines(Ytest)



