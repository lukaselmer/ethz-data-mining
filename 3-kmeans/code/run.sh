#!/bin/sh


mkdir ./1-data/results

cat ./1-data/training_part1.csv | ./mapper.py > ./1-data/results/c1.txt
cat ./1-data/training_part2.csv | ./mapper.py > ./1-data/results/c2.txt
cat ./1-data/training_part3.csv | ./mapper.py > ./1-data/results/c3.txt
cat ./1-data/training_part4.csv | ./mapper.py > ./1-data/results/c4.txt

cat ./1-data/results/c*.txt | ./reducer.py > ./1-data/results/out.txt
