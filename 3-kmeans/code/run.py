#!/usr/bin/env python2.7

import sys
from sklearn.cluster import k_means, MiniBatchKMeans, KMeans
import numpy as np
import datetime


if __name__ == "__main__":
    #arr = []
    #arr.append(np.fromstring(line, dtype=np.float, sep=' '))
    #print np.array(arr)

    c = datetime.datetime.now()
    print(c)
    data = np.load("1-data/training.npz")['arr_0']
    #data = data[:60000]
    print('Data loaded')

    m = MiniBatchKMeans(n_clusters=200, n_init=1, batch_size=200000, verbose=1)#, batch_size=6000) #, init_size=1000
    m.fit(data)

    print("Fitted!")

    centers = m.cluster_centers_
    score = m.score(data) / len(data) * -1

    print("Score: %f" % score)

    print('Saving results')
    np.savetxt('1-data/centers.csv', centers)

    #res = k_means(data, n_clusters=200)
    #np.savetxt('1-data/run_result.csv', res[0])
    #print(res)
    print(datetime.datetime.now())
    print(datetime.datetime.now() - c)
    pass
