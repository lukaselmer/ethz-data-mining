#!/usr/bin/env python2.7

import sys
from sklearn.cluster import k_means, MiniBatchKMeans, KMeans, DBSCAN
import numpy as np
import datetime


if __name__ == "__main__":
    #arr = []
    #arr.append(np.fromstring(line, dtype=np.float, sep=' '))
    #print np.array(arr)

    c = datetime.datetime.now()
    print(c)
    data = np.load("1-data/training.npz")['arr_0']
    data = data[:1000]
    print('Data loaded')

    m = DBSCAN(leaf_size=200)#, batch_size=6000) #, init_size=1000
    y = m.fit_predict(data)

    print("Fitted!")

    np.savetxt('1-data/dbscan.csv', y)


    #res = k_means(data, n_clusters=200)
    #np.savetxt('1-data/run_result.csv', res[0])
    #print(res)
    print(datetime.datetime.now())
    print(datetime.datetime.now() - c)
    pass
