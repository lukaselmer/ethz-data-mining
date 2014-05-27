#!/usr/bin/env python2.7
import sys
import gzip

# This file was used to extract the articles (with features) from the yahoo log files. The output was saved to
# articles_yahoo.txt.

def process(path):

    articles = {}

    for i in range(10):
        with gzip.open(path % (i+1), 'rb') as inf:

            for line in inf:
                # Parsing the log line.
                logline = line.strip().split()

                article_id = 0
                for feat in logline[10:]:

                    if feat[0] == '|':
                        if article_id != 0 and len(articles[article_id]) < 6:
                            # print 'error at article %i: %s' % (article_id, line)
                            del articles[article_id]

                        article_id = int(feat[1:])
                        if article_id in articles:
                            article_id = 0
                        else:
                            #if article_id != 109528:
                            #    print '%i. article %i found' % (len(articles) + 1 , article_id)
                            articles[article_id] = {}
                    elif article_id != 0:
                        articles[article_id][int(feat[0])-1] = float(feat[2:])

    for art_id, feats in articles.iteritems():
        if len(feats) == 6:
            print '%i\t%.8f %.8f %.8f %.8f %.8f %.8f' % (art_id, feats[0], feats[1], feats[2], feats[3], feats[4], feats[5])


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print "Usage: ./evaluator.py log"
        sys.exit(-1)

    process(sys.argv[1])
