#!/usr/bin/env python

import sys

import numpy as np
from numpy.core.multiarray import dtype

np.random.seed(seed=42)

def generate_permutations(num_permutations, num_shingles):
    indexes = np.arange(num_shingles).reshape(num_shingles, 1)
    indexes = np.tile(indexes, [1, num_permutations])  # replicate column vector

    for i in xrange(num_permutations):
        indexes[:, i] = np.random.permutation(indexes[:, i])

    return indexes



class DMHash:
    def __init__(self, max):
        self.max = max

    def generateHash(self, vector):
        def power(x): return pow(self.max, x)

        a = [power(i) * v for i, v in enumerate(vector)]
        return sum(a)


class Mapper:
    def __init__(self, number_of_bands=256, number_of_rows_per_band=42):
        self.number_of_bands = number_of_bands
        self.number_of_rows_per_band = number_of_rows_per_band
        self.permutations = generate_permutations(number_of_bands * number_of_rows_per_band, 10000)

    def map(self, line):
        # extract video id
        video_id = int(line[6:15])

        # get vector representation of video data
        shingles = np.fromstring(line[16:], dtype=int, sep=" ")

        sig = self.generate_signature(shingles, self.permutations)

        for i in range(0, self.number_of_bands):
            d = DMHash(10000)
            hash = d.generateHash(sig[i*self.number_of_rows_per_band : (i+1)*self.number_of_rows_per_band])

            # generate signature for this movie (1 column in signature matrix)
            self.print_res(str(i) + ":" + str(hash[0]), video_id, shingles)

    def print_res(self, key, value, shingles):
        # generates something like <key>\t<value>;<shingle1>,<shingle2>,...
        print('%s\t%d;%s' % (key, value, ','.join(str(s) for s in shingles)))

    # Input:
    #   shingles is a list of indexes (if index is present it means that the movie contains the shingle with this index)
    #   permutations is a mxn matrix where each column represents a permutation of the range [0, 10000)
    # Output:
    #   signature_column:   a nx1 vector which represents the signature of this video
    def generate_signature(self, shingles, permutations):

        num_permutations = np.size(permutations, 1)

        minvalues = np.min(permutations[shingles,:], 0)
        return np.reshape(minvalues, [num_permutations,1])


if __name__ == "__main__":
    m = None
    if len(sys.argv) > 1:
        m = Mapper(int(sys.argv[1]), int(sys.argv[2]))
    else:
        m = Mapper()

    for line in sys.stdin:
        line = line.strip()
        m.map(line)
