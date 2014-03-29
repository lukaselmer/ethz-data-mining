#!/bin/bash

# generate prediction file
#head -20 ./1-data/training | ./mapper.py | ./reducer.py > 1_data/weights.txt
cat ./1-data/training.txt | ./mapper.py | ./reducer.py > 1-data/weights.txt


# run check.py for seeing results
./evaluate.py 1-data/weights.txt 1-data/test_data.txt 1-data/test_labels.txt
