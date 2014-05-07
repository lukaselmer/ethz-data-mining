#!/bin/sh

date=$(date +%Y%m%d_%H-%M-%S)
fdir="1-data/results/results_${date}"
mkdir -p $fdir
fname="mapper.py"
fres="mapper_tmp/${date}/res.txt"
fev="run_tmp/${date}/evaluate.py"
fred="run_tmp/${date}/reducer.py"
echo "Results are saved under ${fdir}."
cd $fdir
cp ../../../mapper.py mapper.py
cp ../../../evaluate.py evaluate.py
cp ../../../reducer.py reducer.py

for i in {2..5}
do
    echo "starting part $i..."
    cat "../../training_part$i.csv" | ./mapper.py > "c$i.txt"
    echo "...done!"
done

echo "starting reducer..."
cat ./c*.txt | ./reducer.py > centers.txt
echo "...done!"

echo "Finally: evaluation:"
./evaluate.py
