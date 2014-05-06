#!/usr/bin/env python2.7

import numpy as np
import datetime

c = datetime.datetime.now()
print(c)

print 'Loading npz...'

# Load the file stored in NPZ format
data = np.load("1-data/training.npz")['arr_0']

print 'Saving csv...'

# To store the file in CSV format
#np.savetxt('1-data/training.csv', data)

print 'Loading csv...'

# Load CSV file
#data = np.loadtxt('1-data/training.csv')

print '...done!'

print(datetime.datetime.now())
print(datetime.datetime.now() - c)
