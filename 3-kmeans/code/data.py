#!/usr/bin/env python2.7

import numpy as np
import datetime

c = datetime.datetime.now()
print(c)

print 'Loading npz...'

# Load the file stored in NPZ format
data = np.load("1-data/training.npz")['arr_0']

firstDimOfEachCSV = 6500
filesToGenerate = 15
for i in range(0,filesToGenerate):
    fileName = './1-data/training_part' + str(i+1) + '.csv'
    print 'Saving: ' + fileName
    currentCSVData = data[i*firstDimOfEachCSV:firstDimOfEachCSV+i*firstDimOfEachCSV,:]
    # To store the file in CSV format
    np.savetxt(fileName, currentCSVData)

print 'Loading csv...'

# Load CSV file
#data = np.loadtxt('1-data/training.csv')

print '...done!'

print(datetime.datetime.now())
print(datetime.datetime.now() - c)
