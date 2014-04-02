#!/bin/bash

# generate prediction file
#head -20 ./1-data/training | ./mapper.py | ./reducer.py > 1_data/weights.txt
date=$(date +%Y%m%d_%H-%M-%S)
fdir="mapper_tmp/${date}"
mkdir -p $fdir
fname="mapper_tmp/${date}/mapper.py"
fres="mapper_tmp/${date}/res.txt"
fev="mapper_tmp/${date}/evaluate.py"
echo "Mapper is ${fname}. Results are saved under ${fres}."
cp mapper.py $fname
cp evaluate.py $fev
cd $fdir
cat ../../1-data/training.txt | ./mapper.py | ../../reducer.py > weights.txt


# run check.py for seeing results
./evaluate.py weights.txt ../../1-data/test_data.txt ../../1-data/test_labels.txt > res.txt
cd ..
cd ..
cat $fres | cat

