#!/bin/bash

# generate prediction file
head -150 ./1-data/training | ./mapper.py | ./reducer.py > 2-visual_test/weights.txt

# run check.py for seeing results
#./check.py 1_data/prediction.txt 1_data/duplicates.txt
