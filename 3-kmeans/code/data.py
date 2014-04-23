#!/usr/bin/env python2.7

import numpy as np

# Load the file stored in NPZ format
data = np.load("training.npz")['arr_0']

# To store the file in CSV format
np.savetxt('training.csv', data)

# Load CSV file
data = np.loadtxt('training.csv')
