#!/usr/bin/env python

import numpy as np
import sys


class LineParser:
    def parse_line(self, line):
        key, value = line.strip().split("\t")
        video_id, shingle_str = value.split(";")
        shingles = map(int, shingle_str.split(","))
        return [key, int(video_id), shingles]


class Reducer:
    def __init__(self, lines):
        self.lines = lines

    def print_duplicates(self, videos):
        unique = np.unique(videos)
        for i in xrange(len(unique)):
            for j in xrange(i + 1, len(unique)):
                self.print_result(min(unique[i], unique[j]),
                                  max(unique[i], unique[j]))

    def print_result(self, minVal, maxVal):
        print("%d\t%d" % (minVal, maxVal))

    def process(self):
        last_key = None
        duplicates = []
        line_parser = LineParser()

        for line in self.lines:
            key, video_id, shingles = line_parser.parse_line(line)

            if last_key is None:
                last_key = key

            if key == last_key:
                duplicates.append(video_id)
            else:
                # Key changed (previous line was k=x, this line is k=y)
                self.print_duplicates(duplicates)
                duplicates = [video_id]
                last_key = key

        if len(duplicates) > 0:
            self.print_duplicates(duplicates)


# TODO: test if (__name__ == "__main__") works on production!!!
if __name__ == "__main__":
    r = Reducer(sys.stdin)
    r.process()
