#!/usr/bin/env python
"""A reducer for the mean"""

from itertools import groupby
from operator import itemgetter
import sys

def read_mapper_output(file, separator='\t'):
    for line in file:
        yield line.rstrip().split(separator, 1)

def main(separator='\t'):
    # input comes from STDIN (standard input)
    data = read_mapper_output(sys.stdin, separator=separator)
    # groupby groups multiple word-count pairs by word,
    # and creates an iterator that returns consecutive keys and their group:
    #   current_word - string containing a word (the key)
    #   group - iterator yielding all ["&lt;current_word&gt;", "&lt;count&gt;"] items
    for key, group in groupby(data, itemgetter(0)):
        try:
            total = 0
            squares_total = 0
            count = 0
            for _, value in group:
                val, squared_val = map(int, str.split(value, ","))
                total += val
                squares_total += squared_val
                count += 1

            # E[X]^2
            e_x2_outer = float(total * total) / float(count * count)
            # E[X^2]
            e_x2_inner = float(squares_total) / count

            print("%s%s%f" % (count, separator, e_x2_inner - e_x2_outer))
        except ValueError:
            # count was not a number, so silently discard this item
            pass

if __name__ == "__main__":
    main()
