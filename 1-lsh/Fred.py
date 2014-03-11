#!/usr/bin/env python

import sys

import numpy as np
from numpy.core.multiarray import dtype



def test(str):
    key,video_id,shingles = str.split(',')
    return key,video_id, shingles


if __name__ == "__main__":
    str = "0:195043920039,0,[123   1  34  45]"
    test(str)