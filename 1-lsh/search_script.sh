#!/bin/bash
mkdir search
cd search
if [ ! -f ./prediction_35_20.txt ]; then
touch ./prediction_35_20.txt
cat ../1_data/train.txt | ../src/mapper.py 35 20 | sort | ../reducer.py > ./prediction_35_20.txt
echo 'Bands 35, Rows 20:' >> _results.txt
../check.py ./prediction_35_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_35_25.txt ]; then
touch ./prediction_35_25.txt
cat ../1_data/train.txt | ../src/mapper.py 35 25 | sort | ../reducer.py > ./prediction_35_25.txt
echo 'Bands 35, Rows 25:' >> _results.txt
../check.py ./prediction_35_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_35_30.txt ]; then
touch ./prediction_35_30.txt
cat ../1_data/train.txt | ../src/mapper.py 35 30 | sort | ../reducer.py > ./prediction_35_30.txt
echo 'Bands 35, Rows 30:' >> _results.txt
../check.py ./prediction_35_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_35_35.txt ]; then
touch ./prediction_35_35.txt
cat ../1_data/train.txt | ../src/mapper.py 35 35 | sort | ../reducer.py > ./prediction_35_35.txt
echo 'Bands 35, Rows 35:' >> _results.txt
../check.py ./prediction_35_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_35_40.txt ]; then
touch ./prediction_35_40.txt
cat ../1_data/train.txt | ../src/mapper.py 35 40 | sort | ../reducer.py > ./prediction_35_40.txt
echo 'Bands 35, Rows 40:' >> _results.txt
../check.py ./prediction_35_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_35_45.txt ]; then
touch ./prediction_35_45.txt
cat ../1_data/train.txt | ../src/mapper.py 35 45 | sort | ../reducer.py > ./prediction_35_45.txt
echo 'Bands 35, Rows 45:' >> _results.txt
../check.py ./prediction_35_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_35_50.txt ]; then
touch ./prediction_35_50.txt
cat ../1_data/train.txt | ../src/mapper.py 35 50 | sort | ../reducer.py > ./prediction_35_50.txt
echo 'Bands 35, Rows 50:' >> _results.txt
../check.py ./prediction_35_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_35_55.txt ]; then
touch ./prediction_35_55.txt
cat ../1_data/train.txt | ../src/mapper.py 35 55 | sort | ../reducer.py > ./prediction_35_55.txt
echo 'Bands 35, Rows 55:' >> _results.txt
../check.py ./prediction_35_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_35_60.txt ]; then
touch ./prediction_35_60.txt
cat ../1_data/train.txt | ../src/mapper.py 35 60 | sort | ../reducer.py > ./prediction_35_60.txt
echo 'Bands 35, Rows 60:' >> _results.txt
../check.py ./prediction_35_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_35_65.txt ]; then
touch ./prediction_35_65.txt
cat ../1_data/train.txt | ../src/mapper.py 35 65 | sort | ../reducer.py > ./prediction_35_65.txt
echo 'Bands 35, Rows 65:' >> _results.txt
../check.py ./prediction_35_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_35_70.txt ]; then
touch ./prediction_35_70.txt
cat ../1_data/train.txt | ../src/mapper.py 35 70 | sort | ../reducer.py > ./prediction_35_70.txt
echo 'Bands 35, Rows 70:' >> _results.txt
../check.py ./prediction_35_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_40_20.txt ]; then
touch ./prediction_40_20.txt
cat ../1_data/train.txt | ../src/mapper.py 40 20 | sort | ../reducer.py > ./prediction_40_20.txt
echo 'Bands 40, Rows 20:' >> _results.txt
../check.py ./prediction_40_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_40_25.txt ]; then
touch ./prediction_40_25.txt
cat ../1_data/train.txt | ../src/mapper.py 40 25 | sort | ../reducer.py > ./prediction_40_25.txt
echo 'Bands 40, Rows 25:' >> _results.txt
../check.py ./prediction_40_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_40_30.txt ]; then
touch ./prediction_40_30.txt
cat ../1_data/train.txt | ../src/mapper.py 40 30 | sort | ../reducer.py > ./prediction_40_30.txt
echo 'Bands 40, Rows 30:' >> _results.txt
../check.py ./prediction_40_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_40_35.txt ]; then
touch ./prediction_40_35.txt
cat ../1_data/train.txt | ../src/mapper.py 40 35 | sort | ../reducer.py > ./prediction_40_35.txt
echo 'Bands 40, Rows 35:' >> _results.txt
../check.py ./prediction_40_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_40_40.txt ]; then
touch ./prediction_40_40.txt
cat ../1_data/train.txt | ../src/mapper.py 40 40 | sort | ../reducer.py > ./prediction_40_40.txt
echo 'Bands 40, Rows 40:' >> _results.txt
../check.py ./prediction_40_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_40_45.txt ]; then
touch ./prediction_40_45.txt
cat ../1_data/train.txt | ../src/mapper.py 40 45 | sort | ../reducer.py > ./prediction_40_45.txt
echo 'Bands 40, Rows 45:' >> _results.txt
../check.py ./prediction_40_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_40_50.txt ]; then
touch ./prediction_40_50.txt
cat ../1_data/train.txt | ../src/mapper.py 40 50 | sort | ../reducer.py > ./prediction_40_50.txt
echo 'Bands 40, Rows 50:' >> _results.txt
../check.py ./prediction_40_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_40_55.txt ]; then
touch ./prediction_40_55.txt
cat ../1_data/train.txt | ../src/mapper.py 40 55 | sort | ../reducer.py > ./prediction_40_55.txt
echo 'Bands 40, Rows 55:' >> _results.txt
../check.py ./prediction_40_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_40_60.txt ]; then
touch ./prediction_40_60.txt
cat ../1_data/train.txt | ../src/mapper.py 40 60 | sort | ../reducer.py > ./prediction_40_60.txt
echo 'Bands 40, Rows 60:' >> _results.txt
../check.py ./prediction_40_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_40_65.txt ]; then
touch ./prediction_40_65.txt
cat ../1_data/train.txt | ../src/mapper.py 40 65 | sort | ../reducer.py > ./prediction_40_65.txt
echo 'Bands 40, Rows 65:' >> _results.txt
../check.py ./prediction_40_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_40_70.txt ]; then
touch ./prediction_40_70.txt
cat ../1_data/train.txt | ../src/mapper.py 40 70 | sort | ../reducer.py > ./prediction_40_70.txt
echo 'Bands 40, Rows 70:' >> _results.txt
../check.py ./prediction_40_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_45_20.txt ]; then
touch ./prediction_45_20.txt
cat ../1_data/train.txt | ../src/mapper.py 45 20 | sort | ../reducer.py > ./prediction_45_20.txt
echo 'Bands 45, Rows 20:' >> _results.txt
../check.py ./prediction_45_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_45_25.txt ]; then
touch ./prediction_45_25.txt
cat ../1_data/train.txt | ../src/mapper.py 45 25 | sort | ../reducer.py > ./prediction_45_25.txt
echo 'Bands 45, Rows 25:' >> _results.txt
../check.py ./prediction_45_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_45_30.txt ]; then
touch ./prediction_45_30.txt
cat ../1_data/train.txt | ../src/mapper.py 45 30 | sort | ../reducer.py > ./prediction_45_30.txt
echo 'Bands 45, Rows 30:' >> _results.txt
../check.py ./prediction_45_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_45_35.txt ]; then
touch ./prediction_45_35.txt
cat ../1_data/train.txt | ../src/mapper.py 45 35 | sort | ../reducer.py > ./prediction_45_35.txt
echo 'Bands 45, Rows 35:' >> _results.txt
../check.py ./prediction_45_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_45_40.txt ]; then
touch ./prediction_45_40.txt
cat ../1_data/train.txt | ../src/mapper.py 45 40 | sort | ../reducer.py > ./prediction_45_40.txt
echo 'Bands 45, Rows 40:' >> _results.txt
../check.py ./prediction_45_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_45_45.txt ]; then
touch ./prediction_45_45.txt
cat ../1_data/train.txt | ../src/mapper.py 45 45 | sort | ../reducer.py > ./prediction_45_45.txt
echo 'Bands 45, Rows 45:' >> _results.txt
../check.py ./prediction_45_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_45_50.txt ]; then
touch ./prediction_45_50.txt
cat ../1_data/train.txt | ../src/mapper.py 45 50 | sort | ../reducer.py > ./prediction_45_50.txt
echo 'Bands 45, Rows 50:' >> _results.txt
../check.py ./prediction_45_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_45_55.txt ]; then
touch ./prediction_45_55.txt
cat ../1_data/train.txt | ../src/mapper.py 45 55 | sort | ../reducer.py > ./prediction_45_55.txt
echo 'Bands 45, Rows 55:' >> _results.txt
../check.py ./prediction_45_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_45_60.txt ]; then
touch ./prediction_45_60.txt
cat ../1_data/train.txt | ../src/mapper.py 45 60 | sort | ../reducer.py > ./prediction_45_60.txt
echo 'Bands 45, Rows 60:' >> _results.txt
../check.py ./prediction_45_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_45_65.txt ]; then
touch ./prediction_45_65.txt
cat ../1_data/train.txt | ../src/mapper.py 45 65 | sort | ../reducer.py > ./prediction_45_65.txt
echo 'Bands 45, Rows 65:' >> _results.txt
../check.py ./prediction_45_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_45_70.txt ]; then
touch ./prediction_45_70.txt
cat ../1_data/train.txt | ../src/mapper.py 45 70 | sort | ../reducer.py > ./prediction_45_70.txt
echo 'Bands 45, Rows 70:' >> _results.txt
../check.py ./prediction_45_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_50_20.txt ]; then
touch ./prediction_50_20.txt
cat ../1_data/train.txt | ../src/mapper.py 50 20 | sort | ../reducer.py > ./prediction_50_20.txt
echo 'Bands 50, Rows 20:' >> _results.txt
../check.py ./prediction_50_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_50_25.txt ]; then
touch ./prediction_50_25.txt
cat ../1_data/train.txt | ../src/mapper.py 50 25 | sort | ../reducer.py > ./prediction_50_25.txt
echo 'Bands 50, Rows 25:' >> _results.txt
../check.py ./prediction_50_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_50_30.txt ]; then
touch ./prediction_50_30.txt
cat ../1_data/train.txt | ../src/mapper.py 50 30 | sort | ../reducer.py > ./prediction_50_30.txt
echo 'Bands 50, Rows 30:' >> _results.txt
../check.py ./prediction_50_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_50_35.txt ]; then
touch ./prediction_50_35.txt
cat ../1_data/train.txt | ../src/mapper.py 50 35 | sort | ../reducer.py > ./prediction_50_35.txt
echo 'Bands 50, Rows 35:' >> _results.txt
../check.py ./prediction_50_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_50_40.txt ]; then
touch ./prediction_50_40.txt
cat ../1_data/train.txt | ../src/mapper.py 50 40 | sort | ../reducer.py > ./prediction_50_40.txt
echo 'Bands 50, Rows 40:' >> _results.txt
../check.py ./prediction_50_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_50_45.txt ]; then
touch ./prediction_50_45.txt
cat ../1_data/train.txt | ../src/mapper.py 50 45 | sort | ../reducer.py > ./prediction_50_45.txt
echo 'Bands 50, Rows 45:' >> _results.txt
../check.py ./prediction_50_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_50_50.txt ]; then
touch ./prediction_50_50.txt
cat ../1_data/train.txt | ../src/mapper.py 50 50 | sort | ../reducer.py > ./prediction_50_50.txt
echo 'Bands 50, Rows 50:' >> _results.txt
../check.py ./prediction_50_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_50_55.txt ]; then
touch ./prediction_50_55.txt
cat ../1_data/train.txt | ../src/mapper.py 50 55 | sort | ../reducer.py > ./prediction_50_55.txt
echo 'Bands 50, Rows 55:' >> _results.txt
../check.py ./prediction_50_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_50_60.txt ]; then
touch ./prediction_50_60.txt
cat ../1_data/train.txt | ../src/mapper.py 50 60 | sort | ../reducer.py > ./prediction_50_60.txt
echo 'Bands 50, Rows 60:' >> _results.txt
../check.py ./prediction_50_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_50_65.txt ]; then
touch ./prediction_50_65.txt
cat ../1_data/train.txt | ../src/mapper.py 50 65 | sort | ../reducer.py > ./prediction_50_65.txt
echo 'Bands 50, Rows 65:' >> _results.txt
../check.py ./prediction_50_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_50_70.txt ]; then
touch ./prediction_50_70.txt
cat ../1_data/train.txt | ../src/mapper.py 50 70 | sort | ../reducer.py > ./prediction_50_70.txt
echo 'Bands 50, Rows 70:' >> _results.txt
../check.py ./prediction_50_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_55_20.txt ]; then
touch ./prediction_55_20.txt
cat ../1_data/train.txt | ../src/mapper.py 55 20 | sort | ../reducer.py > ./prediction_55_20.txt
echo 'Bands 55, Rows 20:' >> _results.txt
../check.py ./prediction_55_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_55_25.txt ]; then
touch ./prediction_55_25.txt
cat ../1_data/train.txt | ../src/mapper.py 55 25 | sort | ../reducer.py > ./prediction_55_25.txt
echo 'Bands 55, Rows 25:' >> _results.txt
../check.py ./prediction_55_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_55_30.txt ]; then
touch ./prediction_55_30.txt
cat ../1_data/train.txt | ../src/mapper.py 55 30 | sort | ../reducer.py > ./prediction_55_30.txt
echo 'Bands 55, Rows 30:' >> _results.txt
../check.py ./prediction_55_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_55_35.txt ]; then
touch ./prediction_55_35.txt
cat ../1_data/train.txt | ../src/mapper.py 55 35 | sort | ../reducer.py > ./prediction_55_35.txt
echo 'Bands 55, Rows 35:' >> _results.txt
../check.py ./prediction_55_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_55_40.txt ]; then
touch ./prediction_55_40.txt
cat ../1_data/train.txt | ../src/mapper.py 55 40 | sort | ../reducer.py > ./prediction_55_40.txt
echo 'Bands 55, Rows 40:' >> _results.txt
../check.py ./prediction_55_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_55_45.txt ]; then
touch ./prediction_55_45.txt
cat ../1_data/train.txt | ../src/mapper.py 55 45 | sort | ../reducer.py > ./prediction_55_45.txt
echo 'Bands 55, Rows 45:' >> _results.txt
../check.py ./prediction_55_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_55_50.txt ]; then
touch ./prediction_55_50.txt
cat ../1_data/train.txt | ../src/mapper.py 55 50 | sort | ../reducer.py > ./prediction_55_50.txt
echo 'Bands 55, Rows 50:' >> _results.txt
../check.py ./prediction_55_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_55_55.txt ]; then
touch ./prediction_55_55.txt
cat ../1_data/train.txt | ../src/mapper.py 55 55 | sort | ../reducer.py > ./prediction_55_55.txt
echo 'Bands 55, Rows 55:' >> _results.txt
../check.py ./prediction_55_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_55_60.txt ]; then
touch ./prediction_55_60.txt
cat ../1_data/train.txt | ../src/mapper.py 55 60 | sort | ../reducer.py > ./prediction_55_60.txt
echo 'Bands 55, Rows 60:' >> _results.txt
../check.py ./prediction_55_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_55_65.txt ]; then
touch ./prediction_55_65.txt
cat ../1_data/train.txt | ../src/mapper.py 55 65 | sort | ../reducer.py > ./prediction_55_65.txt
echo 'Bands 55, Rows 65:' >> _results.txt
../check.py ./prediction_55_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_55_70.txt ]; then
touch ./prediction_55_70.txt
cat ../1_data/train.txt | ../src/mapper.py 55 70 | sort | ../reducer.py > ./prediction_55_70.txt
echo 'Bands 55, Rows 70:' >> _results.txt
../check.py ./prediction_55_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_60_20.txt ]; then
touch ./prediction_60_20.txt
cat ../1_data/train.txt | ../src/mapper.py 60 20 | sort | ../reducer.py > ./prediction_60_20.txt
echo 'Bands 60, Rows 20:' >> _results.txt
../check.py ./prediction_60_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_60_25.txt ]; then
touch ./prediction_60_25.txt
cat ../1_data/train.txt | ../src/mapper.py 60 25 | sort | ../reducer.py > ./prediction_60_25.txt
echo 'Bands 60, Rows 25:' >> _results.txt
../check.py ./prediction_60_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_60_30.txt ]; then
touch ./prediction_60_30.txt
cat ../1_data/train.txt | ../src/mapper.py 60 30 | sort | ../reducer.py > ./prediction_60_30.txt
echo 'Bands 60, Rows 30:' >> _results.txt
../check.py ./prediction_60_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_60_35.txt ]; then
touch ./prediction_60_35.txt
cat ../1_data/train.txt | ../src/mapper.py 60 35 | sort | ../reducer.py > ./prediction_60_35.txt
echo 'Bands 60, Rows 35:' >> _results.txt
../check.py ./prediction_60_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_60_40.txt ]; then
touch ./prediction_60_40.txt
cat ../1_data/train.txt | ../src/mapper.py 60 40 | sort | ../reducer.py > ./prediction_60_40.txt
echo 'Bands 60, Rows 40:' >> _results.txt
../check.py ./prediction_60_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_60_45.txt ]; then
touch ./prediction_60_45.txt
cat ../1_data/train.txt | ../src/mapper.py 60 45 | sort | ../reducer.py > ./prediction_60_45.txt
echo 'Bands 60, Rows 45:' >> _results.txt
../check.py ./prediction_60_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_60_50.txt ]; then
touch ./prediction_60_50.txt
cat ../1_data/train.txt | ../src/mapper.py 60 50 | sort | ../reducer.py > ./prediction_60_50.txt
echo 'Bands 60, Rows 50:' >> _results.txt
../check.py ./prediction_60_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_60_55.txt ]; then
touch ./prediction_60_55.txt
cat ../1_data/train.txt | ../src/mapper.py 60 55 | sort | ../reducer.py > ./prediction_60_55.txt
echo 'Bands 60, Rows 55:' >> _results.txt
../check.py ./prediction_60_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_60_60.txt ]; then
touch ./prediction_60_60.txt
cat ../1_data/train.txt | ../src/mapper.py 60 60 | sort | ../reducer.py > ./prediction_60_60.txt
echo 'Bands 60, Rows 60:' >> _results.txt
../check.py ./prediction_60_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_60_65.txt ]; then
touch ./prediction_60_65.txt
cat ../1_data/train.txt | ../src/mapper.py 60 65 | sort | ../reducer.py > ./prediction_60_65.txt
echo 'Bands 60, Rows 65:' >> _results.txt
../check.py ./prediction_60_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_60_70.txt ]; then
touch ./prediction_60_70.txt
cat ../1_data/train.txt | ../src/mapper.py 60 70 | sort | ../reducer.py > ./prediction_60_70.txt
echo 'Bands 60, Rows 70:' >> _results.txt
../check.py ./prediction_60_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_65_20.txt ]; then
touch ./prediction_65_20.txt
cat ../1_data/train.txt | ../src/mapper.py 65 20 | sort | ../reducer.py > ./prediction_65_20.txt
echo 'Bands 65, Rows 20:' >> _results.txt
../check.py ./prediction_65_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_65_25.txt ]; then
touch ./prediction_65_25.txt
cat ../1_data/train.txt | ../src/mapper.py 65 25 | sort | ../reducer.py > ./prediction_65_25.txt
echo 'Bands 65, Rows 25:' >> _results.txt
../check.py ./prediction_65_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_65_30.txt ]; then
touch ./prediction_65_30.txt
cat ../1_data/train.txt | ../src/mapper.py 65 30 | sort | ../reducer.py > ./prediction_65_30.txt
echo 'Bands 65, Rows 30:' >> _results.txt
../check.py ./prediction_65_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_65_35.txt ]; then
touch ./prediction_65_35.txt
cat ../1_data/train.txt | ../src/mapper.py 65 35 | sort | ../reducer.py > ./prediction_65_35.txt
echo 'Bands 65, Rows 35:' >> _results.txt
../check.py ./prediction_65_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_65_40.txt ]; then
touch ./prediction_65_40.txt
cat ../1_data/train.txt | ../src/mapper.py 65 40 | sort | ../reducer.py > ./prediction_65_40.txt
echo 'Bands 65, Rows 40:' >> _results.txt
../check.py ./prediction_65_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_65_45.txt ]; then
touch ./prediction_65_45.txt
cat ../1_data/train.txt | ../src/mapper.py 65 45 | sort | ../reducer.py > ./prediction_65_45.txt
echo 'Bands 65, Rows 45:' >> _results.txt
../check.py ./prediction_65_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_65_50.txt ]; then
touch ./prediction_65_50.txt
cat ../1_data/train.txt | ../src/mapper.py 65 50 | sort | ../reducer.py > ./prediction_65_50.txt
echo 'Bands 65, Rows 50:' >> _results.txt
../check.py ./prediction_65_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_65_55.txt ]; then
touch ./prediction_65_55.txt
cat ../1_data/train.txt | ../src/mapper.py 65 55 | sort | ../reducer.py > ./prediction_65_55.txt
echo 'Bands 65, Rows 55:' >> _results.txt
../check.py ./prediction_65_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_65_60.txt ]; then
touch ./prediction_65_60.txt
cat ../1_data/train.txt | ../src/mapper.py 65 60 | sort | ../reducer.py > ./prediction_65_60.txt
echo 'Bands 65, Rows 60:' >> _results.txt
../check.py ./prediction_65_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_65_65.txt ]; then
touch ./prediction_65_65.txt
cat ../1_data/train.txt | ../src/mapper.py 65 65 | sort | ../reducer.py > ./prediction_65_65.txt
echo 'Bands 65, Rows 65:' >> _results.txt
../check.py ./prediction_65_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_65_70.txt ]; then
touch ./prediction_65_70.txt
cat ../1_data/train.txt | ../src/mapper.py 65 70 | sort | ../reducer.py > ./prediction_65_70.txt
echo 'Bands 65, Rows 70:' >> _results.txt
../check.py ./prediction_65_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_70_20.txt ]; then
touch ./prediction_70_20.txt
cat ../1_data/train.txt | ../src/mapper.py 70 20 | sort | ../reducer.py > ./prediction_70_20.txt
echo 'Bands 70, Rows 20:' >> _results.txt
../check.py ./prediction_70_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_70_25.txt ]; then
touch ./prediction_70_25.txt
cat ../1_data/train.txt | ../src/mapper.py 70 25 | sort | ../reducer.py > ./prediction_70_25.txt
echo 'Bands 70, Rows 25:' >> _results.txt
../check.py ./prediction_70_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_70_30.txt ]; then
touch ./prediction_70_30.txt
cat ../1_data/train.txt | ../src/mapper.py 70 30 | sort | ../reducer.py > ./prediction_70_30.txt
echo 'Bands 70, Rows 30:' >> _results.txt
../check.py ./prediction_70_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_70_35.txt ]; then
touch ./prediction_70_35.txt
cat ../1_data/train.txt | ../src/mapper.py 70 35 | sort | ../reducer.py > ./prediction_70_35.txt
echo 'Bands 70, Rows 35:' >> _results.txt
../check.py ./prediction_70_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_70_40.txt ]; then
touch ./prediction_70_40.txt
cat ../1_data/train.txt | ../src/mapper.py 70 40 | sort | ../reducer.py > ./prediction_70_40.txt
echo 'Bands 70, Rows 40:' >> _results.txt
../check.py ./prediction_70_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_70_45.txt ]; then
touch ./prediction_70_45.txt
cat ../1_data/train.txt | ../src/mapper.py 70 45 | sort | ../reducer.py > ./prediction_70_45.txt
echo 'Bands 70, Rows 45:' >> _results.txt
../check.py ./prediction_70_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_70_50.txt ]; then
touch ./prediction_70_50.txt
cat ../1_data/train.txt | ../src/mapper.py 70 50 | sort | ../reducer.py > ./prediction_70_50.txt
echo 'Bands 70, Rows 50:' >> _results.txt
../check.py ./prediction_70_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_70_55.txt ]; then
touch ./prediction_70_55.txt
cat ../1_data/train.txt | ../src/mapper.py 70 55 | sort | ../reducer.py > ./prediction_70_55.txt
echo 'Bands 70, Rows 55:' >> _results.txt
../check.py ./prediction_70_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_70_60.txt ]; then
touch ./prediction_70_60.txt
cat ../1_data/train.txt | ../src/mapper.py 70 60 | sort | ../reducer.py > ./prediction_70_60.txt
echo 'Bands 70, Rows 60:' >> _results.txt
../check.py ./prediction_70_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_70_65.txt ]; then
touch ./prediction_70_65.txt
cat ../1_data/train.txt | ../src/mapper.py 70 65 | sort | ../reducer.py > ./prediction_70_65.txt
echo 'Bands 70, Rows 65:' >> _results.txt
../check.py ./prediction_70_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_70_70.txt ]; then
touch ./prediction_70_70.txt
cat ../1_data/train.txt | ../src/mapper.py 70 70 | sort | ../reducer.py > ./prediction_70_70.txt
echo 'Bands 70, Rows 70:' >> _results.txt
../check.py ./prediction_70_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_75_20.txt ]; then
touch ./prediction_75_20.txt
cat ../1_data/train.txt | ../src/mapper.py 75 20 | sort | ../reducer.py > ./prediction_75_20.txt
echo 'Bands 75, Rows 20:' >> _results.txt
../check.py ./prediction_75_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_75_25.txt ]; then
touch ./prediction_75_25.txt
cat ../1_data/train.txt | ../src/mapper.py 75 25 | sort | ../reducer.py > ./prediction_75_25.txt
echo 'Bands 75, Rows 25:' >> _results.txt
../check.py ./prediction_75_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_75_30.txt ]; then
touch ./prediction_75_30.txt
cat ../1_data/train.txt | ../src/mapper.py 75 30 | sort | ../reducer.py > ./prediction_75_30.txt
echo 'Bands 75, Rows 30:' >> _results.txt
../check.py ./prediction_75_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_75_35.txt ]; then
touch ./prediction_75_35.txt
cat ../1_data/train.txt | ../src/mapper.py 75 35 | sort | ../reducer.py > ./prediction_75_35.txt
echo 'Bands 75, Rows 35:' >> _results.txt
../check.py ./prediction_75_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_75_40.txt ]; then
touch ./prediction_75_40.txt
cat ../1_data/train.txt | ../src/mapper.py 75 40 | sort | ../reducer.py > ./prediction_75_40.txt
echo 'Bands 75, Rows 40:' >> _results.txt
../check.py ./prediction_75_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_75_45.txt ]; then
touch ./prediction_75_45.txt
cat ../1_data/train.txt | ../src/mapper.py 75 45 | sort | ../reducer.py > ./prediction_75_45.txt
echo 'Bands 75, Rows 45:' >> _results.txt
../check.py ./prediction_75_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_75_50.txt ]; then
touch ./prediction_75_50.txt
cat ../1_data/train.txt | ../src/mapper.py 75 50 | sort | ../reducer.py > ./prediction_75_50.txt
echo 'Bands 75, Rows 50:' >> _results.txt
../check.py ./prediction_75_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_75_55.txt ]; then
touch ./prediction_75_55.txt
cat ../1_data/train.txt | ../src/mapper.py 75 55 | sort | ../reducer.py > ./prediction_75_55.txt
echo 'Bands 75, Rows 55:' >> _results.txt
../check.py ./prediction_75_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_75_60.txt ]; then
touch ./prediction_75_60.txt
cat ../1_data/train.txt | ../src/mapper.py 75 60 | sort | ../reducer.py > ./prediction_75_60.txt
echo 'Bands 75, Rows 60:' >> _results.txt
../check.py ./prediction_75_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_75_65.txt ]; then
touch ./prediction_75_65.txt
cat ../1_data/train.txt | ../src/mapper.py 75 65 | sort | ../reducer.py > ./prediction_75_65.txt
echo 'Bands 75, Rows 65:' >> _results.txt
../check.py ./prediction_75_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_75_70.txt ]; then
touch ./prediction_75_70.txt
cat ../1_data/train.txt | ../src/mapper.py 75 70 | sort | ../reducer.py > ./prediction_75_70.txt
echo 'Bands 75, Rows 70:' >> _results.txt
../check.py ./prediction_75_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_80_20.txt ]; then
touch ./prediction_80_20.txt
cat ../1_data/train.txt | ../src/mapper.py 80 20 | sort | ../reducer.py > ./prediction_80_20.txt
echo 'Bands 80, Rows 20:' >> _results.txt
../check.py ./prediction_80_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_80_25.txt ]; then
touch ./prediction_80_25.txt
cat ../1_data/train.txt | ../src/mapper.py 80 25 | sort | ../reducer.py > ./prediction_80_25.txt
echo 'Bands 80, Rows 25:' >> _results.txt
../check.py ./prediction_80_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_80_30.txt ]; then
touch ./prediction_80_30.txt
cat ../1_data/train.txt | ../src/mapper.py 80 30 | sort | ../reducer.py > ./prediction_80_30.txt
echo 'Bands 80, Rows 30:' >> _results.txt
../check.py ./prediction_80_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_80_35.txt ]; then
touch ./prediction_80_35.txt
cat ../1_data/train.txt | ../src/mapper.py 80 35 | sort | ../reducer.py > ./prediction_80_35.txt
echo 'Bands 80, Rows 35:' >> _results.txt
../check.py ./prediction_80_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_80_40.txt ]; then
touch ./prediction_80_40.txt
cat ../1_data/train.txt | ../src/mapper.py 80 40 | sort | ../reducer.py > ./prediction_80_40.txt
echo 'Bands 80, Rows 40:' >> _results.txt
../check.py ./prediction_80_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_80_45.txt ]; then
touch ./prediction_80_45.txt
cat ../1_data/train.txt | ../src/mapper.py 80 45 | sort | ../reducer.py > ./prediction_80_45.txt
echo 'Bands 80, Rows 45:' >> _results.txt
../check.py ./prediction_80_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_80_50.txt ]; then
touch ./prediction_80_50.txt
cat ../1_data/train.txt | ../src/mapper.py 80 50 | sort | ../reducer.py > ./prediction_80_50.txt
echo 'Bands 80, Rows 50:' >> _results.txt
../check.py ./prediction_80_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_80_55.txt ]; then
touch ./prediction_80_55.txt
cat ../1_data/train.txt | ../src/mapper.py 80 55 | sort | ../reducer.py > ./prediction_80_55.txt
echo 'Bands 80, Rows 55:' >> _results.txt
../check.py ./prediction_80_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_80_60.txt ]; then
touch ./prediction_80_60.txt
cat ../1_data/train.txt | ../src/mapper.py 80 60 | sort | ../reducer.py > ./prediction_80_60.txt
echo 'Bands 80, Rows 60:' >> _results.txt
../check.py ./prediction_80_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_80_65.txt ]; then
touch ./prediction_80_65.txt
cat ../1_data/train.txt | ../src/mapper.py 80 65 | sort | ../reducer.py > ./prediction_80_65.txt
echo 'Bands 80, Rows 65:' >> _results.txt
../check.py ./prediction_80_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_80_70.txt ]; then
touch ./prediction_80_70.txt
cat ../1_data/train.txt | ../src/mapper.py 80 70 | sort | ../reducer.py > ./prediction_80_70.txt
echo 'Bands 80, Rows 70:' >> _results.txt
../check.py ./prediction_80_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_85_20.txt ]; then
touch ./prediction_85_20.txt
cat ../1_data/train.txt | ../src/mapper.py 85 20 | sort | ../reducer.py > ./prediction_85_20.txt
echo 'Bands 85, Rows 20:' >> _results.txt
../check.py ./prediction_85_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_85_25.txt ]; then
touch ./prediction_85_25.txt
cat ../1_data/train.txt | ../src/mapper.py 85 25 | sort | ../reducer.py > ./prediction_85_25.txt
echo 'Bands 85, Rows 25:' >> _results.txt
../check.py ./prediction_85_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_85_30.txt ]; then
touch ./prediction_85_30.txt
cat ../1_data/train.txt | ../src/mapper.py 85 30 | sort | ../reducer.py > ./prediction_85_30.txt
echo 'Bands 85, Rows 30:' >> _results.txt
../check.py ./prediction_85_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_85_35.txt ]; then
touch ./prediction_85_35.txt
cat ../1_data/train.txt | ../src/mapper.py 85 35 | sort | ../reducer.py > ./prediction_85_35.txt
echo 'Bands 85, Rows 35:' >> _results.txt
../check.py ./prediction_85_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_85_40.txt ]; then
touch ./prediction_85_40.txt
cat ../1_data/train.txt | ../src/mapper.py 85 40 | sort | ../reducer.py > ./prediction_85_40.txt
echo 'Bands 85, Rows 40:' >> _results.txt
../check.py ./prediction_85_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_85_45.txt ]; then
touch ./prediction_85_45.txt
cat ../1_data/train.txt | ../src/mapper.py 85 45 | sort | ../reducer.py > ./prediction_85_45.txt
echo 'Bands 85, Rows 45:' >> _results.txt
../check.py ./prediction_85_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_85_50.txt ]; then
touch ./prediction_85_50.txt
cat ../1_data/train.txt | ../src/mapper.py 85 50 | sort | ../reducer.py > ./prediction_85_50.txt
echo 'Bands 85, Rows 50:' >> _results.txt
../check.py ./prediction_85_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_85_55.txt ]; then
touch ./prediction_85_55.txt
cat ../1_data/train.txt | ../src/mapper.py 85 55 | sort | ../reducer.py > ./prediction_85_55.txt
echo 'Bands 85, Rows 55:' >> _results.txt
../check.py ./prediction_85_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_85_60.txt ]; then
touch ./prediction_85_60.txt
cat ../1_data/train.txt | ../src/mapper.py 85 60 | sort | ../reducer.py > ./prediction_85_60.txt
echo 'Bands 85, Rows 60:' >> _results.txt
../check.py ./prediction_85_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_85_65.txt ]; then
touch ./prediction_85_65.txt
cat ../1_data/train.txt | ../src/mapper.py 85 65 | sort | ../reducer.py > ./prediction_85_65.txt
echo 'Bands 85, Rows 65:' >> _results.txt
../check.py ./prediction_85_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_85_70.txt ]; then
touch ./prediction_85_70.txt
cat ../1_data/train.txt | ../src/mapper.py 85 70 | sort | ../reducer.py > ./prediction_85_70.txt
echo 'Bands 85, Rows 70:' >> _results.txt
../check.py ./prediction_85_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_90_20.txt ]; then
touch ./prediction_90_20.txt
cat ../1_data/train.txt | ../src/mapper.py 90 20 | sort | ../reducer.py > ./prediction_90_20.txt
echo 'Bands 90, Rows 20:' >> _results.txt
../check.py ./prediction_90_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_90_25.txt ]; then
touch ./prediction_90_25.txt
cat ../1_data/train.txt | ../src/mapper.py 90 25 | sort | ../reducer.py > ./prediction_90_25.txt
echo 'Bands 90, Rows 25:' >> _results.txt
../check.py ./prediction_90_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_90_30.txt ]; then
touch ./prediction_90_30.txt
cat ../1_data/train.txt | ../src/mapper.py 90 30 | sort | ../reducer.py > ./prediction_90_30.txt
echo 'Bands 90, Rows 30:' >> _results.txt
../check.py ./prediction_90_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_90_35.txt ]; then
touch ./prediction_90_35.txt
cat ../1_data/train.txt | ../src/mapper.py 90 35 | sort | ../reducer.py > ./prediction_90_35.txt
echo 'Bands 90, Rows 35:' >> _results.txt
../check.py ./prediction_90_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_90_40.txt ]; then
touch ./prediction_90_40.txt
cat ../1_data/train.txt | ../src/mapper.py 90 40 | sort | ../reducer.py > ./prediction_90_40.txt
echo 'Bands 90, Rows 40:' >> _results.txt
../check.py ./prediction_90_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_90_45.txt ]; then
touch ./prediction_90_45.txt
cat ../1_data/train.txt | ../src/mapper.py 90 45 | sort | ../reducer.py > ./prediction_90_45.txt
echo 'Bands 90, Rows 45:' >> _results.txt
../check.py ./prediction_90_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_90_50.txt ]; then
touch ./prediction_90_50.txt
cat ../1_data/train.txt | ../src/mapper.py 90 50 | sort | ../reducer.py > ./prediction_90_50.txt
echo 'Bands 90, Rows 50:' >> _results.txt
../check.py ./prediction_90_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_90_55.txt ]; then
touch ./prediction_90_55.txt
cat ../1_data/train.txt | ../src/mapper.py 90 55 | sort | ../reducer.py > ./prediction_90_55.txt
echo 'Bands 90, Rows 55:' >> _results.txt
../check.py ./prediction_90_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_90_60.txt ]; then
touch ./prediction_90_60.txt
cat ../1_data/train.txt | ../src/mapper.py 90 60 | sort | ../reducer.py > ./prediction_90_60.txt
echo 'Bands 90, Rows 60:' >> _results.txt
../check.py ./prediction_90_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_90_65.txt ]; then
touch ./prediction_90_65.txt
cat ../1_data/train.txt | ../src/mapper.py 90 65 | sort | ../reducer.py > ./prediction_90_65.txt
echo 'Bands 90, Rows 65:' >> _results.txt
../check.py ./prediction_90_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_90_70.txt ]; then
touch ./prediction_90_70.txt
cat ../1_data/train.txt | ../src/mapper.py 90 70 | sort | ../reducer.py > ./prediction_90_70.txt
echo 'Bands 90, Rows 70:' >> _results.txt
../check.py ./prediction_90_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_95_20.txt ]; then
touch ./prediction_95_20.txt
cat ../1_data/train.txt | ../src/mapper.py 95 20 | sort | ../reducer.py > ./prediction_95_20.txt
echo 'Bands 95, Rows 20:' >> _results.txt
../check.py ./prediction_95_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_95_25.txt ]; then
touch ./prediction_95_25.txt
cat ../1_data/train.txt | ../src/mapper.py 95 25 | sort | ../reducer.py > ./prediction_95_25.txt
echo 'Bands 95, Rows 25:' >> _results.txt
../check.py ./prediction_95_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_95_30.txt ]; then
touch ./prediction_95_30.txt
cat ../1_data/train.txt | ../src/mapper.py 95 30 | sort | ../reducer.py > ./prediction_95_30.txt
echo 'Bands 95, Rows 30:' >> _results.txt
../check.py ./prediction_95_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_95_35.txt ]; then
touch ./prediction_95_35.txt
cat ../1_data/train.txt | ../src/mapper.py 95 35 | sort | ../reducer.py > ./prediction_95_35.txt
echo 'Bands 95, Rows 35:' >> _results.txt
../check.py ./prediction_95_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_95_40.txt ]; then
touch ./prediction_95_40.txt
cat ../1_data/train.txt | ../src/mapper.py 95 40 | sort | ../reducer.py > ./prediction_95_40.txt
echo 'Bands 95, Rows 40:' >> _results.txt
../check.py ./prediction_95_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_95_45.txt ]; then
touch ./prediction_95_45.txt
cat ../1_data/train.txt | ../src/mapper.py 95 45 | sort | ../reducer.py > ./prediction_95_45.txt
echo 'Bands 95, Rows 45:' >> _results.txt
../check.py ./prediction_95_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_95_50.txt ]; then
touch ./prediction_95_50.txt
cat ../1_data/train.txt | ../src/mapper.py 95 50 | sort | ../reducer.py > ./prediction_95_50.txt
echo 'Bands 95, Rows 50:' >> _results.txt
../check.py ./prediction_95_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_95_55.txt ]; then
touch ./prediction_95_55.txt
cat ../1_data/train.txt | ../src/mapper.py 95 55 | sort | ../reducer.py > ./prediction_95_55.txt
echo 'Bands 95, Rows 55:' >> _results.txt
../check.py ./prediction_95_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_95_60.txt ]; then
touch ./prediction_95_60.txt
cat ../1_data/train.txt | ../src/mapper.py 95 60 | sort | ../reducer.py > ./prediction_95_60.txt
echo 'Bands 95, Rows 60:' >> _results.txt
../check.py ./prediction_95_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_95_65.txt ]; then
touch ./prediction_95_65.txt
cat ../1_data/train.txt | ../src/mapper.py 95 65 | sort | ../reducer.py > ./prediction_95_65.txt
echo 'Bands 95, Rows 65:' >> _results.txt
../check.py ./prediction_95_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_95_70.txt ]; then
touch ./prediction_95_70.txt
cat ../1_data/train.txt | ../src/mapper.py 95 70 | sort | ../reducer.py > ./prediction_95_70.txt
echo 'Bands 95, Rows 70:' >> _results.txt
../check.py ./prediction_95_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_100_20.txt ]; then
touch ./prediction_100_20.txt
cat ../1_data/train.txt | ../src/mapper.py 100 20 | sort | ../reducer.py > ./prediction_100_20.txt
echo 'Bands 100, Rows 20:' >> _results.txt
../check.py ./prediction_100_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_100_25.txt ]; then
touch ./prediction_100_25.txt
cat ../1_data/train.txt | ../src/mapper.py 100 25 | sort | ../reducer.py > ./prediction_100_25.txt
echo 'Bands 100, Rows 25:' >> _results.txt
../check.py ./prediction_100_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_100_30.txt ]; then
touch ./prediction_100_30.txt
cat ../1_data/train.txt | ../src/mapper.py 100 30 | sort | ../reducer.py > ./prediction_100_30.txt
echo 'Bands 100, Rows 30:' >> _results.txt
../check.py ./prediction_100_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_100_35.txt ]; then
touch ./prediction_100_35.txt
cat ../1_data/train.txt | ../src/mapper.py 100 35 | sort | ../reducer.py > ./prediction_100_35.txt
echo 'Bands 100, Rows 35:' >> _results.txt
../check.py ./prediction_100_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_100_40.txt ]; then
touch ./prediction_100_40.txt
cat ../1_data/train.txt | ../src/mapper.py 100 40 | sort | ../reducer.py > ./prediction_100_40.txt
echo 'Bands 100, Rows 40:' >> _results.txt
../check.py ./prediction_100_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_100_45.txt ]; then
touch ./prediction_100_45.txt
cat ../1_data/train.txt | ../src/mapper.py 100 45 | sort | ../reducer.py > ./prediction_100_45.txt
echo 'Bands 100, Rows 45:' >> _results.txt
../check.py ./prediction_100_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_100_50.txt ]; then
touch ./prediction_100_50.txt
cat ../1_data/train.txt | ../src/mapper.py 100 50 | sort | ../reducer.py > ./prediction_100_50.txt
echo 'Bands 100, Rows 50:' >> _results.txt
../check.py ./prediction_100_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_100_55.txt ]; then
touch ./prediction_100_55.txt
cat ../1_data/train.txt | ../src/mapper.py 100 55 | sort | ../reducer.py > ./prediction_100_55.txt
echo 'Bands 100, Rows 55:' >> _results.txt
../check.py ./prediction_100_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_100_60.txt ]; then
touch ./prediction_100_60.txt
cat ../1_data/train.txt | ../src/mapper.py 100 60 | sort | ../reducer.py > ./prediction_100_60.txt
echo 'Bands 100, Rows 60:' >> _results.txt
../check.py ./prediction_100_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_100_65.txt ]; then
touch ./prediction_100_65.txt
cat ../1_data/train.txt | ../src/mapper.py 100 65 | sort | ../reducer.py > ./prediction_100_65.txt
echo 'Bands 100, Rows 65:' >> _results.txt
../check.py ./prediction_100_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_100_70.txt ]; then
touch ./prediction_100_70.txt
cat ../1_data/train.txt | ../src/mapper.py 100 70 | sort | ../reducer.py > ./prediction_100_70.txt
echo 'Bands 100, Rows 70:' >> _results.txt
../check.py ./prediction_100_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_105_20.txt ]; then
touch ./prediction_105_20.txt
cat ../1_data/train.txt | ../src/mapper.py 105 20 | sort | ../reducer.py > ./prediction_105_20.txt
echo 'Bands 105, Rows 20:' >> _results.txt
../check.py ./prediction_105_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_105_25.txt ]; then
touch ./prediction_105_25.txt
cat ../1_data/train.txt | ../src/mapper.py 105 25 | sort | ../reducer.py > ./prediction_105_25.txt
echo 'Bands 105, Rows 25:' >> _results.txt
../check.py ./prediction_105_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_105_30.txt ]; then
touch ./prediction_105_30.txt
cat ../1_data/train.txt | ../src/mapper.py 105 30 | sort | ../reducer.py > ./prediction_105_30.txt
echo 'Bands 105, Rows 30:' >> _results.txt
../check.py ./prediction_105_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_105_35.txt ]; then
touch ./prediction_105_35.txt
cat ../1_data/train.txt | ../src/mapper.py 105 35 | sort | ../reducer.py > ./prediction_105_35.txt
echo 'Bands 105, Rows 35:' >> _results.txt
../check.py ./prediction_105_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_105_40.txt ]; then
touch ./prediction_105_40.txt
cat ../1_data/train.txt | ../src/mapper.py 105 40 | sort | ../reducer.py > ./prediction_105_40.txt
echo 'Bands 105, Rows 40:' >> _results.txt
../check.py ./prediction_105_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_105_45.txt ]; then
touch ./prediction_105_45.txt
cat ../1_data/train.txt | ../src/mapper.py 105 45 | sort | ../reducer.py > ./prediction_105_45.txt
echo 'Bands 105, Rows 45:' >> _results.txt
../check.py ./prediction_105_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_105_50.txt ]; then
touch ./prediction_105_50.txt
cat ../1_data/train.txt | ../src/mapper.py 105 50 | sort | ../reducer.py > ./prediction_105_50.txt
echo 'Bands 105, Rows 50:' >> _results.txt
../check.py ./prediction_105_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_105_55.txt ]; then
touch ./prediction_105_55.txt
cat ../1_data/train.txt | ../src/mapper.py 105 55 | sort | ../reducer.py > ./prediction_105_55.txt
echo 'Bands 105, Rows 55:' >> _results.txt
../check.py ./prediction_105_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_105_60.txt ]; then
touch ./prediction_105_60.txt
cat ../1_data/train.txt | ../src/mapper.py 105 60 | sort | ../reducer.py > ./prediction_105_60.txt
echo 'Bands 105, Rows 60:' >> _results.txt
../check.py ./prediction_105_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_105_65.txt ]; then
touch ./prediction_105_65.txt
cat ../1_data/train.txt | ../src/mapper.py 105 65 | sort | ../reducer.py > ./prediction_105_65.txt
echo 'Bands 105, Rows 65:' >> _results.txt
../check.py ./prediction_105_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_105_70.txt ]; then
touch ./prediction_105_70.txt
cat ../1_data/train.txt | ../src/mapper.py 105 70 | sort | ../reducer.py > ./prediction_105_70.txt
echo 'Bands 105, Rows 70:' >> _results.txt
../check.py ./prediction_105_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_110_20.txt ]; then
touch ./prediction_110_20.txt
cat ../1_data/train.txt | ../src/mapper.py 110 20 | sort | ../reducer.py > ./prediction_110_20.txt
echo 'Bands 110, Rows 20:' >> _results.txt
../check.py ./prediction_110_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_110_25.txt ]; then
touch ./prediction_110_25.txt
cat ../1_data/train.txt | ../src/mapper.py 110 25 | sort | ../reducer.py > ./prediction_110_25.txt
echo 'Bands 110, Rows 25:' >> _results.txt
../check.py ./prediction_110_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_110_30.txt ]; then
touch ./prediction_110_30.txt
cat ../1_data/train.txt | ../src/mapper.py 110 30 | sort | ../reducer.py > ./prediction_110_30.txt
echo 'Bands 110, Rows 30:' >> _results.txt
../check.py ./prediction_110_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_110_35.txt ]; then
touch ./prediction_110_35.txt
cat ../1_data/train.txt | ../src/mapper.py 110 35 | sort | ../reducer.py > ./prediction_110_35.txt
echo 'Bands 110, Rows 35:' >> _results.txt
../check.py ./prediction_110_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_110_40.txt ]; then
touch ./prediction_110_40.txt
cat ../1_data/train.txt | ../src/mapper.py 110 40 | sort | ../reducer.py > ./prediction_110_40.txt
echo 'Bands 110, Rows 40:' >> _results.txt
../check.py ./prediction_110_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_110_45.txt ]; then
touch ./prediction_110_45.txt
cat ../1_data/train.txt | ../src/mapper.py 110 45 | sort | ../reducer.py > ./prediction_110_45.txt
echo 'Bands 110, Rows 45:' >> _results.txt
../check.py ./prediction_110_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_110_50.txt ]; then
touch ./prediction_110_50.txt
cat ../1_data/train.txt | ../src/mapper.py 110 50 | sort | ../reducer.py > ./prediction_110_50.txt
echo 'Bands 110, Rows 50:' >> _results.txt
../check.py ./prediction_110_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_110_55.txt ]; then
touch ./prediction_110_55.txt
cat ../1_data/train.txt | ../src/mapper.py 110 55 | sort | ../reducer.py > ./prediction_110_55.txt
echo 'Bands 110, Rows 55:' >> _results.txt
../check.py ./prediction_110_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_110_60.txt ]; then
touch ./prediction_110_60.txt
cat ../1_data/train.txt | ../src/mapper.py 110 60 | sort | ../reducer.py > ./prediction_110_60.txt
echo 'Bands 110, Rows 60:' >> _results.txt
../check.py ./prediction_110_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_110_65.txt ]; then
touch ./prediction_110_65.txt
cat ../1_data/train.txt | ../src/mapper.py 110 65 | sort | ../reducer.py > ./prediction_110_65.txt
echo 'Bands 110, Rows 65:' >> _results.txt
../check.py ./prediction_110_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_110_70.txt ]; then
touch ./prediction_110_70.txt
cat ../1_data/train.txt | ../src/mapper.py 110 70 | sort | ../reducer.py > ./prediction_110_70.txt
echo 'Bands 110, Rows 70:' >> _results.txt
../check.py ./prediction_110_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_115_20.txt ]; then
touch ./prediction_115_20.txt
cat ../1_data/train.txt | ../src/mapper.py 115 20 | sort | ../reducer.py > ./prediction_115_20.txt
echo 'Bands 115, Rows 20:' >> _results.txt
../check.py ./prediction_115_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_115_25.txt ]; then
touch ./prediction_115_25.txt
cat ../1_data/train.txt | ../src/mapper.py 115 25 | sort | ../reducer.py > ./prediction_115_25.txt
echo 'Bands 115, Rows 25:' >> _results.txt
../check.py ./prediction_115_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_115_30.txt ]; then
touch ./prediction_115_30.txt
cat ../1_data/train.txt | ../src/mapper.py 115 30 | sort | ../reducer.py > ./prediction_115_30.txt
echo 'Bands 115, Rows 30:' >> _results.txt
../check.py ./prediction_115_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_115_35.txt ]; then
touch ./prediction_115_35.txt
cat ../1_data/train.txt | ../src/mapper.py 115 35 | sort | ../reducer.py > ./prediction_115_35.txt
echo 'Bands 115, Rows 35:' >> _results.txt
../check.py ./prediction_115_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_115_40.txt ]; then
touch ./prediction_115_40.txt
cat ../1_data/train.txt | ../src/mapper.py 115 40 | sort | ../reducer.py > ./prediction_115_40.txt
echo 'Bands 115, Rows 40:' >> _results.txt
../check.py ./prediction_115_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_115_45.txt ]; then
touch ./prediction_115_45.txt
cat ../1_data/train.txt | ../src/mapper.py 115 45 | sort | ../reducer.py > ./prediction_115_45.txt
echo 'Bands 115, Rows 45:' >> _results.txt
../check.py ./prediction_115_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_115_50.txt ]; then
touch ./prediction_115_50.txt
cat ../1_data/train.txt | ../src/mapper.py 115 50 | sort | ../reducer.py > ./prediction_115_50.txt
echo 'Bands 115, Rows 50:' >> _results.txt
../check.py ./prediction_115_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_115_55.txt ]; then
touch ./prediction_115_55.txt
cat ../1_data/train.txt | ../src/mapper.py 115 55 | sort | ../reducer.py > ./prediction_115_55.txt
echo 'Bands 115, Rows 55:' >> _results.txt
../check.py ./prediction_115_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_115_60.txt ]; then
touch ./prediction_115_60.txt
cat ../1_data/train.txt | ../src/mapper.py 115 60 | sort | ../reducer.py > ./prediction_115_60.txt
echo 'Bands 115, Rows 60:' >> _results.txt
../check.py ./prediction_115_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_115_65.txt ]; then
touch ./prediction_115_65.txt
cat ../1_data/train.txt | ../src/mapper.py 115 65 | sort | ../reducer.py > ./prediction_115_65.txt
echo 'Bands 115, Rows 65:' >> _results.txt
../check.py ./prediction_115_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_115_70.txt ]; then
touch ./prediction_115_70.txt
cat ../1_data/train.txt | ../src/mapper.py 115 70 | sort | ../reducer.py > ./prediction_115_70.txt
echo 'Bands 115, Rows 70:' >> _results.txt
../check.py ./prediction_115_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_120_20.txt ]; then
touch ./prediction_120_20.txt
cat ../1_data/train.txt | ../src/mapper.py 120 20 | sort | ../reducer.py > ./prediction_120_20.txt
echo 'Bands 120, Rows 20:' >> _results.txt
../check.py ./prediction_120_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_120_25.txt ]; then
touch ./prediction_120_25.txt
cat ../1_data/train.txt | ../src/mapper.py 120 25 | sort | ../reducer.py > ./prediction_120_25.txt
echo 'Bands 120, Rows 25:' >> _results.txt
../check.py ./prediction_120_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_120_30.txt ]; then
touch ./prediction_120_30.txt
cat ../1_data/train.txt | ../src/mapper.py 120 30 | sort | ../reducer.py > ./prediction_120_30.txt
echo 'Bands 120, Rows 30:' >> _results.txt
../check.py ./prediction_120_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_120_35.txt ]; then
touch ./prediction_120_35.txt
cat ../1_data/train.txt | ../src/mapper.py 120 35 | sort | ../reducer.py > ./prediction_120_35.txt
echo 'Bands 120, Rows 35:' >> _results.txt
../check.py ./prediction_120_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_120_40.txt ]; then
touch ./prediction_120_40.txt
cat ../1_data/train.txt | ../src/mapper.py 120 40 | sort | ../reducer.py > ./prediction_120_40.txt
echo 'Bands 120, Rows 40:' >> _results.txt
../check.py ./prediction_120_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_120_45.txt ]; then
touch ./prediction_120_45.txt
cat ../1_data/train.txt | ../src/mapper.py 120 45 | sort | ../reducer.py > ./prediction_120_45.txt
echo 'Bands 120, Rows 45:' >> _results.txt
../check.py ./prediction_120_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_120_50.txt ]; then
touch ./prediction_120_50.txt
cat ../1_data/train.txt | ../src/mapper.py 120 50 | sort | ../reducer.py > ./prediction_120_50.txt
echo 'Bands 120, Rows 50:' >> _results.txt
../check.py ./prediction_120_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_120_55.txt ]; then
touch ./prediction_120_55.txt
cat ../1_data/train.txt | ../src/mapper.py 120 55 | sort | ../reducer.py > ./prediction_120_55.txt
echo 'Bands 120, Rows 55:' >> _results.txt
../check.py ./prediction_120_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_120_60.txt ]; then
touch ./prediction_120_60.txt
cat ../1_data/train.txt | ../src/mapper.py 120 60 | sort | ../reducer.py > ./prediction_120_60.txt
echo 'Bands 120, Rows 60:' >> _results.txt
../check.py ./prediction_120_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_120_65.txt ]; then
touch ./prediction_120_65.txt
cat ../1_data/train.txt | ../src/mapper.py 120 65 | sort | ../reducer.py > ./prediction_120_65.txt
echo 'Bands 120, Rows 65:' >> _results.txt
../check.py ./prediction_120_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_120_70.txt ]; then
touch ./prediction_120_70.txt
cat ../1_data/train.txt | ../src/mapper.py 120 70 | sort | ../reducer.py > ./prediction_120_70.txt
echo 'Bands 120, Rows 70:' >> _results.txt
../check.py ./prediction_120_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_125_20.txt ]; then
touch ./prediction_125_20.txt
cat ../1_data/train.txt | ../src/mapper.py 125 20 | sort | ../reducer.py > ./prediction_125_20.txt
echo 'Bands 125, Rows 20:' >> _results.txt
../check.py ./prediction_125_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_125_25.txt ]; then
touch ./prediction_125_25.txt
cat ../1_data/train.txt | ../src/mapper.py 125 25 | sort | ../reducer.py > ./prediction_125_25.txt
echo 'Bands 125, Rows 25:' >> _results.txt
../check.py ./prediction_125_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_125_30.txt ]; then
touch ./prediction_125_30.txt
cat ../1_data/train.txt | ../src/mapper.py 125 30 | sort | ../reducer.py > ./prediction_125_30.txt
echo 'Bands 125, Rows 30:' >> _results.txt
../check.py ./prediction_125_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_125_35.txt ]; then
touch ./prediction_125_35.txt
cat ../1_data/train.txt | ../src/mapper.py 125 35 | sort | ../reducer.py > ./prediction_125_35.txt
echo 'Bands 125, Rows 35:' >> _results.txt
../check.py ./prediction_125_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_125_40.txt ]; then
touch ./prediction_125_40.txt
cat ../1_data/train.txt | ../src/mapper.py 125 40 | sort | ../reducer.py > ./prediction_125_40.txt
echo 'Bands 125, Rows 40:' >> _results.txt
../check.py ./prediction_125_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_125_45.txt ]; then
touch ./prediction_125_45.txt
cat ../1_data/train.txt | ../src/mapper.py 125 45 | sort | ../reducer.py > ./prediction_125_45.txt
echo 'Bands 125, Rows 45:' >> _results.txt
../check.py ./prediction_125_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_125_50.txt ]; then
touch ./prediction_125_50.txt
cat ../1_data/train.txt | ../src/mapper.py 125 50 | sort | ../reducer.py > ./prediction_125_50.txt
echo 'Bands 125, Rows 50:' >> _results.txt
../check.py ./prediction_125_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_125_55.txt ]; then
touch ./prediction_125_55.txt
cat ../1_data/train.txt | ../src/mapper.py 125 55 | sort | ../reducer.py > ./prediction_125_55.txt
echo 'Bands 125, Rows 55:' >> _results.txt
../check.py ./prediction_125_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_125_60.txt ]; then
touch ./prediction_125_60.txt
cat ../1_data/train.txt | ../src/mapper.py 125 60 | sort | ../reducer.py > ./prediction_125_60.txt
echo 'Bands 125, Rows 60:' >> _results.txt
../check.py ./prediction_125_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_125_65.txt ]; then
touch ./prediction_125_65.txt
cat ../1_data/train.txt | ../src/mapper.py 125 65 | sort | ../reducer.py > ./prediction_125_65.txt
echo 'Bands 125, Rows 65:' >> _results.txt
../check.py ./prediction_125_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_125_70.txt ]; then
touch ./prediction_125_70.txt
cat ../1_data/train.txt | ../src/mapper.py 125 70 | sort | ../reducer.py > ./prediction_125_70.txt
echo 'Bands 125, Rows 70:' >> _results.txt
../check.py ./prediction_125_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_130_20.txt ]; then
touch ./prediction_130_20.txt
cat ../1_data/train.txt | ../src/mapper.py 130 20 | sort | ../reducer.py > ./prediction_130_20.txt
echo 'Bands 130, Rows 20:' >> _results.txt
../check.py ./prediction_130_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_130_25.txt ]; then
touch ./prediction_130_25.txt
cat ../1_data/train.txt | ../src/mapper.py 130 25 | sort | ../reducer.py > ./prediction_130_25.txt
echo 'Bands 130, Rows 25:' >> _results.txt
../check.py ./prediction_130_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_130_30.txt ]; then
touch ./prediction_130_30.txt
cat ../1_data/train.txt | ../src/mapper.py 130 30 | sort | ../reducer.py > ./prediction_130_30.txt
echo 'Bands 130, Rows 30:' >> _results.txt
../check.py ./prediction_130_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_130_35.txt ]; then
touch ./prediction_130_35.txt
cat ../1_data/train.txt | ../src/mapper.py 130 35 | sort | ../reducer.py > ./prediction_130_35.txt
echo 'Bands 130, Rows 35:' >> _results.txt
../check.py ./prediction_130_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_130_40.txt ]; then
touch ./prediction_130_40.txt
cat ../1_data/train.txt | ../src/mapper.py 130 40 | sort | ../reducer.py > ./prediction_130_40.txt
echo 'Bands 130, Rows 40:' >> _results.txt
../check.py ./prediction_130_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_130_45.txt ]; then
touch ./prediction_130_45.txt
cat ../1_data/train.txt | ../src/mapper.py 130 45 | sort | ../reducer.py > ./prediction_130_45.txt
echo 'Bands 130, Rows 45:' >> _results.txt
../check.py ./prediction_130_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_130_50.txt ]; then
touch ./prediction_130_50.txt
cat ../1_data/train.txt | ../src/mapper.py 130 50 | sort | ../reducer.py > ./prediction_130_50.txt
echo 'Bands 130, Rows 50:' >> _results.txt
../check.py ./prediction_130_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_130_55.txt ]; then
touch ./prediction_130_55.txt
cat ../1_data/train.txt | ../src/mapper.py 130 55 | sort | ../reducer.py > ./prediction_130_55.txt
echo 'Bands 130, Rows 55:' >> _results.txt
../check.py ./prediction_130_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_130_60.txt ]; then
touch ./prediction_130_60.txt
cat ../1_data/train.txt | ../src/mapper.py 130 60 | sort | ../reducer.py > ./prediction_130_60.txt
echo 'Bands 130, Rows 60:' >> _results.txt
../check.py ./prediction_130_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_130_65.txt ]; then
touch ./prediction_130_65.txt
cat ../1_data/train.txt | ../src/mapper.py 130 65 | sort | ../reducer.py > ./prediction_130_65.txt
echo 'Bands 130, Rows 65:' >> _results.txt
../check.py ./prediction_130_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_130_70.txt ]; then
touch ./prediction_130_70.txt
cat ../1_data/train.txt | ../src/mapper.py 130 70 | sort | ../reducer.py > ./prediction_130_70.txt
echo 'Bands 130, Rows 70:' >> _results.txt
../check.py ./prediction_130_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_135_20.txt ]; then
touch ./prediction_135_20.txt
cat ../1_data/train.txt | ../src/mapper.py 135 20 | sort | ../reducer.py > ./prediction_135_20.txt
echo 'Bands 135, Rows 20:' >> _results.txt
../check.py ./prediction_135_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_135_25.txt ]; then
touch ./prediction_135_25.txt
cat ../1_data/train.txt | ../src/mapper.py 135 25 | sort | ../reducer.py > ./prediction_135_25.txt
echo 'Bands 135, Rows 25:' >> _results.txt
../check.py ./prediction_135_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_135_30.txt ]; then
touch ./prediction_135_30.txt
cat ../1_data/train.txt | ../src/mapper.py 135 30 | sort | ../reducer.py > ./prediction_135_30.txt
echo 'Bands 135, Rows 30:' >> _results.txt
../check.py ./prediction_135_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_135_35.txt ]; then
touch ./prediction_135_35.txt
cat ../1_data/train.txt | ../src/mapper.py 135 35 | sort | ../reducer.py > ./prediction_135_35.txt
echo 'Bands 135, Rows 35:' >> _results.txt
../check.py ./prediction_135_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_135_40.txt ]; then
touch ./prediction_135_40.txt
cat ../1_data/train.txt | ../src/mapper.py 135 40 | sort | ../reducer.py > ./prediction_135_40.txt
echo 'Bands 135, Rows 40:' >> _results.txt
../check.py ./prediction_135_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_135_45.txt ]; then
touch ./prediction_135_45.txt
cat ../1_data/train.txt | ../src/mapper.py 135 45 | sort | ../reducer.py > ./prediction_135_45.txt
echo 'Bands 135, Rows 45:' >> _results.txt
../check.py ./prediction_135_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_135_50.txt ]; then
touch ./prediction_135_50.txt
cat ../1_data/train.txt | ../src/mapper.py 135 50 | sort | ../reducer.py > ./prediction_135_50.txt
echo 'Bands 135, Rows 50:' >> _results.txt
../check.py ./prediction_135_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_135_55.txt ]; then
touch ./prediction_135_55.txt
cat ../1_data/train.txt | ../src/mapper.py 135 55 | sort | ../reducer.py > ./prediction_135_55.txt
echo 'Bands 135, Rows 55:' >> _results.txt
../check.py ./prediction_135_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_135_60.txt ]; then
touch ./prediction_135_60.txt
cat ../1_data/train.txt | ../src/mapper.py 135 60 | sort | ../reducer.py > ./prediction_135_60.txt
echo 'Bands 135, Rows 60:' >> _results.txt
../check.py ./prediction_135_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_135_65.txt ]; then
touch ./prediction_135_65.txt
cat ../1_data/train.txt | ../src/mapper.py 135 65 | sort | ../reducer.py > ./prediction_135_65.txt
echo 'Bands 135, Rows 65:' >> _results.txt
../check.py ./prediction_135_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_135_70.txt ]; then
touch ./prediction_135_70.txt
cat ../1_data/train.txt | ../src/mapper.py 135 70 | sort | ../reducer.py > ./prediction_135_70.txt
echo 'Bands 135, Rows 70:' >> _results.txt
../check.py ./prediction_135_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_140_20.txt ]; then
touch ./prediction_140_20.txt
cat ../1_data/train.txt | ../src/mapper.py 140 20 | sort | ../reducer.py > ./prediction_140_20.txt
echo 'Bands 140, Rows 20:' >> _results.txt
../check.py ./prediction_140_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_140_25.txt ]; then
touch ./prediction_140_25.txt
cat ../1_data/train.txt | ../src/mapper.py 140 25 | sort | ../reducer.py > ./prediction_140_25.txt
echo 'Bands 140, Rows 25:' >> _results.txt
../check.py ./prediction_140_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_140_30.txt ]; then
touch ./prediction_140_30.txt
cat ../1_data/train.txt | ../src/mapper.py 140 30 | sort | ../reducer.py > ./prediction_140_30.txt
echo 'Bands 140, Rows 30:' >> _results.txt
../check.py ./prediction_140_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_140_35.txt ]; then
touch ./prediction_140_35.txt
cat ../1_data/train.txt | ../src/mapper.py 140 35 | sort | ../reducer.py > ./prediction_140_35.txt
echo 'Bands 140, Rows 35:' >> _results.txt
../check.py ./prediction_140_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_140_40.txt ]; then
touch ./prediction_140_40.txt
cat ../1_data/train.txt | ../src/mapper.py 140 40 | sort | ../reducer.py > ./prediction_140_40.txt
echo 'Bands 140, Rows 40:' >> _results.txt
../check.py ./prediction_140_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_140_45.txt ]; then
touch ./prediction_140_45.txt
cat ../1_data/train.txt | ../src/mapper.py 140 45 | sort | ../reducer.py > ./prediction_140_45.txt
echo 'Bands 140, Rows 45:' >> _results.txt
../check.py ./prediction_140_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_140_50.txt ]; then
touch ./prediction_140_50.txt
cat ../1_data/train.txt | ../src/mapper.py 140 50 | sort | ../reducer.py > ./prediction_140_50.txt
echo 'Bands 140, Rows 50:' >> _results.txt
../check.py ./prediction_140_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_140_55.txt ]; then
touch ./prediction_140_55.txt
cat ../1_data/train.txt | ../src/mapper.py 140 55 | sort | ../reducer.py > ./prediction_140_55.txt
echo 'Bands 140, Rows 55:' >> _results.txt
../check.py ./prediction_140_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_140_60.txt ]; then
touch ./prediction_140_60.txt
cat ../1_data/train.txt | ../src/mapper.py 140 60 | sort | ../reducer.py > ./prediction_140_60.txt
echo 'Bands 140, Rows 60:' >> _results.txt
../check.py ./prediction_140_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_140_65.txt ]; then
touch ./prediction_140_65.txt
cat ../1_data/train.txt | ../src/mapper.py 140 65 | sort | ../reducer.py > ./prediction_140_65.txt
echo 'Bands 140, Rows 65:' >> _results.txt
../check.py ./prediction_140_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_140_70.txt ]; then
touch ./prediction_140_70.txt
cat ../1_data/train.txt | ../src/mapper.py 140 70 | sort | ../reducer.py > ./prediction_140_70.txt
echo 'Bands 140, Rows 70:' >> _results.txt
../check.py ./prediction_140_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_145_20.txt ]; then
touch ./prediction_145_20.txt
cat ../1_data/train.txt | ../src/mapper.py 145 20 | sort | ../reducer.py > ./prediction_145_20.txt
echo 'Bands 145, Rows 20:' >> _results.txt
../check.py ./prediction_145_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_145_25.txt ]; then
touch ./prediction_145_25.txt
cat ../1_data/train.txt | ../src/mapper.py 145 25 | sort | ../reducer.py > ./prediction_145_25.txt
echo 'Bands 145, Rows 25:' >> _results.txt
../check.py ./prediction_145_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_145_30.txt ]; then
touch ./prediction_145_30.txt
cat ../1_data/train.txt | ../src/mapper.py 145 30 | sort | ../reducer.py > ./prediction_145_30.txt
echo 'Bands 145, Rows 30:' >> _results.txt
../check.py ./prediction_145_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_145_35.txt ]; then
touch ./prediction_145_35.txt
cat ../1_data/train.txt | ../src/mapper.py 145 35 | sort | ../reducer.py > ./prediction_145_35.txt
echo 'Bands 145, Rows 35:' >> _results.txt
../check.py ./prediction_145_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_145_40.txt ]; then
touch ./prediction_145_40.txt
cat ../1_data/train.txt | ../src/mapper.py 145 40 | sort | ../reducer.py > ./prediction_145_40.txt
echo 'Bands 145, Rows 40:' >> _results.txt
../check.py ./prediction_145_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_145_45.txt ]; then
touch ./prediction_145_45.txt
cat ../1_data/train.txt | ../src/mapper.py 145 45 | sort | ../reducer.py > ./prediction_145_45.txt
echo 'Bands 145, Rows 45:' >> _results.txt
../check.py ./prediction_145_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_145_50.txt ]; then
touch ./prediction_145_50.txt
cat ../1_data/train.txt | ../src/mapper.py 145 50 | sort | ../reducer.py > ./prediction_145_50.txt
echo 'Bands 145, Rows 50:' >> _results.txt
../check.py ./prediction_145_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_145_55.txt ]; then
touch ./prediction_145_55.txt
cat ../1_data/train.txt | ../src/mapper.py 145 55 | sort | ../reducer.py > ./prediction_145_55.txt
echo 'Bands 145, Rows 55:' >> _results.txt
../check.py ./prediction_145_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_145_60.txt ]; then
touch ./prediction_145_60.txt
cat ../1_data/train.txt | ../src/mapper.py 145 60 | sort | ../reducer.py > ./prediction_145_60.txt
echo 'Bands 145, Rows 60:' >> _results.txt
../check.py ./prediction_145_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_145_65.txt ]; then
touch ./prediction_145_65.txt
cat ../1_data/train.txt | ../src/mapper.py 145 65 | sort | ../reducer.py > ./prediction_145_65.txt
echo 'Bands 145, Rows 65:' >> _results.txt
../check.py ./prediction_145_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_145_70.txt ]; then
touch ./prediction_145_70.txt
cat ../1_data/train.txt | ../src/mapper.py 145 70 | sort | ../reducer.py > ./prediction_145_70.txt
echo 'Bands 145, Rows 70:' >> _results.txt
../check.py ./prediction_145_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_150_20.txt ]; then
touch ./prediction_150_20.txt
cat ../1_data/train.txt | ../src/mapper.py 150 20 | sort | ../reducer.py > ./prediction_150_20.txt
echo 'Bands 150, Rows 20:' >> _results.txt
../check.py ./prediction_150_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_150_25.txt ]; then
touch ./prediction_150_25.txt
cat ../1_data/train.txt | ../src/mapper.py 150 25 | sort | ../reducer.py > ./prediction_150_25.txt
echo 'Bands 150, Rows 25:' >> _results.txt
../check.py ./prediction_150_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_150_30.txt ]; then
touch ./prediction_150_30.txt
cat ../1_data/train.txt | ../src/mapper.py 150 30 | sort | ../reducer.py > ./prediction_150_30.txt
echo 'Bands 150, Rows 30:' >> _results.txt
../check.py ./prediction_150_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_150_35.txt ]; then
touch ./prediction_150_35.txt
cat ../1_data/train.txt | ../src/mapper.py 150 35 | sort | ../reducer.py > ./prediction_150_35.txt
echo 'Bands 150, Rows 35:' >> _results.txt
../check.py ./prediction_150_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_150_40.txt ]; then
touch ./prediction_150_40.txt
cat ../1_data/train.txt | ../src/mapper.py 150 40 | sort | ../reducer.py > ./prediction_150_40.txt
echo 'Bands 150, Rows 40:' >> _results.txt
../check.py ./prediction_150_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_150_45.txt ]; then
touch ./prediction_150_45.txt
cat ../1_data/train.txt | ../src/mapper.py 150 45 | sort | ../reducer.py > ./prediction_150_45.txt
echo 'Bands 150, Rows 45:' >> _results.txt
../check.py ./prediction_150_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_150_50.txt ]; then
touch ./prediction_150_50.txt
cat ../1_data/train.txt | ../src/mapper.py 150 50 | sort | ../reducer.py > ./prediction_150_50.txt
echo 'Bands 150, Rows 50:' >> _results.txt
../check.py ./prediction_150_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_150_55.txt ]; then
touch ./prediction_150_55.txt
cat ../1_data/train.txt | ../src/mapper.py 150 55 | sort | ../reducer.py > ./prediction_150_55.txt
echo 'Bands 150, Rows 55:' >> _results.txt
../check.py ./prediction_150_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_150_60.txt ]; then
touch ./prediction_150_60.txt
cat ../1_data/train.txt | ../src/mapper.py 150 60 | sort | ../reducer.py > ./prediction_150_60.txt
echo 'Bands 150, Rows 60:' >> _results.txt
../check.py ./prediction_150_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_150_65.txt ]; then
touch ./prediction_150_65.txt
cat ../1_data/train.txt | ../src/mapper.py 150 65 | sort | ../reducer.py > ./prediction_150_65.txt
echo 'Bands 150, Rows 65:' >> _results.txt
../check.py ./prediction_150_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_150_70.txt ]; then
touch ./prediction_150_70.txt
cat ../1_data/train.txt | ../src/mapper.py 150 70 | sort | ../reducer.py > ./prediction_150_70.txt
echo 'Bands 150, Rows 70:' >> _results.txt
../check.py ./prediction_150_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_155_20.txt ]; then
touch ./prediction_155_20.txt
cat ../1_data/train.txt | ../src/mapper.py 155 20 | sort | ../reducer.py > ./prediction_155_20.txt
echo 'Bands 155, Rows 20:' >> _results.txt
../check.py ./prediction_155_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_155_25.txt ]; then
touch ./prediction_155_25.txt
cat ../1_data/train.txt | ../src/mapper.py 155 25 | sort | ../reducer.py > ./prediction_155_25.txt
echo 'Bands 155, Rows 25:' >> _results.txt
../check.py ./prediction_155_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_155_30.txt ]; then
touch ./prediction_155_30.txt
cat ../1_data/train.txt | ../src/mapper.py 155 30 | sort | ../reducer.py > ./prediction_155_30.txt
echo 'Bands 155, Rows 30:' >> _results.txt
../check.py ./prediction_155_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_155_35.txt ]; then
touch ./prediction_155_35.txt
cat ../1_data/train.txt | ../src/mapper.py 155 35 | sort | ../reducer.py > ./prediction_155_35.txt
echo 'Bands 155, Rows 35:' >> _results.txt
../check.py ./prediction_155_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_155_40.txt ]; then
touch ./prediction_155_40.txt
cat ../1_data/train.txt | ../src/mapper.py 155 40 | sort | ../reducer.py > ./prediction_155_40.txt
echo 'Bands 155, Rows 40:' >> _results.txt
../check.py ./prediction_155_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_155_45.txt ]; then
touch ./prediction_155_45.txt
cat ../1_data/train.txt | ../src/mapper.py 155 45 | sort | ../reducer.py > ./prediction_155_45.txt
echo 'Bands 155, Rows 45:' >> _results.txt
../check.py ./prediction_155_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_155_50.txt ]; then
touch ./prediction_155_50.txt
cat ../1_data/train.txt | ../src/mapper.py 155 50 | sort | ../reducer.py > ./prediction_155_50.txt
echo 'Bands 155, Rows 50:' >> _results.txt
../check.py ./prediction_155_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_155_55.txt ]; then
touch ./prediction_155_55.txt
cat ../1_data/train.txt | ../src/mapper.py 155 55 | sort | ../reducer.py > ./prediction_155_55.txt
echo 'Bands 155, Rows 55:' >> _results.txt
../check.py ./prediction_155_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_155_60.txt ]; then
touch ./prediction_155_60.txt
cat ../1_data/train.txt | ../src/mapper.py 155 60 | sort | ../reducer.py > ./prediction_155_60.txt
echo 'Bands 155, Rows 60:' >> _results.txt
../check.py ./prediction_155_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_155_65.txt ]; then
touch ./prediction_155_65.txt
cat ../1_data/train.txt | ../src/mapper.py 155 65 | sort | ../reducer.py > ./prediction_155_65.txt
echo 'Bands 155, Rows 65:' >> _results.txt
../check.py ./prediction_155_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_155_70.txt ]; then
touch ./prediction_155_70.txt
cat ../1_data/train.txt | ../src/mapper.py 155 70 | sort | ../reducer.py > ./prediction_155_70.txt
echo 'Bands 155, Rows 70:' >> _results.txt
../check.py ./prediction_155_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_160_20.txt ]; then
touch ./prediction_160_20.txt
cat ../1_data/train.txt | ../src/mapper.py 160 20 | sort | ../reducer.py > ./prediction_160_20.txt
echo 'Bands 160, Rows 20:' >> _results.txt
../check.py ./prediction_160_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_160_25.txt ]; then
touch ./prediction_160_25.txt
cat ../1_data/train.txt | ../src/mapper.py 160 25 | sort | ../reducer.py > ./prediction_160_25.txt
echo 'Bands 160, Rows 25:' >> _results.txt
../check.py ./prediction_160_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_160_30.txt ]; then
touch ./prediction_160_30.txt
cat ../1_data/train.txt | ../src/mapper.py 160 30 | sort | ../reducer.py > ./prediction_160_30.txt
echo 'Bands 160, Rows 30:' >> _results.txt
../check.py ./prediction_160_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_160_35.txt ]; then
touch ./prediction_160_35.txt
cat ../1_data/train.txt | ../src/mapper.py 160 35 | sort | ../reducer.py > ./prediction_160_35.txt
echo 'Bands 160, Rows 35:' >> _results.txt
../check.py ./prediction_160_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_160_40.txt ]; then
touch ./prediction_160_40.txt
cat ../1_data/train.txt | ../src/mapper.py 160 40 | sort | ../reducer.py > ./prediction_160_40.txt
echo 'Bands 160, Rows 40:' >> _results.txt
../check.py ./prediction_160_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_160_45.txt ]; then
touch ./prediction_160_45.txt
cat ../1_data/train.txt | ../src/mapper.py 160 45 | sort | ../reducer.py > ./prediction_160_45.txt
echo 'Bands 160, Rows 45:' >> _results.txt
../check.py ./prediction_160_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_160_50.txt ]; then
touch ./prediction_160_50.txt
cat ../1_data/train.txt | ../src/mapper.py 160 50 | sort | ../reducer.py > ./prediction_160_50.txt
echo 'Bands 160, Rows 50:' >> _results.txt
../check.py ./prediction_160_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_160_55.txt ]; then
touch ./prediction_160_55.txt
cat ../1_data/train.txt | ../src/mapper.py 160 55 | sort | ../reducer.py > ./prediction_160_55.txt
echo 'Bands 160, Rows 55:' >> _results.txt
../check.py ./prediction_160_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_160_60.txt ]; then
touch ./prediction_160_60.txt
cat ../1_data/train.txt | ../src/mapper.py 160 60 | sort | ../reducer.py > ./prediction_160_60.txt
echo 'Bands 160, Rows 60:' >> _results.txt
../check.py ./prediction_160_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_160_65.txt ]; then
touch ./prediction_160_65.txt
cat ../1_data/train.txt | ../src/mapper.py 160 65 | sort | ../reducer.py > ./prediction_160_65.txt
echo 'Bands 160, Rows 65:' >> _results.txt
../check.py ./prediction_160_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_160_70.txt ]; then
touch ./prediction_160_70.txt
cat ../1_data/train.txt | ../src/mapper.py 160 70 | sort | ../reducer.py > ./prediction_160_70.txt
echo 'Bands 160, Rows 70:' >> _results.txt
../check.py ./prediction_160_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_165_20.txt ]; then
touch ./prediction_165_20.txt
cat ../1_data/train.txt | ../src/mapper.py 165 20 | sort | ../reducer.py > ./prediction_165_20.txt
echo 'Bands 165, Rows 20:' >> _results.txt
../check.py ./prediction_165_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_165_25.txt ]; then
touch ./prediction_165_25.txt
cat ../1_data/train.txt | ../src/mapper.py 165 25 | sort | ../reducer.py > ./prediction_165_25.txt
echo 'Bands 165, Rows 25:' >> _results.txt
../check.py ./prediction_165_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_165_30.txt ]; then
touch ./prediction_165_30.txt
cat ../1_data/train.txt | ../src/mapper.py 165 30 | sort | ../reducer.py > ./prediction_165_30.txt
echo 'Bands 165, Rows 30:' >> _results.txt
../check.py ./prediction_165_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_165_35.txt ]; then
touch ./prediction_165_35.txt
cat ../1_data/train.txt | ../src/mapper.py 165 35 | sort | ../reducer.py > ./prediction_165_35.txt
echo 'Bands 165, Rows 35:' >> _results.txt
../check.py ./prediction_165_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_165_40.txt ]; then
touch ./prediction_165_40.txt
cat ../1_data/train.txt | ../src/mapper.py 165 40 | sort | ../reducer.py > ./prediction_165_40.txt
echo 'Bands 165, Rows 40:' >> _results.txt
../check.py ./prediction_165_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_165_45.txt ]; then
touch ./prediction_165_45.txt
cat ../1_data/train.txt | ../src/mapper.py 165 45 | sort | ../reducer.py > ./prediction_165_45.txt
echo 'Bands 165, Rows 45:' >> _results.txt
../check.py ./prediction_165_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_165_50.txt ]; then
touch ./prediction_165_50.txt
cat ../1_data/train.txt | ../src/mapper.py 165 50 | sort | ../reducer.py > ./prediction_165_50.txt
echo 'Bands 165, Rows 50:' >> _results.txt
../check.py ./prediction_165_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_165_55.txt ]; then
touch ./prediction_165_55.txt
cat ../1_data/train.txt | ../src/mapper.py 165 55 | sort | ../reducer.py > ./prediction_165_55.txt
echo 'Bands 165, Rows 55:' >> _results.txt
../check.py ./prediction_165_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_165_60.txt ]; then
touch ./prediction_165_60.txt
cat ../1_data/train.txt | ../src/mapper.py 165 60 | sort | ../reducer.py > ./prediction_165_60.txt
echo 'Bands 165, Rows 60:' >> _results.txt
../check.py ./prediction_165_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_165_65.txt ]; then
touch ./prediction_165_65.txt
cat ../1_data/train.txt | ../src/mapper.py 165 65 | sort | ../reducer.py > ./prediction_165_65.txt
echo 'Bands 165, Rows 65:' >> _results.txt
../check.py ./prediction_165_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_165_70.txt ]; then
touch ./prediction_165_70.txt
cat ../1_data/train.txt | ../src/mapper.py 165 70 | sort | ../reducer.py > ./prediction_165_70.txt
echo 'Bands 165, Rows 70:' >> _results.txt
../check.py ./prediction_165_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_170_20.txt ]; then
touch ./prediction_170_20.txt
cat ../1_data/train.txt | ../src/mapper.py 170 20 | sort | ../reducer.py > ./prediction_170_20.txt
echo 'Bands 170, Rows 20:' >> _results.txt
../check.py ./prediction_170_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_170_25.txt ]; then
touch ./prediction_170_25.txt
cat ../1_data/train.txt | ../src/mapper.py 170 25 | sort | ../reducer.py > ./prediction_170_25.txt
echo 'Bands 170, Rows 25:' >> _results.txt
../check.py ./prediction_170_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_170_30.txt ]; then
touch ./prediction_170_30.txt
cat ../1_data/train.txt | ../src/mapper.py 170 30 | sort | ../reducer.py > ./prediction_170_30.txt
echo 'Bands 170, Rows 30:' >> _results.txt
../check.py ./prediction_170_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_170_35.txt ]; then
touch ./prediction_170_35.txt
cat ../1_data/train.txt | ../src/mapper.py 170 35 | sort | ../reducer.py > ./prediction_170_35.txt
echo 'Bands 170, Rows 35:' >> _results.txt
../check.py ./prediction_170_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_170_40.txt ]; then
touch ./prediction_170_40.txt
cat ../1_data/train.txt | ../src/mapper.py 170 40 | sort | ../reducer.py > ./prediction_170_40.txt
echo 'Bands 170, Rows 40:' >> _results.txt
../check.py ./prediction_170_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_170_45.txt ]; then
touch ./prediction_170_45.txt
cat ../1_data/train.txt | ../src/mapper.py 170 45 | sort | ../reducer.py > ./prediction_170_45.txt
echo 'Bands 170, Rows 45:' >> _results.txt
../check.py ./prediction_170_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_170_50.txt ]; then
touch ./prediction_170_50.txt
cat ../1_data/train.txt | ../src/mapper.py 170 50 | sort | ../reducer.py > ./prediction_170_50.txt
echo 'Bands 170, Rows 50:' >> _results.txt
../check.py ./prediction_170_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_170_55.txt ]; then
touch ./prediction_170_55.txt
cat ../1_data/train.txt | ../src/mapper.py 170 55 | sort | ../reducer.py > ./prediction_170_55.txt
echo 'Bands 170, Rows 55:' >> _results.txt
../check.py ./prediction_170_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_170_60.txt ]; then
touch ./prediction_170_60.txt
cat ../1_data/train.txt | ../src/mapper.py 170 60 | sort | ../reducer.py > ./prediction_170_60.txt
echo 'Bands 170, Rows 60:' >> _results.txt
../check.py ./prediction_170_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_170_65.txt ]; then
touch ./prediction_170_65.txt
cat ../1_data/train.txt | ../src/mapper.py 170 65 | sort | ../reducer.py > ./prediction_170_65.txt
echo 'Bands 170, Rows 65:' >> _results.txt
../check.py ./prediction_170_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_170_70.txt ]; then
touch ./prediction_170_70.txt
cat ../1_data/train.txt | ../src/mapper.py 170 70 | sort | ../reducer.py > ./prediction_170_70.txt
echo 'Bands 170, Rows 70:' >> _results.txt
../check.py ./prediction_170_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_175_20.txt ]; then
touch ./prediction_175_20.txt
cat ../1_data/train.txt | ../src/mapper.py 175 20 | sort | ../reducer.py > ./prediction_175_20.txt
echo 'Bands 175, Rows 20:' >> _results.txt
../check.py ./prediction_175_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_175_25.txt ]; then
touch ./prediction_175_25.txt
cat ../1_data/train.txt | ../src/mapper.py 175 25 | sort | ../reducer.py > ./prediction_175_25.txt
echo 'Bands 175, Rows 25:' >> _results.txt
../check.py ./prediction_175_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_175_30.txt ]; then
touch ./prediction_175_30.txt
cat ../1_data/train.txt | ../src/mapper.py 175 30 | sort | ../reducer.py > ./prediction_175_30.txt
echo 'Bands 175, Rows 30:' >> _results.txt
../check.py ./prediction_175_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_175_35.txt ]; then
touch ./prediction_175_35.txt
cat ../1_data/train.txt | ../src/mapper.py 175 35 | sort | ../reducer.py > ./prediction_175_35.txt
echo 'Bands 175, Rows 35:' >> _results.txt
../check.py ./prediction_175_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_175_40.txt ]; then
touch ./prediction_175_40.txt
cat ../1_data/train.txt | ../src/mapper.py 175 40 | sort | ../reducer.py > ./prediction_175_40.txt
echo 'Bands 175, Rows 40:' >> _results.txt
../check.py ./prediction_175_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_175_45.txt ]; then
touch ./prediction_175_45.txt
cat ../1_data/train.txt | ../src/mapper.py 175 45 | sort | ../reducer.py > ./prediction_175_45.txt
echo 'Bands 175, Rows 45:' >> _results.txt
../check.py ./prediction_175_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_175_50.txt ]; then
touch ./prediction_175_50.txt
cat ../1_data/train.txt | ../src/mapper.py 175 50 | sort | ../reducer.py > ./prediction_175_50.txt
echo 'Bands 175, Rows 50:' >> _results.txt
../check.py ./prediction_175_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_175_55.txt ]; then
touch ./prediction_175_55.txt
cat ../1_data/train.txt | ../src/mapper.py 175 55 | sort | ../reducer.py > ./prediction_175_55.txt
echo 'Bands 175, Rows 55:' >> _results.txt
../check.py ./prediction_175_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_175_60.txt ]; then
touch ./prediction_175_60.txt
cat ../1_data/train.txt | ../src/mapper.py 175 60 | sort | ../reducer.py > ./prediction_175_60.txt
echo 'Bands 175, Rows 60:' >> _results.txt
../check.py ./prediction_175_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_175_65.txt ]; then
touch ./prediction_175_65.txt
cat ../1_data/train.txt | ../src/mapper.py 175 65 | sort | ../reducer.py > ./prediction_175_65.txt
echo 'Bands 175, Rows 65:' >> _results.txt
../check.py ./prediction_175_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_175_70.txt ]; then
touch ./prediction_175_70.txt
cat ../1_data/train.txt | ../src/mapper.py 175 70 | sort | ../reducer.py > ./prediction_175_70.txt
echo 'Bands 175, Rows 70:' >> _results.txt
../check.py ./prediction_175_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_180_20.txt ]; then
touch ./prediction_180_20.txt
cat ../1_data/train.txt | ../src/mapper.py 180 20 | sort | ../reducer.py > ./prediction_180_20.txt
echo 'Bands 180, Rows 20:' >> _results.txt
../check.py ./prediction_180_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_180_25.txt ]; then
touch ./prediction_180_25.txt
cat ../1_data/train.txt | ../src/mapper.py 180 25 | sort | ../reducer.py > ./prediction_180_25.txt
echo 'Bands 180, Rows 25:' >> _results.txt
../check.py ./prediction_180_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_180_30.txt ]; then
touch ./prediction_180_30.txt
cat ../1_data/train.txt | ../src/mapper.py 180 30 | sort | ../reducer.py > ./prediction_180_30.txt
echo 'Bands 180, Rows 30:' >> _results.txt
../check.py ./prediction_180_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_180_35.txt ]; then
touch ./prediction_180_35.txt
cat ../1_data/train.txt | ../src/mapper.py 180 35 | sort | ../reducer.py > ./prediction_180_35.txt
echo 'Bands 180, Rows 35:' >> _results.txt
../check.py ./prediction_180_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_180_40.txt ]; then
touch ./prediction_180_40.txt
cat ../1_data/train.txt | ../src/mapper.py 180 40 | sort | ../reducer.py > ./prediction_180_40.txt
echo 'Bands 180, Rows 40:' >> _results.txt
../check.py ./prediction_180_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_180_45.txt ]; then
touch ./prediction_180_45.txt
cat ../1_data/train.txt | ../src/mapper.py 180 45 | sort | ../reducer.py > ./prediction_180_45.txt
echo 'Bands 180, Rows 45:' >> _results.txt
../check.py ./prediction_180_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_180_50.txt ]; then
touch ./prediction_180_50.txt
cat ../1_data/train.txt | ../src/mapper.py 180 50 | sort | ../reducer.py > ./prediction_180_50.txt
echo 'Bands 180, Rows 50:' >> _results.txt
../check.py ./prediction_180_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_180_55.txt ]; then
touch ./prediction_180_55.txt
cat ../1_data/train.txt | ../src/mapper.py 180 55 | sort | ../reducer.py > ./prediction_180_55.txt
echo 'Bands 180, Rows 55:' >> _results.txt
../check.py ./prediction_180_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_180_60.txt ]; then
touch ./prediction_180_60.txt
cat ../1_data/train.txt | ../src/mapper.py 180 60 | sort | ../reducer.py > ./prediction_180_60.txt
echo 'Bands 180, Rows 60:' >> _results.txt
../check.py ./prediction_180_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_180_65.txt ]; then
touch ./prediction_180_65.txt
cat ../1_data/train.txt | ../src/mapper.py 180 65 | sort | ../reducer.py > ./prediction_180_65.txt
echo 'Bands 180, Rows 65:' >> _results.txt
../check.py ./prediction_180_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_180_70.txt ]; then
touch ./prediction_180_70.txt
cat ../1_data/train.txt | ../src/mapper.py 180 70 | sort | ../reducer.py > ./prediction_180_70.txt
echo 'Bands 180, Rows 70:' >> _results.txt
../check.py ./prediction_180_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_185_20.txt ]; then
touch ./prediction_185_20.txt
cat ../1_data/train.txt | ../src/mapper.py 185 20 | sort | ../reducer.py > ./prediction_185_20.txt
echo 'Bands 185, Rows 20:' >> _results.txt
../check.py ./prediction_185_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_185_25.txt ]; then
touch ./prediction_185_25.txt
cat ../1_data/train.txt | ../src/mapper.py 185 25 | sort | ../reducer.py > ./prediction_185_25.txt
echo 'Bands 185, Rows 25:' >> _results.txt
../check.py ./prediction_185_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_185_30.txt ]; then
touch ./prediction_185_30.txt
cat ../1_data/train.txt | ../src/mapper.py 185 30 | sort | ../reducer.py > ./prediction_185_30.txt
echo 'Bands 185, Rows 30:' >> _results.txt
../check.py ./prediction_185_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_185_35.txt ]; then
touch ./prediction_185_35.txt
cat ../1_data/train.txt | ../src/mapper.py 185 35 | sort | ../reducer.py > ./prediction_185_35.txt
echo 'Bands 185, Rows 35:' >> _results.txt
../check.py ./prediction_185_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_185_40.txt ]; then
touch ./prediction_185_40.txt
cat ../1_data/train.txt | ../src/mapper.py 185 40 | sort | ../reducer.py > ./prediction_185_40.txt
echo 'Bands 185, Rows 40:' >> _results.txt
../check.py ./prediction_185_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_185_45.txt ]; then
touch ./prediction_185_45.txt
cat ../1_data/train.txt | ../src/mapper.py 185 45 | sort | ../reducer.py > ./prediction_185_45.txt
echo 'Bands 185, Rows 45:' >> _results.txt
../check.py ./prediction_185_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_185_50.txt ]; then
touch ./prediction_185_50.txt
cat ../1_data/train.txt | ../src/mapper.py 185 50 | sort | ../reducer.py > ./prediction_185_50.txt
echo 'Bands 185, Rows 50:' >> _results.txt
../check.py ./prediction_185_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_185_55.txt ]; then
touch ./prediction_185_55.txt
cat ../1_data/train.txt | ../src/mapper.py 185 55 | sort | ../reducer.py > ./prediction_185_55.txt
echo 'Bands 185, Rows 55:' >> _results.txt
../check.py ./prediction_185_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_185_60.txt ]; then
touch ./prediction_185_60.txt
cat ../1_data/train.txt | ../src/mapper.py 185 60 | sort | ../reducer.py > ./prediction_185_60.txt
echo 'Bands 185, Rows 60:' >> _results.txt
../check.py ./prediction_185_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_185_65.txt ]; then
touch ./prediction_185_65.txt
cat ../1_data/train.txt | ../src/mapper.py 185 65 | sort | ../reducer.py > ./prediction_185_65.txt
echo 'Bands 185, Rows 65:' >> _results.txt
../check.py ./prediction_185_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_185_70.txt ]; then
touch ./prediction_185_70.txt
cat ../1_data/train.txt | ../src/mapper.py 185 70 | sort | ../reducer.py > ./prediction_185_70.txt
echo 'Bands 185, Rows 70:' >> _results.txt
../check.py ./prediction_185_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_190_20.txt ]; then
touch ./prediction_190_20.txt
cat ../1_data/train.txt | ../src/mapper.py 190 20 | sort | ../reducer.py > ./prediction_190_20.txt
echo 'Bands 190, Rows 20:' >> _results.txt
../check.py ./prediction_190_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_190_25.txt ]; then
touch ./prediction_190_25.txt
cat ../1_data/train.txt | ../src/mapper.py 190 25 | sort | ../reducer.py > ./prediction_190_25.txt
echo 'Bands 190, Rows 25:' >> _results.txt
../check.py ./prediction_190_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_190_30.txt ]; then
touch ./prediction_190_30.txt
cat ../1_data/train.txt | ../src/mapper.py 190 30 | sort | ../reducer.py > ./prediction_190_30.txt
echo 'Bands 190, Rows 30:' >> _results.txt
../check.py ./prediction_190_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_190_35.txt ]; then
touch ./prediction_190_35.txt
cat ../1_data/train.txt | ../src/mapper.py 190 35 | sort | ../reducer.py > ./prediction_190_35.txt
echo 'Bands 190, Rows 35:' >> _results.txt
../check.py ./prediction_190_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_190_40.txt ]; then
touch ./prediction_190_40.txt
cat ../1_data/train.txt | ../src/mapper.py 190 40 | sort | ../reducer.py > ./prediction_190_40.txt
echo 'Bands 190, Rows 40:' >> _results.txt
../check.py ./prediction_190_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_190_45.txt ]; then
touch ./prediction_190_45.txt
cat ../1_data/train.txt | ../src/mapper.py 190 45 | sort | ../reducer.py > ./prediction_190_45.txt
echo 'Bands 190, Rows 45:' >> _results.txt
../check.py ./prediction_190_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_190_50.txt ]; then
touch ./prediction_190_50.txt
cat ../1_data/train.txt | ../src/mapper.py 190 50 | sort | ../reducer.py > ./prediction_190_50.txt
echo 'Bands 190, Rows 50:' >> _results.txt
../check.py ./prediction_190_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_190_55.txt ]; then
touch ./prediction_190_55.txt
cat ../1_data/train.txt | ../src/mapper.py 190 55 | sort | ../reducer.py > ./prediction_190_55.txt
echo 'Bands 190, Rows 55:' >> _results.txt
../check.py ./prediction_190_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_190_60.txt ]; then
touch ./prediction_190_60.txt
cat ../1_data/train.txt | ../src/mapper.py 190 60 | sort | ../reducer.py > ./prediction_190_60.txt
echo 'Bands 190, Rows 60:' >> _results.txt
../check.py ./prediction_190_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_190_65.txt ]; then
touch ./prediction_190_65.txt
cat ../1_data/train.txt | ../src/mapper.py 190 65 | sort | ../reducer.py > ./prediction_190_65.txt
echo 'Bands 190, Rows 65:' >> _results.txt
../check.py ./prediction_190_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_190_70.txt ]; then
touch ./prediction_190_70.txt
cat ../1_data/train.txt | ../src/mapper.py 190 70 | sort | ../reducer.py > ./prediction_190_70.txt
echo 'Bands 190, Rows 70:' >> _results.txt
../check.py ./prediction_190_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_195_20.txt ]; then
touch ./prediction_195_20.txt
cat ../1_data/train.txt | ../src/mapper.py 195 20 | sort | ../reducer.py > ./prediction_195_20.txt
echo 'Bands 195, Rows 20:' >> _results.txt
../check.py ./prediction_195_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_195_25.txt ]; then
touch ./prediction_195_25.txt
cat ../1_data/train.txt | ../src/mapper.py 195 25 | sort | ../reducer.py > ./prediction_195_25.txt
echo 'Bands 195, Rows 25:' >> _results.txt
../check.py ./prediction_195_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_195_30.txt ]; then
touch ./prediction_195_30.txt
cat ../1_data/train.txt | ../src/mapper.py 195 30 | sort | ../reducer.py > ./prediction_195_30.txt
echo 'Bands 195, Rows 30:' >> _results.txt
../check.py ./prediction_195_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_195_35.txt ]; then
touch ./prediction_195_35.txt
cat ../1_data/train.txt | ../src/mapper.py 195 35 | sort | ../reducer.py > ./prediction_195_35.txt
echo 'Bands 195, Rows 35:' >> _results.txt
../check.py ./prediction_195_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_195_40.txt ]; then
touch ./prediction_195_40.txt
cat ../1_data/train.txt | ../src/mapper.py 195 40 | sort | ../reducer.py > ./prediction_195_40.txt
echo 'Bands 195, Rows 40:' >> _results.txt
../check.py ./prediction_195_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_195_45.txt ]; then
touch ./prediction_195_45.txt
cat ../1_data/train.txt | ../src/mapper.py 195 45 | sort | ../reducer.py > ./prediction_195_45.txt
echo 'Bands 195, Rows 45:' >> _results.txt
../check.py ./prediction_195_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_195_50.txt ]; then
touch ./prediction_195_50.txt
cat ../1_data/train.txt | ../src/mapper.py 195 50 | sort | ../reducer.py > ./prediction_195_50.txt
echo 'Bands 195, Rows 50:' >> _results.txt
../check.py ./prediction_195_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_195_55.txt ]; then
touch ./prediction_195_55.txt
cat ../1_data/train.txt | ../src/mapper.py 195 55 | sort | ../reducer.py > ./prediction_195_55.txt
echo 'Bands 195, Rows 55:' >> _results.txt
../check.py ./prediction_195_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_195_60.txt ]; then
touch ./prediction_195_60.txt
cat ../1_data/train.txt | ../src/mapper.py 195 60 | sort | ../reducer.py > ./prediction_195_60.txt
echo 'Bands 195, Rows 60:' >> _results.txt
../check.py ./prediction_195_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_195_65.txt ]; then
touch ./prediction_195_65.txt
cat ../1_data/train.txt | ../src/mapper.py 195 65 | sort | ../reducer.py > ./prediction_195_65.txt
echo 'Bands 195, Rows 65:' >> _results.txt
../check.py ./prediction_195_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_195_70.txt ]; then
touch ./prediction_195_70.txt
cat ../1_data/train.txt | ../src/mapper.py 195 70 | sort | ../reducer.py > ./prediction_195_70.txt
echo 'Bands 195, Rows 70:' >> _results.txt
../check.py ./prediction_195_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_200_20.txt ]; then
touch ./prediction_200_20.txt
cat ../1_data/train.txt | ../src/mapper.py 200 20 | sort | ../reducer.py > ./prediction_200_20.txt
echo 'Bands 200, Rows 20:' >> _results.txt
../check.py ./prediction_200_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_200_25.txt ]; then
touch ./prediction_200_25.txt
cat ../1_data/train.txt | ../src/mapper.py 200 25 | sort | ../reducer.py > ./prediction_200_25.txt
echo 'Bands 200, Rows 25:' >> _results.txt
../check.py ./prediction_200_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_200_30.txt ]; then
touch ./prediction_200_30.txt
cat ../1_data/train.txt | ../src/mapper.py 200 30 | sort | ../reducer.py > ./prediction_200_30.txt
echo 'Bands 200, Rows 30:' >> _results.txt
../check.py ./prediction_200_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_200_35.txt ]; then
touch ./prediction_200_35.txt
cat ../1_data/train.txt | ../src/mapper.py 200 35 | sort | ../reducer.py > ./prediction_200_35.txt
echo 'Bands 200, Rows 35:' >> _results.txt
../check.py ./prediction_200_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_200_40.txt ]; then
touch ./prediction_200_40.txt
cat ../1_data/train.txt | ../src/mapper.py 200 40 | sort | ../reducer.py > ./prediction_200_40.txt
echo 'Bands 200, Rows 40:' >> _results.txt
../check.py ./prediction_200_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_200_45.txt ]; then
touch ./prediction_200_45.txt
cat ../1_data/train.txt | ../src/mapper.py 200 45 | sort | ../reducer.py > ./prediction_200_45.txt
echo 'Bands 200, Rows 45:' >> _results.txt
../check.py ./prediction_200_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_200_50.txt ]; then
touch ./prediction_200_50.txt
cat ../1_data/train.txt | ../src/mapper.py 200 50 | sort | ../reducer.py > ./prediction_200_50.txt
echo 'Bands 200, Rows 50:' >> _results.txt
../check.py ./prediction_200_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_200_55.txt ]; then
touch ./prediction_200_55.txt
cat ../1_data/train.txt | ../src/mapper.py 200 55 | sort | ../reducer.py > ./prediction_200_55.txt
echo 'Bands 200, Rows 55:' >> _results.txt
../check.py ./prediction_200_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_200_60.txt ]; then
touch ./prediction_200_60.txt
cat ../1_data/train.txt | ../src/mapper.py 200 60 | sort | ../reducer.py > ./prediction_200_60.txt
echo 'Bands 200, Rows 60:' >> _results.txt
../check.py ./prediction_200_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_200_65.txt ]; then
touch ./prediction_200_65.txt
cat ../1_data/train.txt | ../src/mapper.py 200 65 | sort | ../reducer.py > ./prediction_200_65.txt
echo 'Bands 200, Rows 65:' >> _results.txt
../check.py ./prediction_200_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_200_70.txt ]; then
touch ./prediction_200_70.txt
cat ../1_data/train.txt | ../src/mapper.py 200 70 | sort | ../reducer.py > ./prediction_200_70.txt
echo 'Bands 200, Rows 70:' >> _results.txt
../check.py ./prediction_200_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_205_20.txt ]; then
touch ./prediction_205_20.txt
cat ../1_data/train.txt | ../src/mapper.py 205 20 | sort | ../reducer.py > ./prediction_205_20.txt
echo 'Bands 205, Rows 20:' >> _results.txt
../check.py ./prediction_205_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_205_25.txt ]; then
touch ./prediction_205_25.txt
cat ../1_data/train.txt | ../src/mapper.py 205 25 | sort | ../reducer.py > ./prediction_205_25.txt
echo 'Bands 205, Rows 25:' >> _results.txt
../check.py ./prediction_205_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_205_30.txt ]; then
touch ./prediction_205_30.txt
cat ../1_data/train.txt | ../src/mapper.py 205 30 | sort | ../reducer.py > ./prediction_205_30.txt
echo 'Bands 205, Rows 30:' >> _results.txt
../check.py ./prediction_205_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_205_35.txt ]; then
touch ./prediction_205_35.txt
cat ../1_data/train.txt | ../src/mapper.py 205 35 | sort | ../reducer.py > ./prediction_205_35.txt
echo 'Bands 205, Rows 35:' >> _results.txt
../check.py ./prediction_205_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_205_40.txt ]; then
touch ./prediction_205_40.txt
cat ../1_data/train.txt | ../src/mapper.py 205 40 | sort | ../reducer.py > ./prediction_205_40.txt
echo 'Bands 205, Rows 40:' >> _results.txt
../check.py ./prediction_205_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_205_45.txt ]; then
touch ./prediction_205_45.txt
cat ../1_data/train.txt | ../src/mapper.py 205 45 | sort | ../reducer.py > ./prediction_205_45.txt
echo 'Bands 205, Rows 45:' >> _results.txt
../check.py ./prediction_205_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_205_50.txt ]; then
touch ./prediction_205_50.txt
cat ../1_data/train.txt | ../src/mapper.py 205 50 | sort | ../reducer.py > ./prediction_205_50.txt
echo 'Bands 205, Rows 50:' >> _results.txt
../check.py ./prediction_205_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_205_55.txt ]; then
touch ./prediction_205_55.txt
cat ../1_data/train.txt | ../src/mapper.py 205 55 | sort | ../reducer.py > ./prediction_205_55.txt
echo 'Bands 205, Rows 55:' >> _results.txt
../check.py ./prediction_205_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_205_60.txt ]; then
touch ./prediction_205_60.txt
cat ../1_data/train.txt | ../src/mapper.py 205 60 | sort | ../reducer.py > ./prediction_205_60.txt
echo 'Bands 205, Rows 60:' >> _results.txt
../check.py ./prediction_205_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_205_65.txt ]; then
touch ./prediction_205_65.txt
cat ../1_data/train.txt | ../src/mapper.py 205 65 | sort | ../reducer.py > ./prediction_205_65.txt
echo 'Bands 205, Rows 65:' >> _results.txt
../check.py ./prediction_205_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_205_70.txt ]; then
touch ./prediction_205_70.txt
cat ../1_data/train.txt | ../src/mapper.py 205 70 | sort | ../reducer.py > ./prediction_205_70.txt
echo 'Bands 205, Rows 70:' >> _results.txt
../check.py ./prediction_205_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_210_20.txt ]; then
touch ./prediction_210_20.txt
cat ../1_data/train.txt | ../src/mapper.py 210 20 | sort | ../reducer.py > ./prediction_210_20.txt
echo 'Bands 210, Rows 20:' >> _results.txt
../check.py ./prediction_210_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_210_25.txt ]; then
touch ./prediction_210_25.txt
cat ../1_data/train.txt | ../src/mapper.py 210 25 | sort | ../reducer.py > ./prediction_210_25.txt
echo 'Bands 210, Rows 25:' >> _results.txt
../check.py ./prediction_210_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_210_30.txt ]; then
touch ./prediction_210_30.txt
cat ../1_data/train.txt | ../src/mapper.py 210 30 | sort | ../reducer.py > ./prediction_210_30.txt
echo 'Bands 210, Rows 30:' >> _results.txt
../check.py ./prediction_210_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_210_35.txt ]; then
touch ./prediction_210_35.txt
cat ../1_data/train.txt | ../src/mapper.py 210 35 | sort | ../reducer.py > ./prediction_210_35.txt
echo 'Bands 210, Rows 35:' >> _results.txt
../check.py ./prediction_210_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_210_40.txt ]; then
touch ./prediction_210_40.txt
cat ../1_data/train.txt | ../src/mapper.py 210 40 | sort | ../reducer.py > ./prediction_210_40.txt
echo 'Bands 210, Rows 40:' >> _results.txt
../check.py ./prediction_210_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_210_45.txt ]; then
touch ./prediction_210_45.txt
cat ../1_data/train.txt | ../src/mapper.py 210 45 | sort | ../reducer.py > ./prediction_210_45.txt
echo 'Bands 210, Rows 45:' >> _results.txt
../check.py ./prediction_210_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_210_50.txt ]; then
touch ./prediction_210_50.txt
cat ../1_data/train.txt | ../src/mapper.py 210 50 | sort | ../reducer.py > ./prediction_210_50.txt
echo 'Bands 210, Rows 50:' >> _results.txt
../check.py ./prediction_210_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_210_55.txt ]; then
touch ./prediction_210_55.txt
cat ../1_data/train.txt | ../src/mapper.py 210 55 | sort | ../reducer.py > ./prediction_210_55.txt
echo 'Bands 210, Rows 55:' >> _results.txt
../check.py ./prediction_210_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_210_60.txt ]; then
touch ./prediction_210_60.txt
cat ../1_data/train.txt | ../src/mapper.py 210 60 | sort | ../reducer.py > ./prediction_210_60.txt
echo 'Bands 210, Rows 60:' >> _results.txt
../check.py ./prediction_210_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_210_65.txt ]; then
touch ./prediction_210_65.txt
cat ../1_data/train.txt | ../src/mapper.py 210 65 | sort | ../reducer.py > ./prediction_210_65.txt
echo 'Bands 210, Rows 65:' >> _results.txt
../check.py ./prediction_210_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_210_70.txt ]; then
touch ./prediction_210_70.txt
cat ../1_data/train.txt | ../src/mapper.py 210 70 | sort | ../reducer.py > ./prediction_210_70.txt
echo 'Bands 210, Rows 70:' >> _results.txt
../check.py ./prediction_210_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_215_20.txt ]; then
touch ./prediction_215_20.txt
cat ../1_data/train.txt | ../src/mapper.py 215 20 | sort | ../reducer.py > ./prediction_215_20.txt
echo 'Bands 215, Rows 20:' >> _results.txt
../check.py ./prediction_215_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_215_25.txt ]; then
touch ./prediction_215_25.txt
cat ../1_data/train.txt | ../src/mapper.py 215 25 | sort | ../reducer.py > ./prediction_215_25.txt
echo 'Bands 215, Rows 25:' >> _results.txt
../check.py ./prediction_215_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_215_30.txt ]; then
touch ./prediction_215_30.txt
cat ../1_data/train.txt | ../src/mapper.py 215 30 | sort | ../reducer.py > ./prediction_215_30.txt
echo 'Bands 215, Rows 30:' >> _results.txt
../check.py ./prediction_215_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_215_35.txt ]; then
touch ./prediction_215_35.txt
cat ../1_data/train.txt | ../src/mapper.py 215 35 | sort | ../reducer.py > ./prediction_215_35.txt
echo 'Bands 215, Rows 35:' >> _results.txt
../check.py ./prediction_215_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_215_40.txt ]; then
touch ./prediction_215_40.txt
cat ../1_data/train.txt | ../src/mapper.py 215 40 | sort | ../reducer.py > ./prediction_215_40.txt
echo 'Bands 215, Rows 40:' >> _results.txt
../check.py ./prediction_215_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_215_45.txt ]; then
touch ./prediction_215_45.txt
cat ../1_data/train.txt | ../src/mapper.py 215 45 | sort | ../reducer.py > ./prediction_215_45.txt
echo 'Bands 215, Rows 45:' >> _results.txt
../check.py ./prediction_215_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_215_50.txt ]; then
touch ./prediction_215_50.txt
cat ../1_data/train.txt | ../src/mapper.py 215 50 | sort | ../reducer.py > ./prediction_215_50.txt
echo 'Bands 215, Rows 50:' >> _results.txt
../check.py ./prediction_215_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_215_55.txt ]; then
touch ./prediction_215_55.txt
cat ../1_data/train.txt | ../src/mapper.py 215 55 | sort | ../reducer.py > ./prediction_215_55.txt
echo 'Bands 215, Rows 55:' >> _results.txt
../check.py ./prediction_215_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_215_60.txt ]; then
touch ./prediction_215_60.txt
cat ../1_data/train.txt | ../src/mapper.py 215 60 | sort | ../reducer.py > ./prediction_215_60.txt
echo 'Bands 215, Rows 60:' >> _results.txt
../check.py ./prediction_215_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_215_65.txt ]; then
touch ./prediction_215_65.txt
cat ../1_data/train.txt | ../src/mapper.py 215 65 | sort | ../reducer.py > ./prediction_215_65.txt
echo 'Bands 215, Rows 65:' >> _results.txt
../check.py ./prediction_215_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_215_70.txt ]; then
touch ./prediction_215_70.txt
cat ../1_data/train.txt | ../src/mapper.py 215 70 | sort | ../reducer.py > ./prediction_215_70.txt
echo 'Bands 215, Rows 70:' >> _results.txt
../check.py ./prediction_215_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_220_20.txt ]; then
touch ./prediction_220_20.txt
cat ../1_data/train.txt | ../src/mapper.py 220 20 | sort | ../reducer.py > ./prediction_220_20.txt
echo 'Bands 220, Rows 20:' >> _results.txt
../check.py ./prediction_220_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_220_25.txt ]; then
touch ./prediction_220_25.txt
cat ../1_data/train.txt | ../src/mapper.py 220 25 | sort | ../reducer.py > ./prediction_220_25.txt
echo 'Bands 220, Rows 25:' >> _results.txt
../check.py ./prediction_220_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_220_30.txt ]; then
touch ./prediction_220_30.txt
cat ../1_data/train.txt | ../src/mapper.py 220 30 | sort | ../reducer.py > ./prediction_220_30.txt
echo 'Bands 220, Rows 30:' >> _results.txt
../check.py ./prediction_220_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_220_35.txt ]; then
touch ./prediction_220_35.txt
cat ../1_data/train.txt | ../src/mapper.py 220 35 | sort | ../reducer.py > ./prediction_220_35.txt
echo 'Bands 220, Rows 35:' >> _results.txt
../check.py ./prediction_220_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_220_40.txt ]; then
touch ./prediction_220_40.txt
cat ../1_data/train.txt | ../src/mapper.py 220 40 | sort | ../reducer.py > ./prediction_220_40.txt
echo 'Bands 220, Rows 40:' >> _results.txt
../check.py ./prediction_220_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_220_45.txt ]; then
touch ./prediction_220_45.txt
cat ../1_data/train.txt | ../src/mapper.py 220 45 | sort | ../reducer.py > ./prediction_220_45.txt
echo 'Bands 220, Rows 45:' >> _results.txt
../check.py ./prediction_220_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_220_50.txt ]; then
touch ./prediction_220_50.txt
cat ../1_data/train.txt | ../src/mapper.py 220 50 | sort | ../reducer.py > ./prediction_220_50.txt
echo 'Bands 220, Rows 50:' >> _results.txt
../check.py ./prediction_220_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_220_55.txt ]; then
touch ./prediction_220_55.txt
cat ../1_data/train.txt | ../src/mapper.py 220 55 | sort | ../reducer.py > ./prediction_220_55.txt
echo 'Bands 220, Rows 55:' >> _results.txt
../check.py ./prediction_220_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_220_60.txt ]; then
touch ./prediction_220_60.txt
cat ../1_data/train.txt | ../src/mapper.py 220 60 | sort | ../reducer.py > ./prediction_220_60.txt
echo 'Bands 220, Rows 60:' >> _results.txt
../check.py ./prediction_220_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_220_65.txt ]; then
touch ./prediction_220_65.txt
cat ../1_data/train.txt | ../src/mapper.py 220 65 | sort | ../reducer.py > ./prediction_220_65.txt
echo 'Bands 220, Rows 65:' >> _results.txt
../check.py ./prediction_220_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_220_70.txt ]; then
touch ./prediction_220_70.txt
cat ../1_data/train.txt | ../src/mapper.py 220 70 | sort | ../reducer.py > ./prediction_220_70.txt
echo 'Bands 220, Rows 70:' >> _results.txt
../check.py ./prediction_220_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_225_20.txt ]; then
touch ./prediction_225_20.txt
cat ../1_data/train.txt | ../src/mapper.py 225 20 | sort | ../reducer.py > ./prediction_225_20.txt
echo 'Bands 225, Rows 20:' >> _results.txt
../check.py ./prediction_225_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_225_25.txt ]; then
touch ./prediction_225_25.txt
cat ../1_data/train.txt | ../src/mapper.py 225 25 | sort | ../reducer.py > ./prediction_225_25.txt
echo 'Bands 225, Rows 25:' >> _results.txt
../check.py ./prediction_225_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_225_30.txt ]; then
touch ./prediction_225_30.txt
cat ../1_data/train.txt | ../src/mapper.py 225 30 | sort | ../reducer.py > ./prediction_225_30.txt
echo 'Bands 225, Rows 30:' >> _results.txt
../check.py ./prediction_225_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_225_35.txt ]; then
touch ./prediction_225_35.txt
cat ../1_data/train.txt | ../src/mapper.py 225 35 | sort | ../reducer.py > ./prediction_225_35.txt
echo 'Bands 225, Rows 35:' >> _results.txt
../check.py ./prediction_225_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_225_40.txt ]; then
touch ./prediction_225_40.txt
cat ../1_data/train.txt | ../src/mapper.py 225 40 | sort | ../reducer.py > ./prediction_225_40.txt
echo 'Bands 225, Rows 40:' >> _results.txt
../check.py ./prediction_225_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_225_45.txt ]; then
touch ./prediction_225_45.txt
cat ../1_data/train.txt | ../src/mapper.py 225 45 | sort | ../reducer.py > ./prediction_225_45.txt
echo 'Bands 225, Rows 45:' >> _results.txt
../check.py ./prediction_225_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_225_50.txt ]; then
touch ./prediction_225_50.txt
cat ../1_data/train.txt | ../src/mapper.py 225 50 | sort | ../reducer.py > ./prediction_225_50.txt
echo 'Bands 225, Rows 50:' >> _results.txt
../check.py ./prediction_225_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_225_55.txt ]; then
touch ./prediction_225_55.txt
cat ../1_data/train.txt | ../src/mapper.py 225 55 | sort | ../reducer.py > ./prediction_225_55.txt
echo 'Bands 225, Rows 55:' >> _results.txt
../check.py ./prediction_225_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_225_60.txt ]; then
touch ./prediction_225_60.txt
cat ../1_data/train.txt | ../src/mapper.py 225 60 | sort | ../reducer.py > ./prediction_225_60.txt
echo 'Bands 225, Rows 60:' >> _results.txt
../check.py ./prediction_225_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_225_65.txt ]; then
touch ./prediction_225_65.txt
cat ../1_data/train.txt | ../src/mapper.py 225 65 | sort | ../reducer.py > ./prediction_225_65.txt
echo 'Bands 225, Rows 65:' >> _results.txt
../check.py ./prediction_225_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_225_70.txt ]; then
touch ./prediction_225_70.txt
cat ../1_data/train.txt | ../src/mapper.py 225 70 | sort | ../reducer.py > ./prediction_225_70.txt
echo 'Bands 225, Rows 70:' >> _results.txt
../check.py ./prediction_225_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_230_20.txt ]; then
touch ./prediction_230_20.txt
cat ../1_data/train.txt | ../src/mapper.py 230 20 | sort | ../reducer.py > ./prediction_230_20.txt
echo 'Bands 230, Rows 20:' >> _results.txt
../check.py ./prediction_230_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_230_25.txt ]; then
touch ./prediction_230_25.txt
cat ../1_data/train.txt | ../src/mapper.py 230 25 | sort | ../reducer.py > ./prediction_230_25.txt
echo 'Bands 230, Rows 25:' >> _results.txt
../check.py ./prediction_230_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_230_30.txt ]; then
touch ./prediction_230_30.txt
cat ../1_data/train.txt | ../src/mapper.py 230 30 | sort | ../reducer.py > ./prediction_230_30.txt
echo 'Bands 230, Rows 30:' >> _results.txt
../check.py ./prediction_230_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_230_35.txt ]; then
touch ./prediction_230_35.txt
cat ../1_data/train.txt | ../src/mapper.py 230 35 | sort | ../reducer.py > ./prediction_230_35.txt
echo 'Bands 230, Rows 35:' >> _results.txt
../check.py ./prediction_230_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_230_40.txt ]; then
touch ./prediction_230_40.txt
cat ../1_data/train.txt | ../src/mapper.py 230 40 | sort | ../reducer.py > ./prediction_230_40.txt
echo 'Bands 230, Rows 40:' >> _results.txt
../check.py ./prediction_230_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_230_45.txt ]; then
touch ./prediction_230_45.txt
cat ../1_data/train.txt | ../src/mapper.py 230 45 | sort | ../reducer.py > ./prediction_230_45.txt
echo 'Bands 230, Rows 45:' >> _results.txt
../check.py ./prediction_230_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_230_50.txt ]; then
touch ./prediction_230_50.txt
cat ../1_data/train.txt | ../src/mapper.py 230 50 | sort | ../reducer.py > ./prediction_230_50.txt
echo 'Bands 230, Rows 50:' >> _results.txt
../check.py ./prediction_230_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_230_55.txt ]; then
touch ./prediction_230_55.txt
cat ../1_data/train.txt | ../src/mapper.py 230 55 | sort | ../reducer.py > ./prediction_230_55.txt
echo 'Bands 230, Rows 55:' >> _results.txt
../check.py ./prediction_230_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_230_60.txt ]; then
touch ./prediction_230_60.txt
cat ../1_data/train.txt | ../src/mapper.py 230 60 | sort | ../reducer.py > ./prediction_230_60.txt
echo 'Bands 230, Rows 60:' >> _results.txt
../check.py ./prediction_230_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_230_65.txt ]; then
touch ./prediction_230_65.txt
cat ../1_data/train.txt | ../src/mapper.py 230 65 | sort | ../reducer.py > ./prediction_230_65.txt
echo 'Bands 230, Rows 65:' >> _results.txt
../check.py ./prediction_230_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_230_70.txt ]; then
touch ./prediction_230_70.txt
cat ../1_data/train.txt | ../src/mapper.py 230 70 | sort | ../reducer.py > ./prediction_230_70.txt
echo 'Bands 230, Rows 70:' >> _results.txt
../check.py ./prediction_230_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_235_20.txt ]; then
touch ./prediction_235_20.txt
cat ../1_data/train.txt | ../src/mapper.py 235 20 | sort | ../reducer.py > ./prediction_235_20.txt
echo 'Bands 235, Rows 20:' >> _results.txt
../check.py ./prediction_235_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_235_25.txt ]; then
touch ./prediction_235_25.txt
cat ../1_data/train.txt | ../src/mapper.py 235 25 | sort | ../reducer.py > ./prediction_235_25.txt
echo 'Bands 235, Rows 25:' >> _results.txt
../check.py ./prediction_235_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_235_30.txt ]; then
touch ./prediction_235_30.txt
cat ../1_data/train.txt | ../src/mapper.py 235 30 | sort | ../reducer.py > ./prediction_235_30.txt
echo 'Bands 235, Rows 30:' >> _results.txt
../check.py ./prediction_235_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_235_35.txt ]; then
touch ./prediction_235_35.txt
cat ../1_data/train.txt | ../src/mapper.py 235 35 | sort | ../reducer.py > ./prediction_235_35.txt
echo 'Bands 235, Rows 35:' >> _results.txt
../check.py ./prediction_235_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_235_40.txt ]; then
touch ./prediction_235_40.txt
cat ../1_data/train.txt | ../src/mapper.py 235 40 | sort | ../reducer.py > ./prediction_235_40.txt
echo 'Bands 235, Rows 40:' >> _results.txt
../check.py ./prediction_235_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_235_45.txt ]; then
touch ./prediction_235_45.txt
cat ../1_data/train.txt | ../src/mapper.py 235 45 | sort | ../reducer.py > ./prediction_235_45.txt
echo 'Bands 235, Rows 45:' >> _results.txt
../check.py ./prediction_235_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_235_50.txt ]; then
touch ./prediction_235_50.txt
cat ../1_data/train.txt | ../src/mapper.py 235 50 | sort | ../reducer.py > ./prediction_235_50.txt
echo 'Bands 235, Rows 50:' >> _results.txt
../check.py ./prediction_235_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_235_55.txt ]; then
touch ./prediction_235_55.txt
cat ../1_data/train.txt | ../src/mapper.py 235 55 | sort | ../reducer.py > ./prediction_235_55.txt
echo 'Bands 235, Rows 55:' >> _results.txt
../check.py ./prediction_235_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_235_60.txt ]; then
touch ./prediction_235_60.txt
cat ../1_data/train.txt | ../src/mapper.py 235 60 | sort | ../reducer.py > ./prediction_235_60.txt
echo 'Bands 235, Rows 60:' >> _results.txt
../check.py ./prediction_235_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_235_65.txt ]; then
touch ./prediction_235_65.txt
cat ../1_data/train.txt | ../src/mapper.py 235 65 | sort | ../reducer.py > ./prediction_235_65.txt
echo 'Bands 235, Rows 65:' >> _results.txt
../check.py ./prediction_235_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_235_70.txt ]; then
touch ./prediction_235_70.txt
cat ../1_data/train.txt | ../src/mapper.py 235 70 | sort | ../reducer.py > ./prediction_235_70.txt
echo 'Bands 235, Rows 70:' >> _results.txt
../check.py ./prediction_235_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_240_20.txt ]; then
touch ./prediction_240_20.txt
cat ../1_data/train.txt | ../src/mapper.py 240 20 | sort | ../reducer.py > ./prediction_240_20.txt
echo 'Bands 240, Rows 20:' >> _results.txt
../check.py ./prediction_240_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_240_25.txt ]; then
touch ./prediction_240_25.txt
cat ../1_data/train.txt | ../src/mapper.py 240 25 | sort | ../reducer.py > ./prediction_240_25.txt
echo 'Bands 240, Rows 25:' >> _results.txt
../check.py ./prediction_240_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_240_30.txt ]; then
touch ./prediction_240_30.txt
cat ../1_data/train.txt | ../src/mapper.py 240 30 | sort | ../reducer.py > ./prediction_240_30.txt
echo 'Bands 240, Rows 30:' >> _results.txt
../check.py ./prediction_240_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_240_35.txt ]; then
touch ./prediction_240_35.txt
cat ../1_data/train.txt | ../src/mapper.py 240 35 | sort | ../reducer.py > ./prediction_240_35.txt
echo 'Bands 240, Rows 35:' >> _results.txt
../check.py ./prediction_240_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_240_40.txt ]; then
touch ./prediction_240_40.txt
cat ../1_data/train.txt | ../src/mapper.py 240 40 | sort | ../reducer.py > ./prediction_240_40.txt
echo 'Bands 240, Rows 40:' >> _results.txt
../check.py ./prediction_240_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_240_45.txt ]; then
touch ./prediction_240_45.txt
cat ../1_data/train.txt | ../src/mapper.py 240 45 | sort | ../reducer.py > ./prediction_240_45.txt
echo 'Bands 240, Rows 45:' >> _results.txt
../check.py ./prediction_240_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_240_50.txt ]; then
touch ./prediction_240_50.txt
cat ../1_data/train.txt | ../src/mapper.py 240 50 | sort | ../reducer.py > ./prediction_240_50.txt
echo 'Bands 240, Rows 50:' >> _results.txt
../check.py ./prediction_240_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_240_55.txt ]; then
touch ./prediction_240_55.txt
cat ../1_data/train.txt | ../src/mapper.py 240 55 | sort | ../reducer.py > ./prediction_240_55.txt
echo 'Bands 240, Rows 55:' >> _results.txt
../check.py ./prediction_240_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_240_60.txt ]; then
touch ./prediction_240_60.txt
cat ../1_data/train.txt | ../src/mapper.py 240 60 | sort | ../reducer.py > ./prediction_240_60.txt
echo 'Bands 240, Rows 60:' >> _results.txt
../check.py ./prediction_240_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_240_65.txt ]; then
touch ./prediction_240_65.txt
cat ../1_data/train.txt | ../src/mapper.py 240 65 | sort | ../reducer.py > ./prediction_240_65.txt
echo 'Bands 240, Rows 65:' >> _results.txt
../check.py ./prediction_240_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_240_70.txt ]; then
touch ./prediction_240_70.txt
cat ../1_data/train.txt | ../src/mapper.py 240 70 | sort | ../reducer.py > ./prediction_240_70.txt
echo 'Bands 240, Rows 70:' >> _results.txt
../check.py ./prediction_240_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_245_20.txt ]; then
touch ./prediction_245_20.txt
cat ../1_data/train.txt | ../src/mapper.py 245 20 | sort | ../reducer.py > ./prediction_245_20.txt
echo 'Bands 245, Rows 20:' >> _results.txt
../check.py ./prediction_245_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_245_25.txt ]; then
touch ./prediction_245_25.txt
cat ../1_data/train.txt | ../src/mapper.py 245 25 | sort | ../reducer.py > ./prediction_245_25.txt
echo 'Bands 245, Rows 25:' >> _results.txt
../check.py ./prediction_245_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_245_30.txt ]; then
touch ./prediction_245_30.txt
cat ../1_data/train.txt | ../src/mapper.py 245 30 | sort | ../reducer.py > ./prediction_245_30.txt
echo 'Bands 245, Rows 30:' >> _results.txt
../check.py ./prediction_245_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_245_35.txt ]; then
touch ./prediction_245_35.txt
cat ../1_data/train.txt | ../src/mapper.py 245 35 | sort | ../reducer.py > ./prediction_245_35.txt
echo 'Bands 245, Rows 35:' >> _results.txt
../check.py ./prediction_245_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_245_40.txt ]; then
touch ./prediction_245_40.txt
cat ../1_data/train.txt | ../src/mapper.py 245 40 | sort | ../reducer.py > ./prediction_245_40.txt
echo 'Bands 245, Rows 40:' >> _results.txt
../check.py ./prediction_245_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_245_45.txt ]; then
touch ./prediction_245_45.txt
cat ../1_data/train.txt | ../src/mapper.py 245 45 | sort | ../reducer.py > ./prediction_245_45.txt
echo 'Bands 245, Rows 45:' >> _results.txt
../check.py ./prediction_245_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_245_50.txt ]; then
touch ./prediction_245_50.txt
cat ../1_data/train.txt | ../src/mapper.py 245 50 | sort | ../reducer.py > ./prediction_245_50.txt
echo 'Bands 245, Rows 50:' >> _results.txt
../check.py ./prediction_245_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_245_55.txt ]; then
touch ./prediction_245_55.txt
cat ../1_data/train.txt | ../src/mapper.py 245 55 | sort | ../reducer.py > ./prediction_245_55.txt
echo 'Bands 245, Rows 55:' >> _results.txt
../check.py ./prediction_245_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_245_60.txt ]; then
touch ./prediction_245_60.txt
cat ../1_data/train.txt | ../src/mapper.py 245 60 | sort | ../reducer.py > ./prediction_245_60.txt
echo 'Bands 245, Rows 60:' >> _results.txt
../check.py ./prediction_245_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_245_65.txt ]; then
touch ./prediction_245_65.txt
cat ../1_data/train.txt | ../src/mapper.py 245 65 | sort | ../reducer.py > ./prediction_245_65.txt
echo 'Bands 245, Rows 65:' >> _results.txt
../check.py ./prediction_245_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_245_70.txt ]; then
touch ./prediction_245_70.txt
cat ../1_data/train.txt | ../src/mapper.py 245 70 | sort | ../reducer.py > ./prediction_245_70.txt
echo 'Bands 245, Rows 70:' >> _results.txt
../check.py ./prediction_245_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_250_20.txt ]; then
touch ./prediction_250_20.txt
cat ../1_data/train.txt | ../src/mapper.py 250 20 | sort | ../reducer.py > ./prediction_250_20.txt
echo 'Bands 250, Rows 20:' >> _results.txt
../check.py ./prediction_250_20.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_250_25.txt ]; then
touch ./prediction_250_25.txt
cat ../1_data/train.txt | ../src/mapper.py 250 25 | sort | ../reducer.py > ./prediction_250_25.txt
echo 'Bands 250, Rows 25:' >> _results.txt
../check.py ./prediction_250_25.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_250_30.txt ]; then
touch ./prediction_250_30.txt
cat ../1_data/train.txt | ../src/mapper.py 250 30 | sort | ../reducer.py > ./prediction_250_30.txt
echo 'Bands 250, Rows 30:' >> _results.txt
../check.py ./prediction_250_30.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_250_35.txt ]; then
touch ./prediction_250_35.txt
cat ../1_data/train.txt | ../src/mapper.py 250 35 | sort | ../reducer.py > ./prediction_250_35.txt
echo 'Bands 250, Rows 35:' >> _results.txt
../check.py ./prediction_250_35.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_250_40.txt ]; then
touch ./prediction_250_40.txt
cat ../1_data/train.txt | ../src/mapper.py 250 40 | sort | ../reducer.py > ./prediction_250_40.txt
echo 'Bands 250, Rows 40:' >> _results.txt
../check.py ./prediction_250_40.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_250_45.txt ]; then
touch ./prediction_250_45.txt
cat ../1_data/train.txt | ../src/mapper.py 250 45 | sort | ../reducer.py > ./prediction_250_45.txt
echo 'Bands 250, Rows 45:' >> _results.txt
../check.py ./prediction_250_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_250_50.txt ]; then
touch ./prediction_250_50.txt
cat ../1_data/train.txt | ../src/mapper.py 250 50 | sort | ../reducer.py > ./prediction_250_50.txt
echo 'Bands 250, Rows 50:' >> _results.txt
../check.py ./prediction_250_50.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_250_55.txt ]; then
touch ./prediction_250_55.txt
cat ../1_data/train.txt | ../src/mapper.py 250 55 | sort | ../reducer.py > ./prediction_250_55.txt
echo 'Bands 250, Rows 55:' >> _results.txt
../check.py ./prediction_250_55.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_250_60.txt ]; then
touch ./prediction_250_60.txt
cat ../1_data/train.txt | ../src/mapper.py 250 60 | sort | ../reducer.py > ./prediction_250_60.txt
echo 'Bands 250, Rows 60:' >> _results.txt
../check.py ./prediction_250_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_250_65.txt ]; then
touch ./prediction_250_65.txt
cat ../1_data/train.txt | ../src/mapper.py 250 65 | sort | ../reducer.py > ./prediction_250_65.txt
echo 'Bands 250, Rows 65:' >> _results.txt
../check.py ./prediction_250_65.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_250_70.txt ]; then
touch ./prediction_250_70.txt
cat ../1_data/train.txt | ../src/mapper.py 250 70 | sort | ../reducer.py > ./prediction_250_70.txt
echo 'Bands 250, Rows 70:' >> _results.txt
../check.py ./prediction_250_70.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
