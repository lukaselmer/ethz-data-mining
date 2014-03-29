#!/usr/bin/env python2.7

import sys
import numpy as np
from sklearn.svm import LinearSVC

# This function has to either stay in this form or implement the
# feature mapping. For details refer to the handout pdf.
def transform(x_original):
    return x_original

if __name__ == "__main__":
    X = []
    Y = []

    reader = sys.stdin
    if "--read_from_file=1" in sys.argv:
        reader = open('./1-data/training', 'r')

    for line in reader:
        line = line.strip().split(' ')

        y = int(line.pop(0))
        x = map(float, line)

        Y.append(y)
        X.append(x)

    X = np.array(X)
    Y = np.array(Y)

    svmModel = LinearSVC(random_state=0).fit(X, Y)
    s = ["%f" % x for x in svmModel.coef_[0, :]]
    print 'key\t%s' % (' '.join(s))

    # for local testing
    #Y_predicted = svmModel.predict(X);
    #with open('./2-visual_test/prediction.txt',"w") as f:
    #    for i in range(len(Y_predicted)):
    #        f.write( str(Y_predicted[i]) + "\n")