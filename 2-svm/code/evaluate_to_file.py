#!/usr/bin/env python

# Usage:
# cd 2-visual_test
# cat ../1-data/training_images.txt  | ../mapper.py | ../reducer.py > weights.txt
# ../evaluate_to_file.py weights.txt ../1-data/images.txt > prediction.txt

import logging
import sys
import numpy as np

# So we can use the same feature vectors.
from mapper import transform


if __name__ == "__main__":
    if not len(sys.argv) == 3:
        logging.error("Usage: evaluate.py weights.txt test_data.txt")
        sys.exit(1)

    with open(sys.argv[1], "r") as fp_weights:
        weights = np.genfromtxt(fp_weights).flatten()

    with open(sys.argv[2], "r") as fp_data:
        #with open(sys.argv[3], "r") as fp_labels:
        for x_string in fp_data:
            x_string = x_string.strip()

            x_original = np.fromstring(x_string, sep=' ')
            x = transform(x_original).flatten()  # Use our features.

            if not x.shape == weights.shape:
                logging.error("Shapes of weight vector and transformed "
                              "data don't match")
                sys.exit(3)
            #if (np.inner(weights, x) < 0):
            #    print -1
            #else:
            #    print 1
            print(-1 if np.inner(weights, x) < 0 else 1)
