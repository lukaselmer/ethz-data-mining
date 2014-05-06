#!/usr/bin/env python2.7

from sklearn.cluster import k_means
import numpy as np
import datetime


if __name__ == "__main__":
    c = datetime.datetime.now()
    print(c)

    data = np.load("1-data/training.npz")['arr_0']

    data = data[:60000]

    print('Data loaded')

    res = k_means(data, n_clusters=200)

    print('Saving results')

    np.savetxt('1-data/run_result.csv', res[0])

    print(res)

    print(datetime.datetime.now())
    print(datetime.datetime.now() - c)

    pass
