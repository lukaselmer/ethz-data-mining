#!/usr/bin/env python

import numpy as np
import sys


def partition(video_id, shingles):
    pass


# shingles is a list of indexes (if index is present it means that the movie contains the shingle with this index)
def generate_signature(shingles, a, b, p):
    min_hash = np.inf
    for index in shingles:
        min_hash = min(min_hash, (a*index + b) % p)

    return min_hash


if __name__ == "__main__":
    # Very important. Make sure that each machine is using the
    # same seed when generating random numbers for the hash functions.
    np.random.seed(seed=42)

    # TODO: generate random hash function for row permutation of form: ax + b mod p
    p = 10000
    a = 431
    b = 151

    for line in sys.stdin:
        line = line.strip()

        # extract video id
        video_id = int(line[6:15])

        # get vector representation of video data
        shingles = np.fromstring(line[16:], sep=" ")

        #print '%s, %s' % (video_id, shingles)

        # generate signature for this movie (1 column in signature matrix)
        sig = generate_signature(shingles, a, b, p)

        print '%d\t%d' % (sig, video_id)

        # WTF?
        partition(video_id, shingles)