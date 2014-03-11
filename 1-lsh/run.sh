#!/bin/bash

# generate prediction file
cat 1_data/train.txt | ./src/mapper.py 165 35 | sort | ./src/reducer.py > 1_data/prediction.txt
# run check.py for seeing results
./check.py 1_data/prediction.txt 1_data/duplicates.txt 
