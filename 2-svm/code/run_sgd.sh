#!/bin/bash

# generate prediction file
#head -20 ./1-data/training | ./mapper.py | ./reducer.py > 1_data/weights.txt
cat ./1-data/training.txt | ./sgd_mapper.py | ./sgd_reducer.py > 1-data/weights.txt


# run check.py for seeing results
./sgd_evaluate.py 1-data/weights.txt 1-data/test_data.txt 1-data/test_labels.txt
