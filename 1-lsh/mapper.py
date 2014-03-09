#!/usr/bin/env python

import sys

from src.mapper import Mapper, IDPermutation


if __name__ == "__main__":
    # Very important. Make sure that each machine is using the
    # same seed when generating random numbers for the hash functions.

    m = Mapper.Mapper(IDPermutation.IDPermutation())

    for line in sys.stdin:
        line = line.strip()

        m.map(line)
