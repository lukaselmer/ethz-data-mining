#!/bin/sh

echo "start recommending..."
START=$(date +%s)
./evaluator_yahoo_all.py ../data/articles_yahoo_all.txt ../data/log_yahoo_%d.gz
END=$(date +%s)
DIFF=$(( $END - $START ))
echo "It took $DIFF seconds"

