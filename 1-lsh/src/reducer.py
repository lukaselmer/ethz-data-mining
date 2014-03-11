#!/usr/bin/env python

import numpy as np
import sys


class LineParser:
    def parse_line(self, line):
        key, value = line.strip().split("\t")
        video_id, shingle_str = value.split(";")
        shingles = map(int, shingle_str.split(","))
        return [key, int(video_id), shingles]


class JaccardDistance:
    def calculate_similarity(self, set1, set2):
        s1 = set(set1)
        s2 = set(set2)
        intersection_len = len(s1.intersection(s2))
        union_len = len(s1.union(s2))
        if intersection_len == 0:
            return 0.0
        return float(intersection_len) / float(union_len)

        # TOOD: implement this
        return 1.0


class Reducer:
    def __init__(self, lines):
        self.lines = lines
        self.jaccard = JaccardDistance()

    def print_duplicates(self, videos, shingles):
        unique = np.unique(videos)

        for i in xrange(len(unique)):
            for j in xrange(i + 1, len(unique)):
                self.print_result_if_correct_jaccard_distance(min(unique[i], unique[j]),
                                                              max(unique[i], unique[j]),
                                                              shingles)

    def print_result_if_correct_jaccard_distance(self, minVal, maxVal, shingles):
        if self.jaccard.calculate_similarity(shingles[minVal], shingles[maxVal]) >= 0.85:
            self.print_result(minVal, maxVal)

    def print_result(self, minVal, maxVal):
        print("%d\t%d" % (minVal, maxVal))

    def process(self):
        last_key = None
        duplicates = []
        all_shingles = dict()
        line_parser = LineParser()

        for line in self.lines:
            key, video_id, shingles = line_parser.parse_line(line)

            if last_key is None:
                last_key = key

            if key == last_key:
                duplicates.append(video_id)
                all_shingles[video_id] = shingles
            else:
                # Key changed (previous line was k=x, this line is k=y)
                self.print_duplicates(duplicates, all_shingles)
                duplicates = [video_id]
                all_shingles = {video_id: shingles}
                last_key = key

        if len(duplicates) > 0:
            self.print_duplicates(duplicates, all_shingles)


# TODO: test if (__name__ == "__main__") works on production!!!
if __name__ == "__main__":
    r = Reducer(sys.stdin)
    r.process()
