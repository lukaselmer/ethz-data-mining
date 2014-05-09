#!/bin/sh

START=$(date +%s)

echo "Starting with Reduce"
cat ./1-data/results/mapper_results_*.txt | ./reducer.py > ./1-data/results/centers.txt

END=$(date +%s)
DIFF=$(( $END - $START ))
echo "It took $DIFF seconds"

echo "Starting evaluation:"
./evaluate.py 15

