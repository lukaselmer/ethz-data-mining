#!/usr/bin/env python

import sys
from sets import Set

true_dups = Set()
reported_dups = Set()

if len(sys.argv) < 3:
    print "Usage: python check.py reported_duplicates true_duplicates"
    exit(-1)

reported_duplicates_file = sys.argv[1]
true_duplicates_file = sys.argv[2]


with open(true_duplicates_file, "r") as inf:
    for line in inf:
        true_dups.add(line.strip())

with open(reported_duplicates_file, "r") as inf:
    for line in inf:
        reported_dups.add(line.strip())

tp = fp = fn = 0

for pair in reported_dups:
    if pair in true_dups:
        tp += 1
    else:
        fp += 1

for pair in true_dups:
    if pair not in reported_dups:
        fn += 1

print "TP =", tp, "FP =", fp, "FN =", fn

if tp + fp == 0:
    precision = 0
else:
    precision = 1.0 * tp / (tp + fp)

if tp + fn == 0:
    recall = 0
else:
    recall = 1.0 * tp / (tp + fn)

if precision + recall == 0:
    print ("Both precision and recall are 0.")
else:
    f1 = 2.0 * precision * recall/(precision + recall)
    print "Precision = %f, recall = %f, F1 = %f" % (precision, recall, f1)
