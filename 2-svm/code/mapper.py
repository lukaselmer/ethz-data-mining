#!/usr/bin/env python2.7

import sys
import numpy as np
#from sklearn.multiclass import OneVsRestClassifier
#from sklearn.svm import LinearSVC
#from sklearn.metrics import accuracy_score
#from sklearn import cross_validation

# This function has to either stay in this form or implement the
# feature mapping. For details refer to the handout pdf.
def transform(x_original):
    return x_original

if __name__ == "__main__":
    pass

for line in sys.stdin:
    line = line.strip().split(' ')

    y = int(line.pop(0))
    x = map(float, line)

    print('label %i features %s' % (y, x))


