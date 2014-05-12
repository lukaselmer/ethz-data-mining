#!/bin/sh

mkdir ./1-data/results

date=$(date +%Y%m%d_%H-%M-%S)
START=$(date +%s)
fdir="1-data/results/results_${date}"
mkdir -p $fdir
echo "Results are saved under ${fdir}."
cd $fdir
cp ../../../__init__.py __init__.py
cp ../../../good_data.py good_data.py
cp ../../../mapper.py mapper.py
cp ../../../evaluate.py evaluate.py
cp ../../../reducer.py reducer.py


for i in {1..15}; do
    echo $(date +%H:%M:%S)
    echo "mapper part $i..."
    #Real: cat "../../../1-data/training_part$i.csv" | ./mapper.py --local > "mapper_results_$i.txt"
    ./mapper.py ${i} --read_from_file --local > "mapper_results_$i.txt"
done

#sed -n '10000,20000 p' ./1-data/training_part1.csv | ./mapper.py > ./1-data/results/c1.txt

echo "start reducing..."
cat ./mapper_results_*.txt | ./reducer.py > centers.txt

END=$(date +%s)
DIFF=$(( $END - $START ))
echo "It took $DIFF seconds"

echo "Starting evaluation:"
./evaluate.py

