#!/usr/bin/env python2.7
import sys
import gzip
import policyLinUCBVectorized  # This is your policy file.
import datetime
import numpy as np

def drange(start, stop, step):
    r = start
    while r < stop:
        yield r
        r += step

def read_articles(path):
    articles = {}
    with file(path) as inf:
        for line in inf:
            tokens = line.strip().split()
            articles[int(tokens[0])] = [float(x) for x in tokens[1:]]
    range = drange(0.1, 0.3, 0.01)
    instanceOfPolicy = [policyLinUCBVectorized.LinUCB(float(i)) for i in ["%g" % x for x in range]]
    #instanceOfPolicy = [policyLinUCBVectorized.LinUCB(i) for i in np.linspace(0.19, 0.21, num=20)]
    for policy in instanceOfPolicy:
        policy.set_articles(articles)
    return instanceOfPolicy

def process(path,instanceOfPolicy):
    time=0
    lines_total=0
    clicked, lines_evaluated, positive_clicked, positive_reward = {},{},{},{}
    for policy in instanceOfPolicy:
        clicked[policy] = 0
        lines_evaluated[policy] = 0
        positive_clicked[policy] = 0
        positive_reward[policy] = 0

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

                bestCTR = 0
                bestPolicy= None
                for policy in instanceOfPolicy:
                    # Getting the recommended article.
                    calculated = policy.recommend(time, user_features, articles)

                    if not calculated in articles:
                        raise Exception("Article was not in the list.")

                    # Updating the policy.
                    if calculated == chosen:
                        policy.update(user_action)
                        clicked[policy] += user_action
                        lines_evaluated[policy] += 1

                    else:
                        policy.update(-1)

                    if lines_total % 10000 == 0:
                        currentCTR = float(clicked[policy]) / lines_evaluated[policy]
                        if bestCTR < currentCTR:
                            bestCTR = currentCTR
                            bestPolicy = policy

                if lines_total % 10000 == 0:
                    tstamp = datetime.datetime.fromtimestamp(time).strftime('%Y-%m-%d %H:%M:%S')
                    print "BEST SO FAR: %s\talpha:%f\tEvaluated %d/%d lines.\tCTR = %f" % (tstamp, bestPolicy.alpha,lines_evaluated[bestPolicy], lines_total, float(clicked[bestPolicy]) / lines_evaluated[bestPolicy])



    print "FINITOOOOOOOOOOOO"
    for policy in instanceOfPolicy:
        print "List Of all: %s\talpha:%f\tEvaluated %d/%d lines.\tCTR = %f" % (tstamp, policy.alpha,lines_evaluated[policy], lines_total, float(clicked[policy]) / lines_evaluated[policy])


if __name__ == "__main__":
    if (len(sys.argv) != 3):
        print "Usage: ./evaluator.py articles log"
        sys.exit(-1)

    instanceOfPolicy = read_articles(sys.argv[1])
    process(sys.argv[2],instanceOfPolicy)
