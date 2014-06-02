#!/usr/bin/env python2.7
import sys
import gzip
import hideSomePolicyLinUCB as policy  # This is your policy file.

# This script loads a subset of the original yahoo data (e.g. 1 day of log data, which corresponds to 4.5 million log files)

def read_articles(path):
    articles = {}
    with file(path) as inf:
        for line in inf:
            tokens = line.strip().split()
            articles[int(tokens[0])] = [float(x) for x in tokens[1:]]

    policy.set_articles(articles)


def process(path):
    clicked, lines_evaluated, lines_total = 0, 0, 0

    with gzip.open(path, 'rb') as inf:
        for line in inf:
            lines_total += 1

            # Parsing the log line.
            logline = line.strip().split()
            chosen = int(logline.pop(1))
            user_action = int(logline.pop(1))
            time = int(logline[0])

            if chosen == 109528:
                continue

            user_features = [None]*6
            for feat in logline[2:8]:
                user_features[int(feat[0])-1] = float(feat[2:])

            articles = []
            for feat in logline[8:]:
                if feat[0] == '|':
                    article_id = int(feat[1:])
                    if article_id != 109528:
                        articles.append(article_id)

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

            if lines_total % 10000 == 0:
                print "Evaluated %d/%d lines.\tCTR = %f\t%f%% done" % (lines_evaluated, lines_total, float(clicked) / lines_evaluated, 100.0/4680000.0*lines_total)

        print "Evaluated %d/%d lines." % ( lines_evaluated, lines_total)
        print "CTR=%f" % (float(clicked) / lines_evaluated)


if __name__ == "__main__":
    if len(sys.argv) != 3:
        print "Usage: ./evaluator.py articles log"
        sys.exit(-1)

    read_articles(sys.argv[1])
    process(sys.argv[2])
