#!/usr/bin/env python

# Usage:
# cd 2-visual_test
# cat ../1-data/training_images.txt  | ../mapper.py | ../reducer.py > weights.txt
# ../evaluate_to_file.py weights.txt ../1-data/images.txt > prediction.txt

import logging
import sys
from scipy import ndimage
import matplotlib.pyplot as plt
from skimage import data, io, filter

import numpy as np

# So we can use the same feature vectors.
from mapper import transform

if __name__ == "__main__":

    with open("1-data/images.txt", "r") as fp_data:
        for x_string in fp_data:
            x_string = x_string.strip()

            x_original = np.fromstring(x_string, sep=' ')
            #x = transform(x_original).flatten()  # Use our features.

            #print(x_original)
            io.imshow(x_original)
            #plt.imshow(x_original)

            #plt.figure(figsize=(20, 20))
            #plt.subplot(131)
            #plt.show()
            exit(0)
