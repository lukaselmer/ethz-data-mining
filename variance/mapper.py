#!/usr/bin/env python
"""A mapper to calculate the mean"""

import sys

def read_input(file):
    for line in file:
        # split the line into words
        yield line.split()

def main(separator='\t'):
    # input comes from STDIN (standard input)
    data = read_input(sys.stdin)
    for numbers in data:
        # write the results to STDOUT (standard output);
        # what we output here will be the input for the
        # Reduce step, i.e. the input for reducer.py
        #
        # tab-delimited; the trivial word count is 1
        for number in numbers:
            num = int(number)
            print('%s%s%d%s%d' % (1, separator, num, ",", num*num))


if __name__ == "__main__":
    main()

