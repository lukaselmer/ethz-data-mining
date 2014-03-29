#!/usr/bin/env python2.7

import sys
import math
import numpy as np
from numpy import linalg as LA
#from sklearn.multiclass import OneVsRestClassifier
#from sklearn.svm import LinearSVC
#from sklearn.metrics import accuracy_score
#from sklearn import cross_validation

# This function has to either stay in this form or implement the
# feature mapping. For details refer to the handout pdf.
def transform(x_original, make_np=True):

    x = []
    x.extend(x_original)

    def sqr(x):
        return x * x

    def sqr3(x):
        return x * x * x

    def e_pow(x):
        return math.exp(x)

    def me_pow(x):
        return math.exp(-x)


    #x.extend(map(sqr, x_original))
    #x.extend(map(e_pow, x_original))
    #x.extend(map(math.sqrt, x_original))
    #x.extend(map(sqr3, x_original))
    #x.extend(map(math.sin, x_original))
    #x.extend(map(me_pow, x_original))
    #x.extend(map(math.log, x_original))

    if make_np:
        return np.array(x)

    return x

if __name__ == "__main__":

    X = []
    Y = []
    k = 10

    for line in sys.stdin:
        line = line.strip().split(' ')
        Y.append(int(line.pop(0)))
        X.append(transform(map(float, line)))

    X = np.array(X)
    Y = np.array(Y)

    w = np.mat(np.array([0.01] * np.shape(X)[1])).T

    T = 100000  #number of Trials
    lambdaValue = 0.5 #value of lambda - sorry lambda alone is a keyword... check that norm|w| <= 1/sqrt(lambda)

    for t in range(1, T):
        randomIndices = np.random.randint(0, X.shape[0], size=(k))
        X_t = X[randomIndices, :]
        Y_t = Y[randomIndices]

        predictorAsMatrix = np.mat(X_t)*w
        failedIndeces = Y_t*predictorAsMatrix.T[0].tolist()[0] < 1

        X_t_plus = np.mat(X_t[failedIndeces])
        Y_t_plus = np.mat(Y_t[failedIndeces]).T
        Y_t_plus = np.repeat(Y_t_plus, X.shape[1], 1)

        grad_t = (lambdaValue*w.T) -1/float(k)*np.sum(np.multiply(X_t_plus,Y_t_plus),0)

        eta_t = 1/(float(t)*lambdaValue)
        w_t_prime = w - (eta_t*grad_t).T

        w = min(1,(1/np.sqrt(lambdaValue))/LA.norm(w_t_prime))*w_t_prime

    s = ["%f" % x for x in w[:,0]]
    print 'key\t%s' % " ".join(s)