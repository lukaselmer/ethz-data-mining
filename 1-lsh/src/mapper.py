#!/usr/bin/env python

import sys

import numpy as np

np.random.seed(seed=42)


class IDPermutation:
    def permute(self, vector, i):
        return vector


class DMHash:
    def __init__(self, max):
        self.max = max

    def generateHash(self, vector):
        def power(x): return pow(self.max, x)

        a = [power(i) * v for i, v in enumerate(vector)]
        return sum(a)


def partition(video_id, shingles):
    pass


class Mapper:
    def __init__(self, permuter, number_of_buckets=34):
        self.permuter = permuter
        self.number_of_buckets = number_of_buckets

    def map(self, line):
        # extract video id
        video_id = int(line[6:15])

        # get vector representation of video data
        shingles = np.fromstring(line[16:], sep=" ")

        for i in range(0, self.number_of_buckets):
            permuted_vector = self.permuter.permute(shingles, i)
            sig = self.generate_signature(permuted_vector)

            # generate signature for this movie (1 column in signature matrix)
            self.print_res(sig, video_id)

            #print '%s, %s' % (video_id, shingles)
            # WTF?
            #partition(video_id, shingles)

    def print_res(self, key, value):
        print('%d\t%d' % (key, value))

    # shingles is a list of indexes (if index is present it means that the movie contains the shingle with this index)
    def generate_signature(self, shingles):

        # TODO: generate random hash function for row permutation of form: ax + b mod p
        p = 10000
        a = 431
        b = 151

        min_hash = np.inf
        for index in shingles:
            min_hash = min(min_hash, (a * index + b) % p)

        return min_hash


if __name__ == "__main__":
    # Very important. Make sure that each machine is using the
    # same seed when generating random numbers for the hash functions.

    m = Mapper(IDPermutation())

    for line in sys.stdin:
        line = line.strip()

        m.map(line)
