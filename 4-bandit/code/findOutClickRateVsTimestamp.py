#!/usr/bin/env python2.7
import sys
import gzip
import datetime
import numpy as np


def read_articles(path):
    articles = {}
    with file(path) as inf:
        for line in inf:
            tokens = line.strip().split()
            articles[int(tokens[0])] = [float(x) for x in tokens[1:]]


def process(path):
    time=0
    lines_total=0
    history = {}

    for i in range(10):
        with gzip.open(path % (i+1), 'rb') as inf:
            for line in inf:
                # Parsing the log line.
                logline = line.strip().split()
                chosen = int(logline.pop(1))
                user_action = int(logline.pop(1))
                time = int(logline[0])
                lines_total += 1
                if chosen == 109528:  # doesn't exist!
                    continue

                user_features = [None] * 6
                for feat in logline[2:8]:
                    user_features[int(feat[0]) - 1] = float(feat[2:])

                articles = []
                for feat in logline[8:]:
                    if feat[0] == '|':
                        article_id = int(feat[1:])
                        if article_id != 109528:
                            articles.append(article_id)



                # Updating the policy.
                if user_action and chosen==109484:
                    if history.has_key(chosen):
                        firstTS, diff, clicked = history[chosen]
                        diff = time-firstTS
                        clicked +=1
                        history[chosen] = (firstTS,diff,clicked)
                        print 'article:%d\tfirstTS: %d\tdiff:%d\tclicked:%d'%(chosen,firstTS,diff,clicked)
                    else:
                        history[chosen] = (time,0,1)



if __name__ == "__main__":
    if (len(sys.argv) != 3):
        print "Usage: ./evaluator.py articles log"
        sys.exit(-1)

    read_articles(sys.argv[1])
    process(sys.argv[2])
