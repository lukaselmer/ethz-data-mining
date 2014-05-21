#!/usr/bin/env python2.7
import sys
import policy # This is your policy file.

def read_articles(path):
    articles = {}
    with file(path) as inf:
        for line in inf:
            tokens = line.strip().split()
            articles[int(tokens[0])] = [float(x) for x in tokens[1:]]
    policy.set_articles(articles)

def process(path):

    clicked, lines_evaluated, lines_total = 0, 0, 0

    with file(sys.argv[2]) as inf:
        for line in inf:
            lines_total += 1

            # Parsing the log line.
            logline = line.strip().split()
            chosen = int(logline.pop(7))
            user_action = int(logline.pop(7))
            time = int(logline[0])
            user_features = [float(x) for x in logline[1:7]]
            articles = [int(x) for x in logline[7:]]

            # Getting the recommended article.
            calculated = policy.reccomend(time, user_features, articles)

            if not calculated in articles:
                raise Exception("Article was not in the list.")

            # Updating the policy.
            if calculated == chosen:
                policy.update(user_action)
                clicked += user_action
                lines_evaluated += 1
            else:
                policy.update(-1)

        print "Evaluated %d/%d lines." % ( lines_evaluated, lines_total)
        print "CTR=%f" % (float(clicked) /  lines_evaluated)

if __name__ == "__main__":
    if (len(sys.argv) != 3):
        print "Usage: ./evaluator.py articles log"
        sys.exit(-1)

    read_articles(sys.argv[1])
    process(sys.argv[2])
