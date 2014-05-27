#!/bin/sh

echo "start recommending..."
START=$(date +%s)
./evaluator_yahoo.py ../data/articles_yahoo.txt ../data/log_yahoo.gz
END=$(date +%s)
DIFF=$(( $END - $START ))
echo "It took $DIFF seconds"

