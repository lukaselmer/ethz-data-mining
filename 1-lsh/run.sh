#!/bin/bash

# generate prediction file
cat 1_data/train.txt | ./mapper.py | ./reducer.py > 1_data/prediction.txt

# run check.py for seeing results
./check.py 1_data/prediction.txt 1_data/duplicates.txt 
