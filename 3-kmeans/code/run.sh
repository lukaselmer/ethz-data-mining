#!/bin/sh

echo $(date +%H:%M:%S)
echo "Starting mapper..."
sed -n 1,6000p 1-data/training.csv | ./mapper.py > "c1.txt"
sed -n 6001,12000p 1-data/training.csv | ./mapper.py > "c2.txt"


echo $(date +%H:%M:%S)
echo "Starting reducer..."
cat ./c*.txt | ./reducer.py > centers.txt

#echo $(date +%H:%M:%S)
#echo "Starting evaluation:"
#./evaluate.py
