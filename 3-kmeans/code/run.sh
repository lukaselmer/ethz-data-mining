#!/bin/sh

mkdir ./1-data/results

START=$(date +%s)

i=1

for f in `ls 1-data/training_part*.csv`; do
    echo $(date +%H:%M:%S)
    echo "mapper part $i..."
    cat "$f" | ./mapper.py > "./1-data/results/mapper_results_$i.txt"
  i=$((i+1))
done

#sed -n '10000,20000 p' ./1-data/training_part1.csv | ./mapper.py > ./1-data/results/c1.txt

echo "start reducing..."
cat ./1-data/results/mapper_results_*.txt | ./reducer.py > ./1-data/results/centers.txt

END=$(date +%s)
DIFF=$(( $END - $START ))
echo "It took $DIFF seconds"

echo "Starting evaluation:"
./evaluate.py $((i-1))

