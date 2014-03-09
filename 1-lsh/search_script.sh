#!/bin/bash
mkdir search
cd search
if [ ! -f ./prediction_256_42.txt ]; then
touch ./prediction_256_42.txt
cat ../1_data/train.txt | ../src/mapper.py 256 42 | sort | ../reducer.py > ./prediction_256_42.txt
echo 'Bands 256, Rows 42:' >> _results.txt
../check.py ./prediction_256_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_256_45.txt ]; then
touch ./prediction_256_45.txt
cat ../1_data/train.txt | ../src/mapper.py 256 45 | sort | ../reducer.py > ./prediction_256_45.txt
echo 'Bands 256, Rows 45:' >> _results.txt
../check.py ./prediction_256_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_256_48.txt ]; then
touch ./prediction_256_48.txt
cat ../1_data/train.txt | ../src/mapper.py 256 48 | sort | ../reducer.py > ./prediction_256_48.txt
echo 'Bands 256, Rows 48:' >> _results.txt
../check.py ./prediction_256_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_256_51.txt ]; then
touch ./prediction_256_51.txt
cat ../1_data/train.txt | ../src/mapper.py 256 51 | sort | ../reducer.py > ./prediction_256_51.txt
echo 'Bands 256, Rows 51:' >> _results.txt
../check.py ./prediction_256_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_256_54.txt ]; then
touch ./prediction_256_54.txt
cat ../1_data/train.txt | ../src/mapper.py 256 54 | sort | ../reducer.py > ./prediction_256_54.txt
echo 'Bands 256, Rows 54:' >> _results.txt
../check.py ./prediction_256_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_256_57.txt ]; then
touch ./prediction_256_57.txt
cat ../1_data/train.txt | ../src/mapper.py 256 57 | sort | ../reducer.py > ./prediction_256_57.txt
echo 'Bands 256, Rows 57:' >> _results.txt
../check.py ./prediction_256_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_256_60.txt ]; then
touch ./prediction_256_60.txt
cat ../1_data/train.txt | ../src/mapper.py 256 60 | sort | ../reducer.py > ./prediction_256_60.txt
echo 'Bands 256, Rows 60:' >> _results.txt
../check.py ./prediction_256_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_256_63.txt ]; then
touch ./prediction_256_63.txt
cat ../1_data/train.txt | ../src/mapper.py 256 63 | sort | ../reducer.py > ./prediction_256_63.txt
echo 'Bands 256, Rows 63:' >> _results.txt
../check.py ./prediction_256_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_256_66.txt ]; then
touch ./prediction_256_66.txt
cat ../1_data/train.txt | ../src/mapper.py 256 66 | sort | ../reducer.py > ./prediction_256_66.txt
echo 'Bands 256, Rows 66:' >> _results.txt
../check.py ./prediction_256_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_256_69.txt ]; then
touch ./prediction_256_69.txt
cat ../1_data/train.txt | ../src/mapper.py 256 69 | sort | ../reducer.py > ./prediction_256_69.txt
echo 'Bands 256, Rows 69:' >> _results.txt
../check.py ./prediction_256_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_255_42.txt ]; then
touch ./prediction_255_42.txt
cat ../1_data/train.txt | ../src/mapper.py 255 42 | sort | ../reducer.py > ./prediction_255_42.txt
echo 'Bands 255, Rows 42:' >> _results.txt
../check.py ./prediction_255_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_255_45.txt ]; then
touch ./prediction_255_45.txt
cat ../1_data/train.txt | ../src/mapper.py 255 45 | sort | ../reducer.py > ./prediction_255_45.txt
echo 'Bands 255, Rows 45:' >> _results.txt
../check.py ./prediction_255_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_255_48.txt ]; then
touch ./prediction_255_48.txt
cat ../1_data/train.txt | ../src/mapper.py 255 48 | sort | ../reducer.py > ./prediction_255_48.txt
echo 'Bands 255, Rows 48:' >> _results.txt
../check.py ./prediction_255_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_255_51.txt ]; then
touch ./prediction_255_51.txt
cat ../1_data/train.txt | ../src/mapper.py 255 51 | sort | ../reducer.py > ./prediction_255_51.txt
echo 'Bands 255, Rows 51:' >> _results.txt
../check.py ./prediction_255_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_255_54.txt ]; then
touch ./prediction_255_54.txt
cat ../1_data/train.txt | ../src/mapper.py 255 54 | sort | ../reducer.py > ./prediction_255_54.txt
echo 'Bands 255, Rows 54:' >> _results.txt
../check.py ./prediction_255_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_255_57.txt ]; then
touch ./prediction_255_57.txt
cat ../1_data/train.txt | ../src/mapper.py 255 57 | sort | ../reducer.py > ./prediction_255_57.txt
echo 'Bands 255, Rows 57:' >> _results.txt
../check.py ./prediction_255_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_255_60.txt ]; then
touch ./prediction_255_60.txt
cat ../1_data/train.txt | ../src/mapper.py 255 60 | sort | ../reducer.py > ./prediction_255_60.txt
echo 'Bands 255, Rows 60:' >> _results.txt
../check.py ./prediction_255_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_255_63.txt ]; then
touch ./prediction_255_63.txt
cat ../1_data/train.txt | ../src/mapper.py 255 63 | sort | ../reducer.py > ./prediction_255_63.txt
echo 'Bands 255, Rows 63:' >> _results.txt
../check.py ./prediction_255_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_255_66.txt ]; then
touch ./prediction_255_66.txt
cat ../1_data/train.txt | ../src/mapper.py 255 66 | sort | ../reducer.py > ./prediction_255_66.txt
echo 'Bands 255, Rows 66:' >> _results.txt
../check.py ./prediction_255_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_255_69.txt ]; then
touch ./prediction_255_69.txt
cat ../1_data/train.txt | ../src/mapper.py 255 69 | sort | ../reducer.py > ./prediction_255_69.txt
echo 'Bands 255, Rows 69:' >> _results.txt
../check.py ./prediction_255_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_254_42.txt ]; then
touch ./prediction_254_42.txt
cat ../1_data/train.txt | ../src/mapper.py 254 42 | sort | ../reducer.py > ./prediction_254_42.txt
echo 'Bands 254, Rows 42:' >> _results.txt
../check.py ./prediction_254_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_254_45.txt ]; then
touch ./prediction_254_45.txt
cat ../1_data/train.txt | ../src/mapper.py 254 45 | sort | ../reducer.py > ./prediction_254_45.txt
echo 'Bands 254, Rows 45:' >> _results.txt
../check.py ./prediction_254_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_254_48.txt ]; then
touch ./prediction_254_48.txt
cat ../1_data/train.txt | ../src/mapper.py 254 48 | sort | ../reducer.py > ./prediction_254_48.txt
echo 'Bands 254, Rows 48:' >> _results.txt
../check.py ./prediction_254_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_254_51.txt ]; then
touch ./prediction_254_51.txt
cat ../1_data/train.txt | ../src/mapper.py 254 51 | sort | ../reducer.py > ./prediction_254_51.txt
echo 'Bands 254, Rows 51:' >> _results.txt
../check.py ./prediction_254_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_254_54.txt ]; then
touch ./prediction_254_54.txt
cat ../1_data/train.txt | ../src/mapper.py 254 54 | sort | ../reducer.py > ./prediction_254_54.txt
echo 'Bands 254, Rows 54:' >> _results.txt
../check.py ./prediction_254_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_254_57.txt ]; then
touch ./prediction_254_57.txt
cat ../1_data/train.txt | ../src/mapper.py 254 57 | sort | ../reducer.py > ./prediction_254_57.txt
echo 'Bands 254, Rows 57:' >> _results.txt
../check.py ./prediction_254_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_254_60.txt ]; then
touch ./prediction_254_60.txt
cat ../1_data/train.txt | ../src/mapper.py 254 60 | sort | ../reducer.py > ./prediction_254_60.txt
echo 'Bands 254, Rows 60:' >> _results.txt
../check.py ./prediction_254_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_254_63.txt ]; then
touch ./prediction_254_63.txt
cat ../1_data/train.txt | ../src/mapper.py 254 63 | sort | ../reducer.py > ./prediction_254_63.txt
echo 'Bands 254, Rows 63:' >> _results.txt
../check.py ./prediction_254_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_254_66.txt ]; then
touch ./prediction_254_66.txt
cat ../1_data/train.txt | ../src/mapper.py 254 66 | sort | ../reducer.py > ./prediction_254_66.txt
echo 'Bands 254, Rows 66:' >> _results.txt
../check.py ./prediction_254_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_254_69.txt ]; then
touch ./prediction_254_69.txt
cat ../1_data/train.txt | ../src/mapper.py 254 69 | sort | ../reducer.py > ./prediction_254_69.txt
echo 'Bands 254, Rows 69:' >> _results.txt
../check.py ./prediction_254_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_253_42.txt ]; then
touch ./prediction_253_42.txt
cat ../1_data/train.txt | ../src/mapper.py 253 42 | sort | ../reducer.py > ./prediction_253_42.txt
echo 'Bands 253, Rows 42:' >> _results.txt
../check.py ./prediction_253_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_253_45.txt ]; then
touch ./prediction_253_45.txt
cat ../1_data/train.txt | ../src/mapper.py 253 45 | sort | ../reducer.py > ./prediction_253_45.txt
echo 'Bands 253, Rows 45:' >> _results.txt
../check.py ./prediction_253_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_253_48.txt ]; then
touch ./prediction_253_48.txt
cat ../1_data/train.txt | ../src/mapper.py 253 48 | sort | ../reducer.py > ./prediction_253_48.txt
echo 'Bands 253, Rows 48:' >> _results.txt
../check.py ./prediction_253_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_253_51.txt ]; then
touch ./prediction_253_51.txt
cat ../1_data/train.txt | ../src/mapper.py 253 51 | sort | ../reducer.py > ./prediction_253_51.txt
echo 'Bands 253, Rows 51:' >> _results.txt
../check.py ./prediction_253_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_253_54.txt ]; then
touch ./prediction_253_54.txt
cat ../1_data/train.txt | ../src/mapper.py 253 54 | sort | ../reducer.py > ./prediction_253_54.txt
echo 'Bands 253, Rows 54:' >> _results.txt
../check.py ./prediction_253_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_253_57.txt ]; then
touch ./prediction_253_57.txt
cat ../1_data/train.txt | ../src/mapper.py 253 57 | sort | ../reducer.py > ./prediction_253_57.txt
echo 'Bands 253, Rows 57:' >> _results.txt
../check.py ./prediction_253_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_253_60.txt ]; then
touch ./prediction_253_60.txt
cat ../1_data/train.txt | ../src/mapper.py 253 60 | sort | ../reducer.py > ./prediction_253_60.txt
echo 'Bands 253, Rows 60:' >> _results.txt
../check.py ./prediction_253_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_253_63.txt ]; then
touch ./prediction_253_63.txt
cat ../1_data/train.txt | ../src/mapper.py 253 63 | sort | ../reducer.py > ./prediction_253_63.txt
echo 'Bands 253, Rows 63:' >> _results.txt
../check.py ./prediction_253_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_253_66.txt ]; then
touch ./prediction_253_66.txt
cat ../1_data/train.txt | ../src/mapper.py 253 66 | sort | ../reducer.py > ./prediction_253_66.txt
echo 'Bands 253, Rows 66:' >> _results.txt
../check.py ./prediction_253_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_253_69.txt ]; then
touch ./prediction_253_69.txt
cat ../1_data/train.txt | ../src/mapper.py 253 69 | sort | ../reducer.py > ./prediction_253_69.txt
echo 'Bands 253, Rows 69:' >> _results.txt
../check.py ./prediction_253_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_35_42.txt ]; then
touch ./prediction_35_42.txt
cat ../1_data/train.txt | ../src/mapper.py 35 42 | sort | ../reducer.py > ./prediction_35_42.txt
echo 'Bands 35, Rows 42:' >> _results.txt
../check.py ./prediction_35_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_35_45.txt ]; then
touch ./prediction_35_45.txt
cat ../1_data/train.txt | ../src/mapper.py 35 45 | sort | ../reducer.py > ./prediction_35_45.txt
echo 'Bands 35, Rows 45:' >> _results.txt
../check.py ./prediction_35_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_35_48.txt ]; then
touch ./prediction_35_48.txt
cat ../1_data/train.txt | ../src/mapper.py 35 48 | sort | ../reducer.py > ./prediction_35_48.txt
echo 'Bands 35, Rows 48:' >> _results.txt
../check.py ./prediction_35_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_35_51.txt ]; then
touch ./prediction_35_51.txt
cat ../1_data/train.txt | ../src/mapper.py 35 51 | sort | ../reducer.py > ./prediction_35_51.txt
echo 'Bands 35, Rows 51:' >> _results.txt
../check.py ./prediction_35_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_35_54.txt ]; then
touch ./prediction_35_54.txt
cat ../1_data/train.txt | ../src/mapper.py 35 54 | sort | ../reducer.py > ./prediction_35_54.txt
echo 'Bands 35, Rows 54:' >> _results.txt
../check.py ./prediction_35_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_35_57.txt ]; then
touch ./prediction_35_57.txt
cat ../1_data/train.txt | ../src/mapper.py 35 57 | sort | ../reducer.py > ./prediction_35_57.txt
echo 'Bands 35, Rows 57:' >> _results.txt
../check.py ./prediction_35_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_35_60.txt ]; then
touch ./prediction_35_60.txt
cat ../1_data/train.txt | ../src/mapper.py 35 60 | sort | ../reducer.py > ./prediction_35_60.txt
echo 'Bands 35, Rows 60:' >> _results.txt
../check.py ./prediction_35_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_35_63.txt ]; then
touch ./prediction_35_63.txt
cat ../1_data/train.txt | ../src/mapper.py 35 63 | sort | ../reducer.py > ./prediction_35_63.txt
echo 'Bands 35, Rows 63:' >> _results.txt
../check.py ./prediction_35_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_35_66.txt ]; then
touch ./prediction_35_66.txt
cat ../1_data/train.txt | ../src/mapper.py 35 66 | sort | ../reducer.py > ./prediction_35_66.txt
echo 'Bands 35, Rows 66:' >> _results.txt
../check.py ./prediction_35_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_35_69.txt ]; then
touch ./prediction_35_69.txt
cat ../1_data/train.txt | ../src/mapper.py 35 69 | sort | ../reducer.py > ./prediction_35_69.txt
echo 'Bands 35, Rows 69:' >> _results.txt
../check.py ./prediction_35_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_40_42.txt ]; then
touch ./prediction_40_42.txt
cat ../1_data/train.txt | ../src/mapper.py 40 42 | sort | ../reducer.py > ./prediction_40_42.txt
echo 'Bands 40, Rows 42:' >> _results.txt
../check.py ./prediction_40_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_40_45.txt ]; then
touch ./prediction_40_45.txt
cat ../1_data/train.txt | ../src/mapper.py 40 45 | sort | ../reducer.py > ./prediction_40_45.txt
echo 'Bands 40, Rows 45:' >> _results.txt
../check.py ./prediction_40_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_40_48.txt ]; then
touch ./prediction_40_48.txt
cat ../1_data/train.txt | ../src/mapper.py 40 48 | sort | ../reducer.py > ./prediction_40_48.txt
echo 'Bands 40, Rows 48:' >> _results.txt
../check.py ./prediction_40_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_40_51.txt ]; then
touch ./prediction_40_51.txt
cat ../1_data/train.txt | ../src/mapper.py 40 51 | sort | ../reducer.py > ./prediction_40_51.txt
echo 'Bands 40, Rows 51:' >> _results.txt
../check.py ./prediction_40_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_40_54.txt ]; then
touch ./prediction_40_54.txt
cat ../1_data/train.txt | ../src/mapper.py 40 54 | sort | ../reducer.py > ./prediction_40_54.txt
echo 'Bands 40, Rows 54:' >> _results.txt
../check.py ./prediction_40_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_40_57.txt ]; then
touch ./prediction_40_57.txt
cat ../1_data/train.txt | ../src/mapper.py 40 57 | sort | ../reducer.py > ./prediction_40_57.txt
echo 'Bands 40, Rows 57:' >> _results.txt
../check.py ./prediction_40_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_40_60.txt ]; then
touch ./prediction_40_60.txt
cat ../1_data/train.txt | ../src/mapper.py 40 60 | sort | ../reducer.py > ./prediction_40_60.txt
echo 'Bands 40, Rows 60:' >> _results.txt
../check.py ./prediction_40_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_40_63.txt ]; then
touch ./prediction_40_63.txt
cat ../1_data/train.txt | ../src/mapper.py 40 63 | sort | ../reducer.py > ./prediction_40_63.txt
echo 'Bands 40, Rows 63:' >> _results.txt
../check.py ./prediction_40_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_40_66.txt ]; then
touch ./prediction_40_66.txt
cat ../1_data/train.txt | ../src/mapper.py 40 66 | sort | ../reducer.py > ./prediction_40_66.txt
echo 'Bands 40, Rows 66:' >> _results.txt
../check.py ./prediction_40_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_40_69.txt ]; then
touch ./prediction_40_69.txt
cat ../1_data/train.txt | ../src/mapper.py 40 69 | sort | ../reducer.py > ./prediction_40_69.txt
echo 'Bands 40, Rows 69:' >> _results.txt
../check.py ./prediction_40_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_45_42.txt ]; then
touch ./prediction_45_42.txt
cat ../1_data/train.txt | ../src/mapper.py 45 42 | sort | ../reducer.py > ./prediction_45_42.txt
echo 'Bands 45, Rows 42:' >> _results.txt
../check.py ./prediction_45_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_45_45.txt ]; then
touch ./prediction_45_45.txt
cat ../1_data/train.txt | ../src/mapper.py 45 45 | sort | ../reducer.py > ./prediction_45_45.txt
echo 'Bands 45, Rows 45:' >> _results.txt
../check.py ./prediction_45_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_45_48.txt ]; then
touch ./prediction_45_48.txt
cat ../1_data/train.txt | ../src/mapper.py 45 48 | sort | ../reducer.py > ./prediction_45_48.txt
echo 'Bands 45, Rows 48:' >> _results.txt
../check.py ./prediction_45_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_45_51.txt ]; then
touch ./prediction_45_51.txt
cat ../1_data/train.txt | ../src/mapper.py 45 51 | sort | ../reducer.py > ./prediction_45_51.txt
echo 'Bands 45, Rows 51:' >> _results.txt
../check.py ./prediction_45_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_45_54.txt ]; then
touch ./prediction_45_54.txt
cat ../1_data/train.txt | ../src/mapper.py 45 54 | sort | ../reducer.py > ./prediction_45_54.txt
echo 'Bands 45, Rows 54:' >> _results.txt
../check.py ./prediction_45_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_45_57.txt ]; then
touch ./prediction_45_57.txt
cat ../1_data/train.txt | ../src/mapper.py 45 57 | sort | ../reducer.py > ./prediction_45_57.txt
echo 'Bands 45, Rows 57:' >> _results.txt
../check.py ./prediction_45_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_45_60.txt ]; then
touch ./prediction_45_60.txt
cat ../1_data/train.txt | ../src/mapper.py 45 60 | sort | ../reducer.py > ./prediction_45_60.txt
echo 'Bands 45, Rows 60:' >> _results.txt
../check.py ./prediction_45_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_45_63.txt ]; then
touch ./prediction_45_63.txt
cat ../1_data/train.txt | ../src/mapper.py 45 63 | sort | ../reducer.py > ./prediction_45_63.txt
echo 'Bands 45, Rows 63:' >> _results.txt
../check.py ./prediction_45_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_45_66.txt ]; then
touch ./prediction_45_66.txt
cat ../1_data/train.txt | ../src/mapper.py 45 66 | sort | ../reducer.py > ./prediction_45_66.txt
echo 'Bands 45, Rows 66:' >> _results.txt
../check.py ./prediction_45_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_45_69.txt ]; then
touch ./prediction_45_69.txt
cat ../1_data/train.txt | ../src/mapper.py 45 69 | sort | ../reducer.py > ./prediction_45_69.txt
echo 'Bands 45, Rows 69:' >> _results.txt
../check.py ./prediction_45_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_50_42.txt ]; then
touch ./prediction_50_42.txt
cat ../1_data/train.txt | ../src/mapper.py 50 42 | sort | ../reducer.py > ./prediction_50_42.txt
echo 'Bands 50, Rows 42:' >> _results.txt
../check.py ./prediction_50_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_50_45.txt ]; then
touch ./prediction_50_45.txt
cat ../1_data/train.txt | ../src/mapper.py 50 45 | sort | ../reducer.py > ./prediction_50_45.txt
echo 'Bands 50, Rows 45:' >> _results.txt
../check.py ./prediction_50_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_50_48.txt ]; then
touch ./prediction_50_48.txt
cat ../1_data/train.txt | ../src/mapper.py 50 48 | sort | ../reducer.py > ./prediction_50_48.txt
echo 'Bands 50, Rows 48:' >> _results.txt
../check.py ./prediction_50_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_50_51.txt ]; then
touch ./prediction_50_51.txt
cat ../1_data/train.txt | ../src/mapper.py 50 51 | sort | ../reducer.py > ./prediction_50_51.txt
echo 'Bands 50, Rows 51:' >> _results.txt
../check.py ./prediction_50_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_50_54.txt ]; then
touch ./prediction_50_54.txt
cat ../1_data/train.txt | ../src/mapper.py 50 54 | sort | ../reducer.py > ./prediction_50_54.txt
echo 'Bands 50, Rows 54:' >> _results.txt
../check.py ./prediction_50_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_50_57.txt ]; then
touch ./prediction_50_57.txt
cat ../1_data/train.txt | ../src/mapper.py 50 57 | sort | ../reducer.py > ./prediction_50_57.txt
echo 'Bands 50, Rows 57:' >> _results.txt
../check.py ./prediction_50_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_50_60.txt ]; then
touch ./prediction_50_60.txt
cat ../1_data/train.txt | ../src/mapper.py 50 60 | sort | ../reducer.py > ./prediction_50_60.txt
echo 'Bands 50, Rows 60:' >> _results.txt
../check.py ./prediction_50_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_50_63.txt ]; then
touch ./prediction_50_63.txt
cat ../1_data/train.txt | ../src/mapper.py 50 63 | sort | ../reducer.py > ./prediction_50_63.txt
echo 'Bands 50, Rows 63:' >> _results.txt
../check.py ./prediction_50_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_50_66.txt ]; then
touch ./prediction_50_66.txt
cat ../1_data/train.txt | ../src/mapper.py 50 66 | sort | ../reducer.py > ./prediction_50_66.txt
echo 'Bands 50, Rows 66:' >> _results.txt
../check.py ./prediction_50_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_50_69.txt ]; then
touch ./prediction_50_69.txt
cat ../1_data/train.txt | ../src/mapper.py 50 69 | sort | ../reducer.py > ./prediction_50_69.txt
echo 'Bands 50, Rows 69:' >> _results.txt
../check.py ./prediction_50_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_55_42.txt ]; then
touch ./prediction_55_42.txt
cat ../1_data/train.txt | ../src/mapper.py 55 42 | sort | ../reducer.py > ./prediction_55_42.txt
echo 'Bands 55, Rows 42:' >> _results.txt
../check.py ./prediction_55_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_55_45.txt ]; then
touch ./prediction_55_45.txt
cat ../1_data/train.txt | ../src/mapper.py 55 45 | sort | ../reducer.py > ./prediction_55_45.txt
echo 'Bands 55, Rows 45:' >> _results.txt
../check.py ./prediction_55_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_55_48.txt ]; then
touch ./prediction_55_48.txt
cat ../1_data/train.txt | ../src/mapper.py 55 48 | sort | ../reducer.py > ./prediction_55_48.txt
echo 'Bands 55, Rows 48:' >> _results.txt
../check.py ./prediction_55_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_55_51.txt ]; then
touch ./prediction_55_51.txt
cat ../1_data/train.txt | ../src/mapper.py 55 51 | sort | ../reducer.py > ./prediction_55_51.txt
echo 'Bands 55, Rows 51:' >> _results.txt
../check.py ./prediction_55_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_55_54.txt ]; then
touch ./prediction_55_54.txt
cat ../1_data/train.txt | ../src/mapper.py 55 54 | sort | ../reducer.py > ./prediction_55_54.txt
echo 'Bands 55, Rows 54:' >> _results.txt
../check.py ./prediction_55_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_55_57.txt ]; then
touch ./prediction_55_57.txt
cat ../1_data/train.txt | ../src/mapper.py 55 57 | sort | ../reducer.py > ./prediction_55_57.txt
echo 'Bands 55, Rows 57:' >> _results.txt
../check.py ./prediction_55_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_55_60.txt ]; then
touch ./prediction_55_60.txt
cat ../1_data/train.txt | ../src/mapper.py 55 60 | sort | ../reducer.py > ./prediction_55_60.txt
echo 'Bands 55, Rows 60:' >> _results.txt
../check.py ./prediction_55_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_55_63.txt ]; then
touch ./prediction_55_63.txt
cat ../1_data/train.txt | ../src/mapper.py 55 63 | sort | ../reducer.py > ./prediction_55_63.txt
echo 'Bands 55, Rows 63:' >> _results.txt
../check.py ./prediction_55_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_55_66.txt ]; then
touch ./prediction_55_66.txt
cat ../1_data/train.txt | ../src/mapper.py 55 66 | sort | ../reducer.py > ./prediction_55_66.txt
echo 'Bands 55, Rows 66:' >> _results.txt
../check.py ./prediction_55_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_55_69.txt ]; then
touch ./prediction_55_69.txt
cat ../1_data/train.txt | ../src/mapper.py 55 69 | sort | ../reducer.py > ./prediction_55_69.txt
echo 'Bands 55, Rows 69:' >> _results.txt
../check.py ./prediction_55_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_60_42.txt ]; then
touch ./prediction_60_42.txt
cat ../1_data/train.txt | ../src/mapper.py 60 42 | sort | ../reducer.py > ./prediction_60_42.txt
echo 'Bands 60, Rows 42:' >> _results.txt
../check.py ./prediction_60_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_60_45.txt ]; then
touch ./prediction_60_45.txt
cat ../1_data/train.txt | ../src/mapper.py 60 45 | sort | ../reducer.py > ./prediction_60_45.txt
echo 'Bands 60, Rows 45:' >> _results.txt
../check.py ./prediction_60_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_60_48.txt ]; then
touch ./prediction_60_48.txt
cat ../1_data/train.txt | ../src/mapper.py 60 48 | sort | ../reducer.py > ./prediction_60_48.txt
echo 'Bands 60, Rows 48:' >> _results.txt
../check.py ./prediction_60_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_60_51.txt ]; then
touch ./prediction_60_51.txt
cat ../1_data/train.txt | ../src/mapper.py 60 51 | sort | ../reducer.py > ./prediction_60_51.txt
echo 'Bands 60, Rows 51:' >> _results.txt
../check.py ./prediction_60_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_60_54.txt ]; then
touch ./prediction_60_54.txt
cat ../1_data/train.txt | ../src/mapper.py 60 54 | sort | ../reducer.py > ./prediction_60_54.txt
echo 'Bands 60, Rows 54:' >> _results.txt
../check.py ./prediction_60_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_60_57.txt ]; then
touch ./prediction_60_57.txt
cat ../1_data/train.txt | ../src/mapper.py 60 57 | sort | ../reducer.py > ./prediction_60_57.txt
echo 'Bands 60, Rows 57:' >> _results.txt
../check.py ./prediction_60_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_60_60.txt ]; then
touch ./prediction_60_60.txt
cat ../1_data/train.txt | ../src/mapper.py 60 60 | sort | ../reducer.py > ./prediction_60_60.txt
echo 'Bands 60, Rows 60:' >> _results.txt
../check.py ./prediction_60_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_60_63.txt ]; then
touch ./prediction_60_63.txt
cat ../1_data/train.txt | ../src/mapper.py 60 63 | sort | ../reducer.py > ./prediction_60_63.txt
echo 'Bands 60, Rows 63:' >> _results.txt
../check.py ./prediction_60_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_60_66.txt ]; then
touch ./prediction_60_66.txt
cat ../1_data/train.txt | ../src/mapper.py 60 66 | sort | ../reducer.py > ./prediction_60_66.txt
echo 'Bands 60, Rows 66:' >> _results.txt
../check.py ./prediction_60_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_60_69.txt ]; then
touch ./prediction_60_69.txt
cat ../1_data/train.txt | ../src/mapper.py 60 69 | sort | ../reducer.py > ./prediction_60_69.txt
echo 'Bands 60, Rows 69:' >> _results.txt
../check.py ./prediction_60_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_65_42.txt ]; then
touch ./prediction_65_42.txt
cat ../1_data/train.txt | ../src/mapper.py 65 42 | sort | ../reducer.py > ./prediction_65_42.txt
echo 'Bands 65, Rows 42:' >> _results.txt
../check.py ./prediction_65_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_65_45.txt ]; then
touch ./prediction_65_45.txt
cat ../1_data/train.txt | ../src/mapper.py 65 45 | sort | ../reducer.py > ./prediction_65_45.txt
echo 'Bands 65, Rows 45:' >> _results.txt
../check.py ./prediction_65_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_65_48.txt ]; then
touch ./prediction_65_48.txt
cat ../1_data/train.txt | ../src/mapper.py 65 48 | sort | ../reducer.py > ./prediction_65_48.txt
echo 'Bands 65, Rows 48:' >> _results.txt
../check.py ./prediction_65_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_65_51.txt ]; then
touch ./prediction_65_51.txt
cat ../1_data/train.txt | ../src/mapper.py 65 51 | sort | ../reducer.py > ./prediction_65_51.txt
echo 'Bands 65, Rows 51:' >> _results.txt
../check.py ./prediction_65_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_65_54.txt ]; then
touch ./prediction_65_54.txt
cat ../1_data/train.txt | ../src/mapper.py 65 54 | sort | ../reducer.py > ./prediction_65_54.txt
echo 'Bands 65, Rows 54:' >> _results.txt
../check.py ./prediction_65_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_65_57.txt ]; then
touch ./prediction_65_57.txt
cat ../1_data/train.txt | ../src/mapper.py 65 57 | sort | ../reducer.py > ./prediction_65_57.txt
echo 'Bands 65, Rows 57:' >> _results.txt
../check.py ./prediction_65_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_65_60.txt ]; then
touch ./prediction_65_60.txt
cat ../1_data/train.txt | ../src/mapper.py 65 60 | sort | ../reducer.py > ./prediction_65_60.txt
echo 'Bands 65, Rows 60:' >> _results.txt
../check.py ./prediction_65_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_65_63.txt ]; then
touch ./prediction_65_63.txt
cat ../1_data/train.txt | ../src/mapper.py 65 63 | sort | ../reducer.py > ./prediction_65_63.txt
echo 'Bands 65, Rows 63:' >> _results.txt
../check.py ./prediction_65_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_65_66.txt ]; then
touch ./prediction_65_66.txt
cat ../1_data/train.txt | ../src/mapper.py 65 66 | sort | ../reducer.py > ./prediction_65_66.txt
echo 'Bands 65, Rows 66:' >> _results.txt
../check.py ./prediction_65_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_65_69.txt ]; then
touch ./prediction_65_69.txt
cat ../1_data/train.txt | ../src/mapper.py 65 69 | sort | ../reducer.py > ./prediction_65_69.txt
echo 'Bands 65, Rows 69:' >> _results.txt
../check.py ./prediction_65_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_70_42.txt ]; then
touch ./prediction_70_42.txt
cat ../1_data/train.txt | ../src/mapper.py 70 42 | sort | ../reducer.py > ./prediction_70_42.txt
echo 'Bands 70, Rows 42:' >> _results.txt
../check.py ./prediction_70_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_70_45.txt ]; then
touch ./prediction_70_45.txt
cat ../1_data/train.txt | ../src/mapper.py 70 45 | sort | ../reducer.py > ./prediction_70_45.txt
echo 'Bands 70, Rows 45:' >> _results.txt
../check.py ./prediction_70_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_70_48.txt ]; then
touch ./prediction_70_48.txt
cat ../1_data/train.txt | ../src/mapper.py 70 48 | sort | ../reducer.py > ./prediction_70_48.txt
echo 'Bands 70, Rows 48:' >> _results.txt
../check.py ./prediction_70_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_70_51.txt ]; then
touch ./prediction_70_51.txt
cat ../1_data/train.txt | ../src/mapper.py 70 51 | sort | ../reducer.py > ./prediction_70_51.txt
echo 'Bands 70, Rows 51:' >> _results.txt
../check.py ./prediction_70_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_70_54.txt ]; then
touch ./prediction_70_54.txt
cat ../1_data/train.txt | ../src/mapper.py 70 54 | sort | ../reducer.py > ./prediction_70_54.txt
echo 'Bands 70, Rows 54:' >> _results.txt
../check.py ./prediction_70_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_70_57.txt ]; then
touch ./prediction_70_57.txt
cat ../1_data/train.txt | ../src/mapper.py 70 57 | sort | ../reducer.py > ./prediction_70_57.txt
echo 'Bands 70, Rows 57:' >> _results.txt
../check.py ./prediction_70_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_70_60.txt ]; then
touch ./prediction_70_60.txt
cat ../1_data/train.txt | ../src/mapper.py 70 60 | sort | ../reducer.py > ./prediction_70_60.txt
echo 'Bands 70, Rows 60:' >> _results.txt
../check.py ./prediction_70_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_70_63.txt ]; then
touch ./prediction_70_63.txt
cat ../1_data/train.txt | ../src/mapper.py 70 63 | sort | ../reducer.py > ./prediction_70_63.txt
echo 'Bands 70, Rows 63:' >> _results.txt
../check.py ./prediction_70_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_70_66.txt ]; then
touch ./prediction_70_66.txt
cat ../1_data/train.txt | ../src/mapper.py 70 66 | sort | ../reducer.py > ./prediction_70_66.txt
echo 'Bands 70, Rows 66:' >> _results.txt
../check.py ./prediction_70_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_70_69.txt ]; then
touch ./prediction_70_69.txt
cat ../1_data/train.txt | ../src/mapper.py 70 69 | sort | ../reducer.py > ./prediction_70_69.txt
echo 'Bands 70, Rows 69:' >> _results.txt
../check.py ./prediction_70_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_75_42.txt ]; then
touch ./prediction_75_42.txt
cat ../1_data/train.txt | ../src/mapper.py 75 42 | sort | ../reducer.py > ./prediction_75_42.txt
echo 'Bands 75, Rows 42:' >> _results.txt
../check.py ./prediction_75_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_75_45.txt ]; then
touch ./prediction_75_45.txt
cat ../1_data/train.txt | ../src/mapper.py 75 45 | sort | ../reducer.py > ./prediction_75_45.txt
echo 'Bands 75, Rows 45:' >> _results.txt
../check.py ./prediction_75_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_75_48.txt ]; then
touch ./prediction_75_48.txt
cat ../1_data/train.txt | ../src/mapper.py 75 48 | sort | ../reducer.py > ./prediction_75_48.txt
echo 'Bands 75, Rows 48:' >> _results.txt
../check.py ./prediction_75_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_75_51.txt ]; then
touch ./prediction_75_51.txt
cat ../1_data/train.txt | ../src/mapper.py 75 51 | sort | ../reducer.py > ./prediction_75_51.txt
echo 'Bands 75, Rows 51:' >> _results.txt
../check.py ./prediction_75_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_75_54.txt ]; then
touch ./prediction_75_54.txt
cat ../1_data/train.txt | ../src/mapper.py 75 54 | sort | ../reducer.py > ./prediction_75_54.txt
echo 'Bands 75, Rows 54:' >> _results.txt
../check.py ./prediction_75_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_75_57.txt ]; then
touch ./prediction_75_57.txt
cat ../1_data/train.txt | ../src/mapper.py 75 57 | sort | ../reducer.py > ./prediction_75_57.txt
echo 'Bands 75, Rows 57:' >> _results.txt
../check.py ./prediction_75_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_75_60.txt ]; then
touch ./prediction_75_60.txt
cat ../1_data/train.txt | ../src/mapper.py 75 60 | sort | ../reducer.py > ./prediction_75_60.txt
echo 'Bands 75, Rows 60:' >> _results.txt
../check.py ./prediction_75_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_75_63.txt ]; then
touch ./prediction_75_63.txt
cat ../1_data/train.txt | ../src/mapper.py 75 63 | sort | ../reducer.py > ./prediction_75_63.txt
echo 'Bands 75, Rows 63:' >> _results.txt
../check.py ./prediction_75_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_75_66.txt ]; then
touch ./prediction_75_66.txt
cat ../1_data/train.txt | ../src/mapper.py 75 66 | sort | ../reducer.py > ./prediction_75_66.txt
echo 'Bands 75, Rows 66:' >> _results.txt
../check.py ./prediction_75_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_75_69.txt ]; then
touch ./prediction_75_69.txt
cat ../1_data/train.txt | ../src/mapper.py 75 69 | sort | ../reducer.py > ./prediction_75_69.txt
echo 'Bands 75, Rows 69:' >> _results.txt
../check.py ./prediction_75_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_80_42.txt ]; then
touch ./prediction_80_42.txt
cat ../1_data/train.txt | ../src/mapper.py 80 42 | sort | ../reducer.py > ./prediction_80_42.txt
echo 'Bands 80, Rows 42:' >> _results.txt
../check.py ./prediction_80_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_80_45.txt ]; then
touch ./prediction_80_45.txt
cat ../1_data/train.txt | ../src/mapper.py 80 45 | sort | ../reducer.py > ./prediction_80_45.txt
echo 'Bands 80, Rows 45:' >> _results.txt
../check.py ./prediction_80_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_80_48.txt ]; then
touch ./prediction_80_48.txt
cat ../1_data/train.txt | ../src/mapper.py 80 48 | sort | ../reducer.py > ./prediction_80_48.txt
echo 'Bands 80, Rows 48:' >> _results.txt
../check.py ./prediction_80_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_80_51.txt ]; then
touch ./prediction_80_51.txt
cat ../1_data/train.txt | ../src/mapper.py 80 51 | sort | ../reducer.py > ./prediction_80_51.txt
echo 'Bands 80, Rows 51:' >> _results.txt
../check.py ./prediction_80_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_80_54.txt ]; then
touch ./prediction_80_54.txt
cat ../1_data/train.txt | ../src/mapper.py 80 54 | sort | ../reducer.py > ./prediction_80_54.txt
echo 'Bands 80, Rows 54:' >> _results.txt
../check.py ./prediction_80_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_80_57.txt ]; then
touch ./prediction_80_57.txt
cat ../1_data/train.txt | ../src/mapper.py 80 57 | sort | ../reducer.py > ./prediction_80_57.txt
echo 'Bands 80, Rows 57:' >> _results.txt
../check.py ./prediction_80_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_80_60.txt ]; then
touch ./prediction_80_60.txt
cat ../1_data/train.txt | ../src/mapper.py 80 60 | sort | ../reducer.py > ./prediction_80_60.txt
echo 'Bands 80, Rows 60:' >> _results.txt
../check.py ./prediction_80_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_80_63.txt ]; then
touch ./prediction_80_63.txt
cat ../1_data/train.txt | ../src/mapper.py 80 63 | sort | ../reducer.py > ./prediction_80_63.txt
echo 'Bands 80, Rows 63:' >> _results.txt
../check.py ./prediction_80_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_80_66.txt ]; then
touch ./prediction_80_66.txt
cat ../1_data/train.txt | ../src/mapper.py 80 66 | sort | ../reducer.py > ./prediction_80_66.txt
echo 'Bands 80, Rows 66:' >> _results.txt
../check.py ./prediction_80_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_80_69.txt ]; then
touch ./prediction_80_69.txt
cat ../1_data/train.txt | ../src/mapper.py 80 69 | sort | ../reducer.py > ./prediction_80_69.txt
echo 'Bands 80, Rows 69:' >> _results.txt
../check.py ./prediction_80_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_85_42.txt ]; then
touch ./prediction_85_42.txt
cat ../1_data/train.txt | ../src/mapper.py 85 42 | sort | ../reducer.py > ./prediction_85_42.txt
echo 'Bands 85, Rows 42:' >> _results.txt
../check.py ./prediction_85_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_85_45.txt ]; then
touch ./prediction_85_45.txt
cat ../1_data/train.txt | ../src/mapper.py 85 45 | sort | ../reducer.py > ./prediction_85_45.txt
echo 'Bands 85, Rows 45:' >> _results.txt
../check.py ./prediction_85_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_85_48.txt ]; then
touch ./prediction_85_48.txt
cat ../1_data/train.txt | ../src/mapper.py 85 48 | sort | ../reducer.py > ./prediction_85_48.txt
echo 'Bands 85, Rows 48:' >> _results.txt
../check.py ./prediction_85_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_85_51.txt ]; then
touch ./prediction_85_51.txt
cat ../1_data/train.txt | ../src/mapper.py 85 51 | sort | ../reducer.py > ./prediction_85_51.txt
echo 'Bands 85, Rows 51:' >> _results.txt
../check.py ./prediction_85_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_85_54.txt ]; then
touch ./prediction_85_54.txt
cat ../1_data/train.txt | ../src/mapper.py 85 54 | sort | ../reducer.py > ./prediction_85_54.txt
echo 'Bands 85, Rows 54:' >> _results.txt
../check.py ./prediction_85_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_85_57.txt ]; then
touch ./prediction_85_57.txt
cat ../1_data/train.txt | ../src/mapper.py 85 57 | sort | ../reducer.py > ./prediction_85_57.txt
echo 'Bands 85, Rows 57:' >> _results.txt
../check.py ./prediction_85_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_85_60.txt ]; then
touch ./prediction_85_60.txt
cat ../1_data/train.txt | ../src/mapper.py 85 60 | sort | ../reducer.py > ./prediction_85_60.txt
echo 'Bands 85, Rows 60:' >> _results.txt
../check.py ./prediction_85_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_85_63.txt ]; then
touch ./prediction_85_63.txt
cat ../1_data/train.txt | ../src/mapper.py 85 63 | sort | ../reducer.py > ./prediction_85_63.txt
echo 'Bands 85, Rows 63:' >> _results.txt
../check.py ./prediction_85_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_85_66.txt ]; then
touch ./prediction_85_66.txt
cat ../1_data/train.txt | ../src/mapper.py 85 66 | sort | ../reducer.py > ./prediction_85_66.txt
echo 'Bands 85, Rows 66:' >> _results.txt
../check.py ./prediction_85_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_85_69.txt ]; then
touch ./prediction_85_69.txt
cat ../1_data/train.txt | ../src/mapper.py 85 69 | sort | ../reducer.py > ./prediction_85_69.txt
echo 'Bands 85, Rows 69:' >> _results.txt
../check.py ./prediction_85_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_90_42.txt ]; then
touch ./prediction_90_42.txt
cat ../1_data/train.txt | ../src/mapper.py 90 42 | sort | ../reducer.py > ./prediction_90_42.txt
echo 'Bands 90, Rows 42:' >> _results.txt
../check.py ./prediction_90_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_90_45.txt ]; then
touch ./prediction_90_45.txt
cat ../1_data/train.txt | ../src/mapper.py 90 45 | sort | ../reducer.py > ./prediction_90_45.txt
echo 'Bands 90, Rows 45:' >> _results.txt
../check.py ./prediction_90_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_90_48.txt ]; then
touch ./prediction_90_48.txt
cat ../1_data/train.txt | ../src/mapper.py 90 48 | sort | ../reducer.py > ./prediction_90_48.txt
echo 'Bands 90, Rows 48:' >> _results.txt
../check.py ./prediction_90_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_90_51.txt ]; then
touch ./prediction_90_51.txt
cat ../1_data/train.txt | ../src/mapper.py 90 51 | sort | ../reducer.py > ./prediction_90_51.txt
echo 'Bands 90, Rows 51:' >> _results.txt
../check.py ./prediction_90_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_90_54.txt ]; then
touch ./prediction_90_54.txt
cat ../1_data/train.txt | ../src/mapper.py 90 54 | sort | ../reducer.py > ./prediction_90_54.txt
echo 'Bands 90, Rows 54:' >> _results.txt
../check.py ./prediction_90_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_90_57.txt ]; then
touch ./prediction_90_57.txt
cat ../1_data/train.txt | ../src/mapper.py 90 57 | sort | ../reducer.py > ./prediction_90_57.txt
echo 'Bands 90, Rows 57:' >> _results.txt
../check.py ./prediction_90_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_90_60.txt ]; then
touch ./prediction_90_60.txt
cat ../1_data/train.txt | ../src/mapper.py 90 60 | sort | ../reducer.py > ./prediction_90_60.txt
echo 'Bands 90, Rows 60:' >> _results.txt
../check.py ./prediction_90_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_90_63.txt ]; then
touch ./prediction_90_63.txt
cat ../1_data/train.txt | ../src/mapper.py 90 63 | sort | ../reducer.py > ./prediction_90_63.txt
echo 'Bands 90, Rows 63:' >> _results.txt
../check.py ./prediction_90_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_90_66.txt ]; then
touch ./prediction_90_66.txt
cat ../1_data/train.txt | ../src/mapper.py 90 66 | sort | ../reducer.py > ./prediction_90_66.txt
echo 'Bands 90, Rows 66:' >> _results.txt
../check.py ./prediction_90_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_90_69.txt ]; then
touch ./prediction_90_69.txt
cat ../1_data/train.txt | ../src/mapper.py 90 69 | sort | ../reducer.py > ./prediction_90_69.txt
echo 'Bands 90, Rows 69:' >> _results.txt
../check.py ./prediction_90_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_95_42.txt ]; then
touch ./prediction_95_42.txt
cat ../1_data/train.txt | ../src/mapper.py 95 42 | sort | ../reducer.py > ./prediction_95_42.txt
echo 'Bands 95, Rows 42:' >> _results.txt
../check.py ./prediction_95_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_95_45.txt ]; then
touch ./prediction_95_45.txt
cat ../1_data/train.txt | ../src/mapper.py 95 45 | sort | ../reducer.py > ./prediction_95_45.txt
echo 'Bands 95, Rows 45:' >> _results.txt
../check.py ./prediction_95_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_95_48.txt ]; then
touch ./prediction_95_48.txt
cat ../1_data/train.txt | ../src/mapper.py 95 48 | sort | ../reducer.py > ./prediction_95_48.txt
echo 'Bands 95, Rows 48:' >> _results.txt
../check.py ./prediction_95_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_95_51.txt ]; then
touch ./prediction_95_51.txt
cat ../1_data/train.txt | ../src/mapper.py 95 51 | sort | ../reducer.py > ./prediction_95_51.txt
echo 'Bands 95, Rows 51:' >> _results.txt
../check.py ./prediction_95_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_95_54.txt ]; then
touch ./prediction_95_54.txt
cat ../1_data/train.txt | ../src/mapper.py 95 54 | sort | ../reducer.py > ./prediction_95_54.txt
echo 'Bands 95, Rows 54:' >> _results.txt
../check.py ./prediction_95_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_95_57.txt ]; then
touch ./prediction_95_57.txt
cat ../1_data/train.txt | ../src/mapper.py 95 57 | sort | ../reducer.py > ./prediction_95_57.txt
echo 'Bands 95, Rows 57:' >> _results.txt
../check.py ./prediction_95_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_95_60.txt ]; then
touch ./prediction_95_60.txt
cat ../1_data/train.txt | ../src/mapper.py 95 60 | sort | ../reducer.py > ./prediction_95_60.txt
echo 'Bands 95, Rows 60:' >> _results.txt
../check.py ./prediction_95_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_95_63.txt ]; then
touch ./prediction_95_63.txt
cat ../1_data/train.txt | ../src/mapper.py 95 63 | sort | ../reducer.py > ./prediction_95_63.txt
echo 'Bands 95, Rows 63:' >> _results.txt
../check.py ./prediction_95_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_95_66.txt ]; then
touch ./prediction_95_66.txt
cat ../1_data/train.txt | ../src/mapper.py 95 66 | sort | ../reducer.py > ./prediction_95_66.txt
echo 'Bands 95, Rows 66:' >> _results.txt
../check.py ./prediction_95_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_95_69.txt ]; then
touch ./prediction_95_69.txt
cat ../1_data/train.txt | ../src/mapper.py 95 69 | sort | ../reducer.py > ./prediction_95_69.txt
echo 'Bands 95, Rows 69:' >> _results.txt
../check.py ./prediction_95_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_100_42.txt ]; then
touch ./prediction_100_42.txt
cat ../1_data/train.txt | ../src/mapper.py 100 42 | sort | ../reducer.py > ./prediction_100_42.txt
echo 'Bands 100, Rows 42:' >> _results.txt
../check.py ./prediction_100_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_100_45.txt ]; then
touch ./prediction_100_45.txt
cat ../1_data/train.txt | ../src/mapper.py 100 45 | sort | ../reducer.py > ./prediction_100_45.txt
echo 'Bands 100, Rows 45:' >> _results.txt
../check.py ./prediction_100_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_100_48.txt ]; then
touch ./prediction_100_48.txt
cat ../1_data/train.txt | ../src/mapper.py 100 48 | sort | ../reducer.py > ./prediction_100_48.txt
echo 'Bands 100, Rows 48:' >> _results.txt
../check.py ./prediction_100_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_100_51.txt ]; then
touch ./prediction_100_51.txt
cat ../1_data/train.txt | ../src/mapper.py 100 51 | sort | ../reducer.py > ./prediction_100_51.txt
echo 'Bands 100, Rows 51:' >> _results.txt
../check.py ./prediction_100_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_100_54.txt ]; then
touch ./prediction_100_54.txt
cat ../1_data/train.txt | ../src/mapper.py 100 54 | sort | ../reducer.py > ./prediction_100_54.txt
echo 'Bands 100, Rows 54:' >> _results.txt
../check.py ./prediction_100_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_100_57.txt ]; then
touch ./prediction_100_57.txt
cat ../1_data/train.txt | ../src/mapper.py 100 57 | sort | ../reducer.py > ./prediction_100_57.txt
echo 'Bands 100, Rows 57:' >> _results.txt
../check.py ./prediction_100_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_100_60.txt ]; then
touch ./prediction_100_60.txt
cat ../1_data/train.txt | ../src/mapper.py 100 60 | sort | ../reducer.py > ./prediction_100_60.txt
echo 'Bands 100, Rows 60:' >> _results.txt
../check.py ./prediction_100_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_100_63.txt ]; then
touch ./prediction_100_63.txt
cat ../1_data/train.txt | ../src/mapper.py 100 63 | sort | ../reducer.py > ./prediction_100_63.txt
echo 'Bands 100, Rows 63:' >> _results.txt
../check.py ./prediction_100_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_100_66.txt ]; then
touch ./prediction_100_66.txt
cat ../1_data/train.txt | ../src/mapper.py 100 66 | sort | ../reducer.py > ./prediction_100_66.txt
echo 'Bands 100, Rows 66:' >> _results.txt
../check.py ./prediction_100_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_100_69.txt ]; then
touch ./prediction_100_69.txt
cat ../1_data/train.txt | ../src/mapper.py 100 69 | sort | ../reducer.py > ./prediction_100_69.txt
echo 'Bands 100, Rows 69:' >> _results.txt
../check.py ./prediction_100_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_105_42.txt ]; then
touch ./prediction_105_42.txt
cat ../1_data/train.txt | ../src/mapper.py 105 42 | sort | ../reducer.py > ./prediction_105_42.txt
echo 'Bands 105, Rows 42:' >> _results.txt
../check.py ./prediction_105_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_105_45.txt ]; then
touch ./prediction_105_45.txt
cat ../1_data/train.txt | ../src/mapper.py 105 45 | sort | ../reducer.py > ./prediction_105_45.txt
echo 'Bands 105, Rows 45:' >> _results.txt
../check.py ./prediction_105_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_105_48.txt ]; then
touch ./prediction_105_48.txt
cat ../1_data/train.txt | ../src/mapper.py 105 48 | sort | ../reducer.py > ./prediction_105_48.txt
echo 'Bands 105, Rows 48:' >> _results.txt
../check.py ./prediction_105_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_105_51.txt ]; then
touch ./prediction_105_51.txt
cat ../1_data/train.txt | ../src/mapper.py 105 51 | sort | ../reducer.py > ./prediction_105_51.txt
echo 'Bands 105, Rows 51:' >> _results.txt
../check.py ./prediction_105_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_105_54.txt ]; then
touch ./prediction_105_54.txt
cat ../1_data/train.txt | ../src/mapper.py 105 54 | sort | ../reducer.py > ./prediction_105_54.txt
echo 'Bands 105, Rows 54:' >> _results.txt
../check.py ./prediction_105_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_105_57.txt ]; then
touch ./prediction_105_57.txt
cat ../1_data/train.txt | ../src/mapper.py 105 57 | sort | ../reducer.py > ./prediction_105_57.txt
echo 'Bands 105, Rows 57:' >> _results.txt
../check.py ./prediction_105_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_105_60.txt ]; then
touch ./prediction_105_60.txt
cat ../1_data/train.txt | ../src/mapper.py 105 60 | sort | ../reducer.py > ./prediction_105_60.txt
echo 'Bands 105, Rows 60:' >> _results.txt
../check.py ./prediction_105_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_105_63.txt ]; then
touch ./prediction_105_63.txt
cat ../1_data/train.txt | ../src/mapper.py 105 63 | sort | ../reducer.py > ./prediction_105_63.txt
echo 'Bands 105, Rows 63:' >> _results.txt
../check.py ./prediction_105_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_105_66.txt ]; then
touch ./prediction_105_66.txt
cat ../1_data/train.txt | ../src/mapper.py 105 66 | sort | ../reducer.py > ./prediction_105_66.txt
echo 'Bands 105, Rows 66:' >> _results.txt
../check.py ./prediction_105_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_105_69.txt ]; then
touch ./prediction_105_69.txt
cat ../1_data/train.txt | ../src/mapper.py 105 69 | sort | ../reducer.py > ./prediction_105_69.txt
echo 'Bands 105, Rows 69:' >> _results.txt
../check.py ./prediction_105_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_110_42.txt ]; then
touch ./prediction_110_42.txt
cat ../1_data/train.txt | ../src/mapper.py 110 42 | sort | ../reducer.py > ./prediction_110_42.txt
echo 'Bands 110, Rows 42:' >> _results.txt
../check.py ./prediction_110_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_110_45.txt ]; then
touch ./prediction_110_45.txt
cat ../1_data/train.txt | ../src/mapper.py 110 45 | sort | ../reducer.py > ./prediction_110_45.txt
echo 'Bands 110, Rows 45:' >> _results.txt
../check.py ./prediction_110_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_110_48.txt ]; then
touch ./prediction_110_48.txt
cat ../1_data/train.txt | ../src/mapper.py 110 48 | sort | ../reducer.py > ./prediction_110_48.txt
echo 'Bands 110, Rows 48:' >> _results.txt
../check.py ./prediction_110_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_110_51.txt ]; then
touch ./prediction_110_51.txt
cat ../1_data/train.txt | ../src/mapper.py 110 51 | sort | ../reducer.py > ./prediction_110_51.txt
echo 'Bands 110, Rows 51:' >> _results.txt
../check.py ./prediction_110_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_110_54.txt ]; then
touch ./prediction_110_54.txt
cat ../1_data/train.txt | ../src/mapper.py 110 54 | sort | ../reducer.py > ./prediction_110_54.txt
echo 'Bands 110, Rows 54:' >> _results.txt
../check.py ./prediction_110_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_110_57.txt ]; then
touch ./prediction_110_57.txt
cat ../1_data/train.txt | ../src/mapper.py 110 57 | sort | ../reducer.py > ./prediction_110_57.txt
echo 'Bands 110, Rows 57:' >> _results.txt
../check.py ./prediction_110_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_110_60.txt ]; then
touch ./prediction_110_60.txt
cat ../1_data/train.txt | ../src/mapper.py 110 60 | sort | ../reducer.py > ./prediction_110_60.txt
echo 'Bands 110, Rows 60:' >> _results.txt
../check.py ./prediction_110_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_110_63.txt ]; then
touch ./prediction_110_63.txt
cat ../1_data/train.txt | ../src/mapper.py 110 63 | sort | ../reducer.py > ./prediction_110_63.txt
echo 'Bands 110, Rows 63:' >> _results.txt
../check.py ./prediction_110_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_110_66.txt ]; then
touch ./prediction_110_66.txt
cat ../1_data/train.txt | ../src/mapper.py 110 66 | sort | ../reducer.py > ./prediction_110_66.txt
echo 'Bands 110, Rows 66:' >> _results.txt
../check.py ./prediction_110_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_110_69.txt ]; then
touch ./prediction_110_69.txt
cat ../1_data/train.txt | ../src/mapper.py 110 69 | sort | ../reducer.py > ./prediction_110_69.txt
echo 'Bands 110, Rows 69:' >> _results.txt
../check.py ./prediction_110_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_115_42.txt ]; then
touch ./prediction_115_42.txt
cat ../1_data/train.txt | ../src/mapper.py 115 42 | sort | ../reducer.py > ./prediction_115_42.txt
echo 'Bands 115, Rows 42:' >> _results.txt
../check.py ./prediction_115_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_115_45.txt ]; then
touch ./prediction_115_45.txt
cat ../1_data/train.txt | ../src/mapper.py 115 45 | sort | ../reducer.py > ./prediction_115_45.txt
echo 'Bands 115, Rows 45:' >> _results.txt
../check.py ./prediction_115_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_115_48.txt ]; then
touch ./prediction_115_48.txt
cat ../1_data/train.txt | ../src/mapper.py 115 48 | sort | ../reducer.py > ./prediction_115_48.txt
echo 'Bands 115, Rows 48:' >> _results.txt
../check.py ./prediction_115_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_115_51.txt ]; then
touch ./prediction_115_51.txt
cat ../1_data/train.txt | ../src/mapper.py 115 51 | sort | ../reducer.py > ./prediction_115_51.txt
echo 'Bands 115, Rows 51:' >> _results.txt
../check.py ./prediction_115_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_115_54.txt ]; then
touch ./prediction_115_54.txt
cat ../1_data/train.txt | ../src/mapper.py 115 54 | sort | ../reducer.py > ./prediction_115_54.txt
echo 'Bands 115, Rows 54:' >> _results.txt
../check.py ./prediction_115_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_115_57.txt ]; then
touch ./prediction_115_57.txt
cat ../1_data/train.txt | ../src/mapper.py 115 57 | sort | ../reducer.py > ./prediction_115_57.txt
echo 'Bands 115, Rows 57:' >> _results.txt
../check.py ./prediction_115_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_115_60.txt ]; then
touch ./prediction_115_60.txt
cat ../1_data/train.txt | ../src/mapper.py 115 60 | sort | ../reducer.py > ./prediction_115_60.txt
echo 'Bands 115, Rows 60:' >> _results.txt
../check.py ./prediction_115_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_115_63.txt ]; then
touch ./prediction_115_63.txt
cat ../1_data/train.txt | ../src/mapper.py 115 63 | sort | ../reducer.py > ./prediction_115_63.txt
echo 'Bands 115, Rows 63:' >> _results.txt
../check.py ./prediction_115_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_115_66.txt ]; then
touch ./prediction_115_66.txt
cat ../1_data/train.txt | ../src/mapper.py 115 66 | sort | ../reducer.py > ./prediction_115_66.txt
echo 'Bands 115, Rows 66:' >> _results.txt
../check.py ./prediction_115_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_115_69.txt ]; then
touch ./prediction_115_69.txt
cat ../1_data/train.txt | ../src/mapper.py 115 69 | sort | ../reducer.py > ./prediction_115_69.txt
echo 'Bands 115, Rows 69:' >> _results.txt
../check.py ./prediction_115_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_120_42.txt ]; then
touch ./prediction_120_42.txt
cat ../1_data/train.txt | ../src/mapper.py 120 42 | sort | ../reducer.py > ./prediction_120_42.txt
echo 'Bands 120, Rows 42:' >> _results.txt
../check.py ./prediction_120_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_120_45.txt ]; then
touch ./prediction_120_45.txt
cat ../1_data/train.txt | ../src/mapper.py 120 45 | sort | ../reducer.py > ./prediction_120_45.txt
echo 'Bands 120, Rows 45:' >> _results.txt
../check.py ./prediction_120_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_120_48.txt ]; then
touch ./prediction_120_48.txt
cat ../1_data/train.txt | ../src/mapper.py 120 48 | sort | ../reducer.py > ./prediction_120_48.txt
echo 'Bands 120, Rows 48:' >> _results.txt
../check.py ./prediction_120_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_120_51.txt ]; then
touch ./prediction_120_51.txt
cat ../1_data/train.txt | ../src/mapper.py 120 51 | sort | ../reducer.py > ./prediction_120_51.txt
echo 'Bands 120, Rows 51:' >> _results.txt
../check.py ./prediction_120_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_120_54.txt ]; then
touch ./prediction_120_54.txt
cat ../1_data/train.txt | ../src/mapper.py 120 54 | sort | ../reducer.py > ./prediction_120_54.txt
echo 'Bands 120, Rows 54:' >> _results.txt
../check.py ./prediction_120_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_120_57.txt ]; then
touch ./prediction_120_57.txt
cat ../1_data/train.txt | ../src/mapper.py 120 57 | sort | ../reducer.py > ./prediction_120_57.txt
echo 'Bands 120, Rows 57:' >> _results.txt
../check.py ./prediction_120_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_120_60.txt ]; then
touch ./prediction_120_60.txt
cat ../1_data/train.txt | ../src/mapper.py 120 60 | sort | ../reducer.py > ./prediction_120_60.txt
echo 'Bands 120, Rows 60:' >> _results.txt
../check.py ./prediction_120_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_120_63.txt ]; then
touch ./prediction_120_63.txt
cat ../1_data/train.txt | ../src/mapper.py 120 63 | sort | ../reducer.py > ./prediction_120_63.txt
echo 'Bands 120, Rows 63:' >> _results.txt
../check.py ./prediction_120_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_120_66.txt ]; then
touch ./prediction_120_66.txt
cat ../1_data/train.txt | ../src/mapper.py 120 66 | sort | ../reducer.py > ./prediction_120_66.txt
echo 'Bands 120, Rows 66:' >> _results.txt
../check.py ./prediction_120_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_120_69.txt ]; then
touch ./prediction_120_69.txt
cat ../1_data/train.txt | ../src/mapper.py 120 69 | sort | ../reducer.py > ./prediction_120_69.txt
echo 'Bands 120, Rows 69:' >> _results.txt
../check.py ./prediction_120_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_125_42.txt ]; then
touch ./prediction_125_42.txt
cat ../1_data/train.txt | ../src/mapper.py 125 42 | sort | ../reducer.py > ./prediction_125_42.txt
echo 'Bands 125, Rows 42:' >> _results.txt
../check.py ./prediction_125_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_125_45.txt ]; then
touch ./prediction_125_45.txt
cat ../1_data/train.txt | ../src/mapper.py 125 45 | sort | ../reducer.py > ./prediction_125_45.txt
echo 'Bands 125, Rows 45:' >> _results.txt
../check.py ./prediction_125_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_125_48.txt ]; then
touch ./prediction_125_48.txt
cat ../1_data/train.txt | ../src/mapper.py 125 48 | sort | ../reducer.py > ./prediction_125_48.txt
echo 'Bands 125, Rows 48:' >> _results.txt
../check.py ./prediction_125_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_125_51.txt ]; then
touch ./prediction_125_51.txt
cat ../1_data/train.txt | ../src/mapper.py 125 51 | sort | ../reducer.py > ./prediction_125_51.txt
echo 'Bands 125, Rows 51:' >> _results.txt
../check.py ./prediction_125_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_125_54.txt ]; then
touch ./prediction_125_54.txt
cat ../1_data/train.txt | ../src/mapper.py 125 54 | sort | ../reducer.py > ./prediction_125_54.txt
echo 'Bands 125, Rows 54:' >> _results.txt
../check.py ./prediction_125_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_125_57.txt ]; then
touch ./prediction_125_57.txt
cat ../1_data/train.txt | ../src/mapper.py 125 57 | sort | ../reducer.py > ./prediction_125_57.txt
echo 'Bands 125, Rows 57:' >> _results.txt
../check.py ./prediction_125_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_125_60.txt ]; then
touch ./prediction_125_60.txt
cat ../1_data/train.txt | ../src/mapper.py 125 60 | sort | ../reducer.py > ./prediction_125_60.txt
echo 'Bands 125, Rows 60:' >> _results.txt
../check.py ./prediction_125_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_125_63.txt ]; then
touch ./prediction_125_63.txt
cat ../1_data/train.txt | ../src/mapper.py 125 63 | sort | ../reducer.py > ./prediction_125_63.txt
echo 'Bands 125, Rows 63:' >> _results.txt
../check.py ./prediction_125_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_125_66.txt ]; then
touch ./prediction_125_66.txt
cat ../1_data/train.txt | ../src/mapper.py 125 66 | sort | ../reducer.py > ./prediction_125_66.txt
echo 'Bands 125, Rows 66:' >> _results.txt
../check.py ./prediction_125_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_125_69.txt ]; then
touch ./prediction_125_69.txt
cat ../1_data/train.txt | ../src/mapper.py 125 69 | sort | ../reducer.py > ./prediction_125_69.txt
echo 'Bands 125, Rows 69:' >> _results.txt
../check.py ./prediction_125_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_130_42.txt ]; then
touch ./prediction_130_42.txt
cat ../1_data/train.txt | ../src/mapper.py 130 42 | sort | ../reducer.py > ./prediction_130_42.txt
echo 'Bands 130, Rows 42:' >> _results.txt
../check.py ./prediction_130_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_130_45.txt ]; then
touch ./prediction_130_45.txt
cat ../1_data/train.txt | ../src/mapper.py 130 45 | sort | ../reducer.py > ./prediction_130_45.txt
echo 'Bands 130, Rows 45:' >> _results.txt
../check.py ./prediction_130_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_130_48.txt ]; then
touch ./prediction_130_48.txt
cat ../1_data/train.txt | ../src/mapper.py 130 48 | sort | ../reducer.py > ./prediction_130_48.txt
echo 'Bands 130, Rows 48:' >> _results.txt
../check.py ./prediction_130_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_130_51.txt ]; then
touch ./prediction_130_51.txt
cat ../1_data/train.txt | ../src/mapper.py 130 51 | sort | ../reducer.py > ./prediction_130_51.txt
echo 'Bands 130, Rows 51:' >> _results.txt
../check.py ./prediction_130_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_130_54.txt ]; then
touch ./prediction_130_54.txt
cat ../1_data/train.txt | ../src/mapper.py 130 54 | sort | ../reducer.py > ./prediction_130_54.txt
echo 'Bands 130, Rows 54:' >> _results.txt
../check.py ./prediction_130_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_130_57.txt ]; then
touch ./prediction_130_57.txt
cat ../1_data/train.txt | ../src/mapper.py 130 57 | sort | ../reducer.py > ./prediction_130_57.txt
echo 'Bands 130, Rows 57:' >> _results.txt
../check.py ./prediction_130_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_130_60.txt ]; then
touch ./prediction_130_60.txt
cat ../1_data/train.txt | ../src/mapper.py 130 60 | sort | ../reducer.py > ./prediction_130_60.txt
echo 'Bands 130, Rows 60:' >> _results.txt
../check.py ./prediction_130_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_130_63.txt ]; then
touch ./prediction_130_63.txt
cat ../1_data/train.txt | ../src/mapper.py 130 63 | sort | ../reducer.py > ./prediction_130_63.txt
echo 'Bands 130, Rows 63:' >> _results.txt
../check.py ./prediction_130_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_130_66.txt ]; then
touch ./prediction_130_66.txt
cat ../1_data/train.txt | ../src/mapper.py 130 66 | sort | ../reducer.py > ./prediction_130_66.txt
echo 'Bands 130, Rows 66:' >> _results.txt
../check.py ./prediction_130_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_130_69.txt ]; then
touch ./prediction_130_69.txt
cat ../1_data/train.txt | ../src/mapper.py 130 69 | sort | ../reducer.py > ./prediction_130_69.txt
echo 'Bands 130, Rows 69:' >> _results.txt
../check.py ./prediction_130_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_135_42.txt ]; then
touch ./prediction_135_42.txt
cat ../1_data/train.txt | ../src/mapper.py 135 42 | sort | ../reducer.py > ./prediction_135_42.txt
echo 'Bands 135, Rows 42:' >> _results.txt
../check.py ./prediction_135_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_135_45.txt ]; then
touch ./prediction_135_45.txt
cat ../1_data/train.txt | ../src/mapper.py 135 45 | sort | ../reducer.py > ./prediction_135_45.txt
echo 'Bands 135, Rows 45:' >> _results.txt
../check.py ./prediction_135_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_135_48.txt ]; then
touch ./prediction_135_48.txt
cat ../1_data/train.txt | ../src/mapper.py 135 48 | sort | ../reducer.py > ./prediction_135_48.txt
echo 'Bands 135, Rows 48:' >> _results.txt
../check.py ./prediction_135_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_135_51.txt ]; then
touch ./prediction_135_51.txt
cat ../1_data/train.txt | ../src/mapper.py 135 51 | sort | ../reducer.py > ./prediction_135_51.txt
echo 'Bands 135, Rows 51:' >> _results.txt
../check.py ./prediction_135_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_135_54.txt ]; then
touch ./prediction_135_54.txt
cat ../1_data/train.txt | ../src/mapper.py 135 54 | sort | ../reducer.py > ./prediction_135_54.txt
echo 'Bands 135, Rows 54:' >> _results.txt
../check.py ./prediction_135_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_135_57.txt ]; then
touch ./prediction_135_57.txt
cat ../1_data/train.txt | ../src/mapper.py 135 57 | sort | ../reducer.py > ./prediction_135_57.txt
echo 'Bands 135, Rows 57:' >> _results.txt
../check.py ./prediction_135_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_135_60.txt ]; then
touch ./prediction_135_60.txt
cat ../1_data/train.txt | ../src/mapper.py 135 60 | sort | ../reducer.py > ./prediction_135_60.txt
echo 'Bands 135, Rows 60:' >> _results.txt
../check.py ./prediction_135_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_135_63.txt ]; then
touch ./prediction_135_63.txt
cat ../1_data/train.txt | ../src/mapper.py 135 63 | sort | ../reducer.py > ./prediction_135_63.txt
echo 'Bands 135, Rows 63:' >> _results.txt
../check.py ./prediction_135_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_135_66.txt ]; then
touch ./prediction_135_66.txt
cat ../1_data/train.txt | ../src/mapper.py 135 66 | sort | ../reducer.py > ./prediction_135_66.txt
echo 'Bands 135, Rows 66:' >> _results.txt
../check.py ./prediction_135_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_135_69.txt ]; then
touch ./prediction_135_69.txt
cat ../1_data/train.txt | ../src/mapper.py 135 69 | sort | ../reducer.py > ./prediction_135_69.txt
echo 'Bands 135, Rows 69:' >> _results.txt
../check.py ./prediction_135_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_140_42.txt ]; then
touch ./prediction_140_42.txt
cat ../1_data/train.txt | ../src/mapper.py 140 42 | sort | ../reducer.py > ./prediction_140_42.txt
echo 'Bands 140, Rows 42:' >> _results.txt
../check.py ./prediction_140_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_140_45.txt ]; then
touch ./prediction_140_45.txt
cat ../1_data/train.txt | ../src/mapper.py 140 45 | sort | ../reducer.py > ./prediction_140_45.txt
echo 'Bands 140, Rows 45:' >> _results.txt
../check.py ./prediction_140_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_140_48.txt ]; then
touch ./prediction_140_48.txt
cat ../1_data/train.txt | ../src/mapper.py 140 48 | sort | ../reducer.py > ./prediction_140_48.txt
echo 'Bands 140, Rows 48:' >> _results.txt
../check.py ./prediction_140_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_140_51.txt ]; then
touch ./prediction_140_51.txt
cat ../1_data/train.txt | ../src/mapper.py 140 51 | sort | ../reducer.py > ./prediction_140_51.txt
echo 'Bands 140, Rows 51:' >> _results.txt
../check.py ./prediction_140_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_140_54.txt ]; then
touch ./prediction_140_54.txt
cat ../1_data/train.txt | ../src/mapper.py 140 54 | sort | ../reducer.py > ./prediction_140_54.txt
echo 'Bands 140, Rows 54:' >> _results.txt
../check.py ./prediction_140_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_140_57.txt ]; then
touch ./prediction_140_57.txt
cat ../1_data/train.txt | ../src/mapper.py 140 57 | sort | ../reducer.py > ./prediction_140_57.txt
echo 'Bands 140, Rows 57:' >> _results.txt
../check.py ./prediction_140_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_140_60.txt ]; then
touch ./prediction_140_60.txt
cat ../1_data/train.txt | ../src/mapper.py 140 60 | sort | ../reducer.py > ./prediction_140_60.txt
echo 'Bands 140, Rows 60:' >> _results.txt
../check.py ./prediction_140_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_140_63.txt ]; then
touch ./prediction_140_63.txt
cat ../1_data/train.txt | ../src/mapper.py 140 63 | sort | ../reducer.py > ./prediction_140_63.txt
echo 'Bands 140, Rows 63:' >> _results.txt
../check.py ./prediction_140_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_140_66.txt ]; then
touch ./prediction_140_66.txt
cat ../1_data/train.txt | ../src/mapper.py 140 66 | sort | ../reducer.py > ./prediction_140_66.txt
echo 'Bands 140, Rows 66:' >> _results.txt
../check.py ./prediction_140_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_140_69.txt ]; then
touch ./prediction_140_69.txt
cat ../1_data/train.txt | ../src/mapper.py 140 69 | sort | ../reducer.py > ./prediction_140_69.txt
echo 'Bands 140, Rows 69:' >> _results.txt
../check.py ./prediction_140_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_145_42.txt ]; then
touch ./prediction_145_42.txt
cat ../1_data/train.txt | ../src/mapper.py 145 42 | sort | ../reducer.py > ./prediction_145_42.txt
echo 'Bands 145, Rows 42:' >> _results.txt
../check.py ./prediction_145_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_145_45.txt ]; then
touch ./prediction_145_45.txt
cat ../1_data/train.txt | ../src/mapper.py 145 45 | sort | ../reducer.py > ./prediction_145_45.txt
echo 'Bands 145, Rows 45:' >> _results.txt
../check.py ./prediction_145_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_145_48.txt ]; then
touch ./prediction_145_48.txt
cat ../1_data/train.txt | ../src/mapper.py 145 48 | sort | ../reducer.py > ./prediction_145_48.txt
echo 'Bands 145, Rows 48:' >> _results.txt
../check.py ./prediction_145_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_145_51.txt ]; then
touch ./prediction_145_51.txt
cat ../1_data/train.txt | ../src/mapper.py 145 51 | sort | ../reducer.py > ./prediction_145_51.txt
echo 'Bands 145, Rows 51:' >> _results.txt
../check.py ./prediction_145_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_145_54.txt ]; then
touch ./prediction_145_54.txt
cat ../1_data/train.txt | ../src/mapper.py 145 54 | sort | ../reducer.py > ./prediction_145_54.txt
echo 'Bands 145, Rows 54:' >> _results.txt
../check.py ./prediction_145_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_145_57.txt ]; then
touch ./prediction_145_57.txt
cat ../1_data/train.txt | ../src/mapper.py 145 57 | sort | ../reducer.py > ./prediction_145_57.txt
echo 'Bands 145, Rows 57:' >> _results.txt
../check.py ./prediction_145_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_145_60.txt ]; then
touch ./prediction_145_60.txt
cat ../1_data/train.txt | ../src/mapper.py 145 60 | sort | ../reducer.py > ./prediction_145_60.txt
echo 'Bands 145, Rows 60:' >> _results.txt
../check.py ./prediction_145_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_145_63.txt ]; then
touch ./prediction_145_63.txt
cat ../1_data/train.txt | ../src/mapper.py 145 63 | sort | ../reducer.py > ./prediction_145_63.txt
echo 'Bands 145, Rows 63:' >> _results.txt
../check.py ./prediction_145_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_145_66.txt ]; then
touch ./prediction_145_66.txt
cat ../1_data/train.txt | ../src/mapper.py 145 66 | sort | ../reducer.py > ./prediction_145_66.txt
echo 'Bands 145, Rows 66:' >> _results.txt
../check.py ./prediction_145_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_145_69.txt ]; then
touch ./prediction_145_69.txt
cat ../1_data/train.txt | ../src/mapper.py 145 69 | sort | ../reducer.py > ./prediction_145_69.txt
echo 'Bands 145, Rows 69:' >> _results.txt
../check.py ./prediction_145_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_150_42.txt ]; then
touch ./prediction_150_42.txt
cat ../1_data/train.txt | ../src/mapper.py 150 42 | sort | ../reducer.py > ./prediction_150_42.txt
echo 'Bands 150, Rows 42:' >> _results.txt
../check.py ./prediction_150_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_150_45.txt ]; then
touch ./prediction_150_45.txt
cat ../1_data/train.txt | ../src/mapper.py 150 45 | sort | ../reducer.py > ./prediction_150_45.txt
echo 'Bands 150, Rows 45:' >> _results.txt
../check.py ./prediction_150_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_150_48.txt ]; then
touch ./prediction_150_48.txt
cat ../1_data/train.txt | ../src/mapper.py 150 48 | sort | ../reducer.py > ./prediction_150_48.txt
echo 'Bands 150, Rows 48:' >> _results.txt
../check.py ./prediction_150_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_150_51.txt ]; then
touch ./prediction_150_51.txt
cat ../1_data/train.txt | ../src/mapper.py 150 51 | sort | ../reducer.py > ./prediction_150_51.txt
echo 'Bands 150, Rows 51:' >> _results.txt
../check.py ./prediction_150_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_150_54.txt ]; then
touch ./prediction_150_54.txt
cat ../1_data/train.txt | ../src/mapper.py 150 54 | sort | ../reducer.py > ./prediction_150_54.txt
echo 'Bands 150, Rows 54:' >> _results.txt
../check.py ./prediction_150_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_150_57.txt ]; then
touch ./prediction_150_57.txt
cat ../1_data/train.txt | ../src/mapper.py 150 57 | sort | ../reducer.py > ./prediction_150_57.txt
echo 'Bands 150, Rows 57:' >> _results.txt
../check.py ./prediction_150_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_150_60.txt ]; then
touch ./prediction_150_60.txt
cat ../1_data/train.txt | ../src/mapper.py 150 60 | sort | ../reducer.py > ./prediction_150_60.txt
echo 'Bands 150, Rows 60:' >> _results.txt
../check.py ./prediction_150_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_150_63.txt ]; then
touch ./prediction_150_63.txt
cat ../1_data/train.txt | ../src/mapper.py 150 63 | sort | ../reducer.py > ./prediction_150_63.txt
echo 'Bands 150, Rows 63:' >> _results.txt
../check.py ./prediction_150_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_150_66.txt ]; then
touch ./prediction_150_66.txt
cat ../1_data/train.txt | ../src/mapper.py 150 66 | sort | ../reducer.py > ./prediction_150_66.txt
echo 'Bands 150, Rows 66:' >> _results.txt
../check.py ./prediction_150_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_150_69.txt ]; then
touch ./prediction_150_69.txt
cat ../1_data/train.txt | ../src/mapper.py 150 69 | sort | ../reducer.py > ./prediction_150_69.txt
echo 'Bands 150, Rows 69:' >> _results.txt
../check.py ./prediction_150_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_155_42.txt ]; then
touch ./prediction_155_42.txt
cat ../1_data/train.txt | ../src/mapper.py 155 42 | sort | ../reducer.py > ./prediction_155_42.txt
echo 'Bands 155, Rows 42:' >> _results.txt
../check.py ./prediction_155_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_155_45.txt ]; then
touch ./prediction_155_45.txt
cat ../1_data/train.txt | ../src/mapper.py 155 45 | sort | ../reducer.py > ./prediction_155_45.txt
echo 'Bands 155, Rows 45:' >> _results.txt
../check.py ./prediction_155_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_155_48.txt ]; then
touch ./prediction_155_48.txt
cat ../1_data/train.txt | ../src/mapper.py 155 48 | sort | ../reducer.py > ./prediction_155_48.txt
echo 'Bands 155, Rows 48:' >> _results.txt
../check.py ./prediction_155_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_155_51.txt ]; then
touch ./prediction_155_51.txt
cat ../1_data/train.txt | ../src/mapper.py 155 51 | sort | ../reducer.py > ./prediction_155_51.txt
echo 'Bands 155, Rows 51:' >> _results.txt
../check.py ./prediction_155_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_155_54.txt ]; then
touch ./prediction_155_54.txt
cat ../1_data/train.txt | ../src/mapper.py 155 54 | sort | ../reducer.py > ./prediction_155_54.txt
echo 'Bands 155, Rows 54:' >> _results.txt
../check.py ./prediction_155_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_155_57.txt ]; then
touch ./prediction_155_57.txt
cat ../1_data/train.txt | ../src/mapper.py 155 57 | sort | ../reducer.py > ./prediction_155_57.txt
echo 'Bands 155, Rows 57:' >> _results.txt
../check.py ./prediction_155_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_155_60.txt ]; then
touch ./prediction_155_60.txt
cat ../1_data/train.txt | ../src/mapper.py 155 60 | sort | ../reducer.py > ./prediction_155_60.txt
echo 'Bands 155, Rows 60:' >> _results.txt
../check.py ./prediction_155_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_155_63.txt ]; then
touch ./prediction_155_63.txt
cat ../1_data/train.txt | ../src/mapper.py 155 63 | sort | ../reducer.py > ./prediction_155_63.txt
echo 'Bands 155, Rows 63:' >> _results.txt
../check.py ./prediction_155_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_155_66.txt ]; then
touch ./prediction_155_66.txt
cat ../1_data/train.txt | ../src/mapper.py 155 66 | sort | ../reducer.py > ./prediction_155_66.txt
echo 'Bands 155, Rows 66:' >> _results.txt
../check.py ./prediction_155_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_155_69.txt ]; then
touch ./prediction_155_69.txt
cat ../1_data/train.txt | ../src/mapper.py 155 69 | sort | ../reducer.py > ./prediction_155_69.txt
echo 'Bands 155, Rows 69:' >> _results.txt
../check.py ./prediction_155_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_160_42.txt ]; then
touch ./prediction_160_42.txt
cat ../1_data/train.txt | ../src/mapper.py 160 42 | sort | ../reducer.py > ./prediction_160_42.txt
echo 'Bands 160, Rows 42:' >> _results.txt
../check.py ./prediction_160_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_160_45.txt ]; then
touch ./prediction_160_45.txt
cat ../1_data/train.txt | ../src/mapper.py 160 45 | sort | ../reducer.py > ./prediction_160_45.txt
echo 'Bands 160, Rows 45:' >> _results.txt
../check.py ./prediction_160_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_160_48.txt ]; then
touch ./prediction_160_48.txt
cat ../1_data/train.txt | ../src/mapper.py 160 48 | sort | ../reducer.py > ./prediction_160_48.txt
echo 'Bands 160, Rows 48:' >> _results.txt
../check.py ./prediction_160_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_160_51.txt ]; then
touch ./prediction_160_51.txt
cat ../1_data/train.txt | ../src/mapper.py 160 51 | sort | ../reducer.py > ./prediction_160_51.txt
echo 'Bands 160, Rows 51:' >> _results.txt
../check.py ./prediction_160_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_160_54.txt ]; then
touch ./prediction_160_54.txt
cat ../1_data/train.txt | ../src/mapper.py 160 54 | sort | ../reducer.py > ./prediction_160_54.txt
echo 'Bands 160, Rows 54:' >> _results.txt
../check.py ./prediction_160_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_160_57.txt ]; then
touch ./prediction_160_57.txt
cat ../1_data/train.txt | ../src/mapper.py 160 57 | sort | ../reducer.py > ./prediction_160_57.txt
echo 'Bands 160, Rows 57:' >> _results.txt
../check.py ./prediction_160_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_160_60.txt ]; then
touch ./prediction_160_60.txt
cat ../1_data/train.txt | ../src/mapper.py 160 60 | sort | ../reducer.py > ./prediction_160_60.txt
echo 'Bands 160, Rows 60:' >> _results.txt
../check.py ./prediction_160_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_160_63.txt ]; then
touch ./prediction_160_63.txt
cat ../1_data/train.txt | ../src/mapper.py 160 63 | sort | ../reducer.py > ./prediction_160_63.txt
echo 'Bands 160, Rows 63:' >> _results.txt
../check.py ./prediction_160_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_160_66.txt ]; then
touch ./prediction_160_66.txt
cat ../1_data/train.txt | ../src/mapper.py 160 66 | sort | ../reducer.py > ./prediction_160_66.txt
echo 'Bands 160, Rows 66:' >> _results.txt
../check.py ./prediction_160_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_160_69.txt ]; then
touch ./prediction_160_69.txt
cat ../1_data/train.txt | ../src/mapper.py 160 69 | sort | ../reducer.py > ./prediction_160_69.txt
echo 'Bands 160, Rows 69:' >> _results.txt
../check.py ./prediction_160_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_165_42.txt ]; then
touch ./prediction_165_42.txt
cat ../1_data/train.txt | ../src/mapper.py 165 42 | sort | ../reducer.py > ./prediction_165_42.txt
echo 'Bands 165, Rows 42:' >> _results.txt
../check.py ./prediction_165_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_165_45.txt ]; then
touch ./prediction_165_45.txt
cat ../1_data/train.txt | ../src/mapper.py 165 45 | sort | ../reducer.py > ./prediction_165_45.txt
echo 'Bands 165, Rows 45:' >> _results.txt
../check.py ./prediction_165_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_165_48.txt ]; then
touch ./prediction_165_48.txt
cat ../1_data/train.txt | ../src/mapper.py 165 48 | sort | ../reducer.py > ./prediction_165_48.txt
echo 'Bands 165, Rows 48:' >> _results.txt
../check.py ./prediction_165_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_165_51.txt ]; then
touch ./prediction_165_51.txt
cat ../1_data/train.txt | ../src/mapper.py 165 51 | sort | ../reducer.py > ./prediction_165_51.txt
echo 'Bands 165, Rows 51:' >> _results.txt
../check.py ./prediction_165_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_165_54.txt ]; then
touch ./prediction_165_54.txt
cat ../1_data/train.txt | ../src/mapper.py 165 54 | sort | ../reducer.py > ./prediction_165_54.txt
echo 'Bands 165, Rows 54:' >> _results.txt
../check.py ./prediction_165_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_165_57.txt ]; then
touch ./prediction_165_57.txt
cat ../1_data/train.txt | ../src/mapper.py 165 57 | sort | ../reducer.py > ./prediction_165_57.txt
echo 'Bands 165, Rows 57:' >> _results.txt
../check.py ./prediction_165_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_165_60.txt ]; then
touch ./prediction_165_60.txt
cat ../1_data/train.txt | ../src/mapper.py 165 60 | sort | ../reducer.py > ./prediction_165_60.txt
echo 'Bands 165, Rows 60:' >> _results.txt
../check.py ./prediction_165_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_165_63.txt ]; then
touch ./prediction_165_63.txt
cat ../1_data/train.txt | ../src/mapper.py 165 63 | sort | ../reducer.py > ./prediction_165_63.txt
echo 'Bands 165, Rows 63:' >> _results.txt
../check.py ./prediction_165_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_165_66.txt ]; then
touch ./prediction_165_66.txt
cat ../1_data/train.txt | ../src/mapper.py 165 66 | sort | ../reducer.py > ./prediction_165_66.txt
echo 'Bands 165, Rows 66:' >> _results.txt
../check.py ./prediction_165_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_165_69.txt ]; then
touch ./prediction_165_69.txt
cat ../1_data/train.txt | ../src/mapper.py 165 69 | sort | ../reducer.py > ./prediction_165_69.txt
echo 'Bands 165, Rows 69:' >> _results.txt
../check.py ./prediction_165_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_170_42.txt ]; then
touch ./prediction_170_42.txt
cat ../1_data/train.txt | ../src/mapper.py 170 42 | sort | ../reducer.py > ./prediction_170_42.txt
echo 'Bands 170, Rows 42:' >> _results.txt
../check.py ./prediction_170_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_170_45.txt ]; then
touch ./prediction_170_45.txt
cat ../1_data/train.txt | ../src/mapper.py 170 45 | sort | ../reducer.py > ./prediction_170_45.txt
echo 'Bands 170, Rows 45:' >> _results.txt
../check.py ./prediction_170_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_170_48.txt ]; then
touch ./prediction_170_48.txt
cat ../1_data/train.txt | ../src/mapper.py 170 48 | sort | ../reducer.py > ./prediction_170_48.txt
echo 'Bands 170, Rows 48:' >> _results.txt
../check.py ./prediction_170_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_170_51.txt ]; then
touch ./prediction_170_51.txt
cat ../1_data/train.txt | ../src/mapper.py 170 51 | sort | ../reducer.py > ./prediction_170_51.txt
echo 'Bands 170, Rows 51:' >> _results.txt
../check.py ./prediction_170_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_170_54.txt ]; then
touch ./prediction_170_54.txt
cat ../1_data/train.txt | ../src/mapper.py 170 54 | sort | ../reducer.py > ./prediction_170_54.txt
echo 'Bands 170, Rows 54:' >> _results.txt
../check.py ./prediction_170_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_170_57.txt ]; then
touch ./prediction_170_57.txt
cat ../1_data/train.txt | ../src/mapper.py 170 57 | sort | ../reducer.py > ./prediction_170_57.txt
echo 'Bands 170, Rows 57:' >> _results.txt
../check.py ./prediction_170_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_170_60.txt ]; then
touch ./prediction_170_60.txt
cat ../1_data/train.txt | ../src/mapper.py 170 60 | sort | ../reducer.py > ./prediction_170_60.txt
echo 'Bands 170, Rows 60:' >> _results.txt
../check.py ./prediction_170_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_170_63.txt ]; then
touch ./prediction_170_63.txt
cat ../1_data/train.txt | ../src/mapper.py 170 63 | sort | ../reducer.py > ./prediction_170_63.txt
echo 'Bands 170, Rows 63:' >> _results.txt
../check.py ./prediction_170_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_170_66.txt ]; then
touch ./prediction_170_66.txt
cat ../1_data/train.txt | ../src/mapper.py 170 66 | sort | ../reducer.py > ./prediction_170_66.txt
echo 'Bands 170, Rows 66:' >> _results.txt
../check.py ./prediction_170_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_170_69.txt ]; then
touch ./prediction_170_69.txt
cat ../1_data/train.txt | ../src/mapper.py 170 69 | sort | ../reducer.py > ./prediction_170_69.txt
echo 'Bands 170, Rows 69:' >> _results.txt
../check.py ./prediction_170_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_175_42.txt ]; then
touch ./prediction_175_42.txt
cat ../1_data/train.txt | ../src/mapper.py 175 42 | sort | ../reducer.py > ./prediction_175_42.txt
echo 'Bands 175, Rows 42:' >> _results.txt
../check.py ./prediction_175_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_175_45.txt ]; then
touch ./prediction_175_45.txt
cat ../1_data/train.txt | ../src/mapper.py 175 45 | sort | ../reducer.py > ./prediction_175_45.txt
echo 'Bands 175, Rows 45:' >> _results.txt
../check.py ./prediction_175_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_175_48.txt ]; then
touch ./prediction_175_48.txt
cat ../1_data/train.txt | ../src/mapper.py 175 48 | sort | ../reducer.py > ./prediction_175_48.txt
echo 'Bands 175, Rows 48:' >> _results.txt
../check.py ./prediction_175_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_175_51.txt ]; then
touch ./prediction_175_51.txt
cat ../1_data/train.txt | ../src/mapper.py 175 51 | sort | ../reducer.py > ./prediction_175_51.txt
echo 'Bands 175, Rows 51:' >> _results.txt
../check.py ./prediction_175_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_175_54.txt ]; then
touch ./prediction_175_54.txt
cat ../1_data/train.txt | ../src/mapper.py 175 54 | sort | ../reducer.py > ./prediction_175_54.txt
echo 'Bands 175, Rows 54:' >> _results.txt
../check.py ./prediction_175_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_175_57.txt ]; then
touch ./prediction_175_57.txt
cat ../1_data/train.txt | ../src/mapper.py 175 57 | sort | ../reducer.py > ./prediction_175_57.txt
echo 'Bands 175, Rows 57:' >> _results.txt
../check.py ./prediction_175_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_175_60.txt ]; then
touch ./prediction_175_60.txt
cat ../1_data/train.txt | ../src/mapper.py 175 60 | sort | ../reducer.py > ./prediction_175_60.txt
echo 'Bands 175, Rows 60:' >> _results.txt
../check.py ./prediction_175_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_175_63.txt ]; then
touch ./prediction_175_63.txt
cat ../1_data/train.txt | ../src/mapper.py 175 63 | sort | ../reducer.py > ./prediction_175_63.txt
echo 'Bands 175, Rows 63:' >> _results.txt
../check.py ./prediction_175_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_175_66.txt ]; then
touch ./prediction_175_66.txt
cat ../1_data/train.txt | ../src/mapper.py 175 66 | sort | ../reducer.py > ./prediction_175_66.txt
echo 'Bands 175, Rows 66:' >> _results.txt
../check.py ./prediction_175_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_175_69.txt ]; then
touch ./prediction_175_69.txt
cat ../1_data/train.txt | ../src/mapper.py 175 69 | sort | ../reducer.py > ./prediction_175_69.txt
echo 'Bands 175, Rows 69:' >> _results.txt
../check.py ./prediction_175_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_180_42.txt ]; then
touch ./prediction_180_42.txt
cat ../1_data/train.txt | ../src/mapper.py 180 42 | sort | ../reducer.py > ./prediction_180_42.txt
echo 'Bands 180, Rows 42:' >> _results.txt
../check.py ./prediction_180_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_180_45.txt ]; then
touch ./prediction_180_45.txt
cat ../1_data/train.txt | ../src/mapper.py 180 45 | sort | ../reducer.py > ./prediction_180_45.txt
echo 'Bands 180, Rows 45:' >> _results.txt
../check.py ./prediction_180_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_180_48.txt ]; then
touch ./prediction_180_48.txt
cat ../1_data/train.txt | ../src/mapper.py 180 48 | sort | ../reducer.py > ./prediction_180_48.txt
echo 'Bands 180, Rows 48:' >> _results.txt
../check.py ./prediction_180_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_180_51.txt ]; then
touch ./prediction_180_51.txt
cat ../1_data/train.txt | ../src/mapper.py 180 51 | sort | ../reducer.py > ./prediction_180_51.txt
echo 'Bands 180, Rows 51:' >> _results.txt
../check.py ./prediction_180_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_180_54.txt ]; then
touch ./prediction_180_54.txt
cat ../1_data/train.txt | ../src/mapper.py 180 54 | sort | ../reducer.py > ./prediction_180_54.txt
echo 'Bands 180, Rows 54:' >> _results.txt
../check.py ./prediction_180_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_180_57.txt ]; then
touch ./prediction_180_57.txt
cat ../1_data/train.txt | ../src/mapper.py 180 57 | sort | ../reducer.py > ./prediction_180_57.txt
echo 'Bands 180, Rows 57:' >> _results.txt
../check.py ./prediction_180_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_180_60.txt ]; then
touch ./prediction_180_60.txt
cat ../1_data/train.txt | ../src/mapper.py 180 60 | sort | ../reducer.py > ./prediction_180_60.txt
echo 'Bands 180, Rows 60:' >> _results.txt
../check.py ./prediction_180_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_180_63.txt ]; then
touch ./prediction_180_63.txt
cat ../1_data/train.txt | ../src/mapper.py 180 63 | sort | ../reducer.py > ./prediction_180_63.txt
echo 'Bands 180, Rows 63:' >> _results.txt
../check.py ./prediction_180_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_180_66.txt ]; then
touch ./prediction_180_66.txt
cat ../1_data/train.txt | ../src/mapper.py 180 66 | sort | ../reducer.py > ./prediction_180_66.txt
echo 'Bands 180, Rows 66:' >> _results.txt
../check.py ./prediction_180_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_180_69.txt ]; then
touch ./prediction_180_69.txt
cat ../1_data/train.txt | ../src/mapper.py 180 69 | sort | ../reducer.py > ./prediction_180_69.txt
echo 'Bands 180, Rows 69:' >> _results.txt
../check.py ./prediction_180_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_185_42.txt ]; then
touch ./prediction_185_42.txt
cat ../1_data/train.txt | ../src/mapper.py 185 42 | sort | ../reducer.py > ./prediction_185_42.txt
echo 'Bands 185, Rows 42:' >> _results.txt
../check.py ./prediction_185_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_185_45.txt ]; then
touch ./prediction_185_45.txt
cat ../1_data/train.txt | ../src/mapper.py 185 45 | sort | ../reducer.py > ./prediction_185_45.txt
echo 'Bands 185, Rows 45:' >> _results.txt
../check.py ./prediction_185_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_185_48.txt ]; then
touch ./prediction_185_48.txt
cat ../1_data/train.txt | ../src/mapper.py 185 48 | sort | ../reducer.py > ./prediction_185_48.txt
echo 'Bands 185, Rows 48:' >> _results.txt
../check.py ./prediction_185_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_185_51.txt ]; then
touch ./prediction_185_51.txt
cat ../1_data/train.txt | ../src/mapper.py 185 51 | sort | ../reducer.py > ./prediction_185_51.txt
echo 'Bands 185, Rows 51:' >> _results.txt
../check.py ./prediction_185_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_185_54.txt ]; then
touch ./prediction_185_54.txt
cat ../1_data/train.txt | ../src/mapper.py 185 54 | sort | ../reducer.py > ./prediction_185_54.txt
echo 'Bands 185, Rows 54:' >> _results.txt
../check.py ./prediction_185_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_185_57.txt ]; then
touch ./prediction_185_57.txt
cat ../1_data/train.txt | ../src/mapper.py 185 57 | sort | ../reducer.py > ./prediction_185_57.txt
echo 'Bands 185, Rows 57:' >> _results.txt
../check.py ./prediction_185_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_185_60.txt ]; then
touch ./prediction_185_60.txt
cat ../1_data/train.txt | ../src/mapper.py 185 60 | sort | ../reducer.py > ./prediction_185_60.txt
echo 'Bands 185, Rows 60:' >> _results.txt
../check.py ./prediction_185_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_185_63.txt ]; then
touch ./prediction_185_63.txt
cat ../1_data/train.txt | ../src/mapper.py 185 63 | sort | ../reducer.py > ./prediction_185_63.txt
echo 'Bands 185, Rows 63:' >> _results.txt
../check.py ./prediction_185_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_185_66.txt ]; then
touch ./prediction_185_66.txt
cat ../1_data/train.txt | ../src/mapper.py 185 66 | sort | ../reducer.py > ./prediction_185_66.txt
echo 'Bands 185, Rows 66:' >> _results.txt
../check.py ./prediction_185_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_185_69.txt ]; then
touch ./prediction_185_69.txt
cat ../1_data/train.txt | ../src/mapper.py 185 69 | sort | ../reducer.py > ./prediction_185_69.txt
echo 'Bands 185, Rows 69:' >> _results.txt
../check.py ./prediction_185_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_190_42.txt ]; then
touch ./prediction_190_42.txt
cat ../1_data/train.txt | ../src/mapper.py 190 42 | sort | ../reducer.py > ./prediction_190_42.txt
echo 'Bands 190, Rows 42:' >> _results.txt
../check.py ./prediction_190_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_190_45.txt ]; then
touch ./prediction_190_45.txt
cat ../1_data/train.txt | ../src/mapper.py 190 45 | sort | ../reducer.py > ./prediction_190_45.txt
echo 'Bands 190, Rows 45:' >> _results.txt
../check.py ./prediction_190_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_190_48.txt ]; then
touch ./prediction_190_48.txt
cat ../1_data/train.txt | ../src/mapper.py 190 48 | sort | ../reducer.py > ./prediction_190_48.txt
echo 'Bands 190, Rows 48:' >> _results.txt
../check.py ./prediction_190_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_190_51.txt ]; then
touch ./prediction_190_51.txt
cat ../1_data/train.txt | ../src/mapper.py 190 51 | sort | ../reducer.py > ./prediction_190_51.txt
echo 'Bands 190, Rows 51:' >> _results.txt
../check.py ./prediction_190_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_190_54.txt ]; then
touch ./prediction_190_54.txt
cat ../1_data/train.txt | ../src/mapper.py 190 54 | sort | ../reducer.py > ./prediction_190_54.txt
echo 'Bands 190, Rows 54:' >> _results.txt
../check.py ./prediction_190_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_190_57.txt ]; then
touch ./prediction_190_57.txt
cat ../1_data/train.txt | ../src/mapper.py 190 57 | sort | ../reducer.py > ./prediction_190_57.txt
echo 'Bands 190, Rows 57:' >> _results.txt
../check.py ./prediction_190_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_190_60.txt ]; then
touch ./prediction_190_60.txt
cat ../1_data/train.txt | ../src/mapper.py 190 60 | sort | ../reducer.py > ./prediction_190_60.txt
echo 'Bands 190, Rows 60:' >> _results.txt
../check.py ./prediction_190_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_190_63.txt ]; then
touch ./prediction_190_63.txt
cat ../1_data/train.txt | ../src/mapper.py 190 63 | sort | ../reducer.py > ./prediction_190_63.txt
echo 'Bands 190, Rows 63:' >> _results.txt
../check.py ./prediction_190_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_190_66.txt ]; then
touch ./prediction_190_66.txt
cat ../1_data/train.txt | ../src/mapper.py 190 66 | sort | ../reducer.py > ./prediction_190_66.txt
echo 'Bands 190, Rows 66:' >> _results.txt
../check.py ./prediction_190_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_190_69.txt ]; then
touch ./prediction_190_69.txt
cat ../1_data/train.txt | ../src/mapper.py 190 69 | sort | ../reducer.py > ./prediction_190_69.txt
echo 'Bands 190, Rows 69:' >> _results.txt
../check.py ./prediction_190_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_195_42.txt ]; then
touch ./prediction_195_42.txt
cat ../1_data/train.txt | ../src/mapper.py 195 42 | sort | ../reducer.py > ./prediction_195_42.txt
echo 'Bands 195, Rows 42:' >> _results.txt
../check.py ./prediction_195_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_195_45.txt ]; then
touch ./prediction_195_45.txt
cat ../1_data/train.txt | ../src/mapper.py 195 45 | sort | ../reducer.py > ./prediction_195_45.txt
echo 'Bands 195, Rows 45:' >> _results.txt
../check.py ./prediction_195_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_195_48.txt ]; then
touch ./prediction_195_48.txt
cat ../1_data/train.txt | ../src/mapper.py 195 48 | sort | ../reducer.py > ./prediction_195_48.txt
echo 'Bands 195, Rows 48:' >> _results.txt
../check.py ./prediction_195_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_195_51.txt ]; then
touch ./prediction_195_51.txt
cat ../1_data/train.txt | ../src/mapper.py 195 51 | sort | ../reducer.py > ./prediction_195_51.txt
echo 'Bands 195, Rows 51:' >> _results.txt
../check.py ./prediction_195_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_195_54.txt ]; then
touch ./prediction_195_54.txt
cat ../1_data/train.txt | ../src/mapper.py 195 54 | sort | ../reducer.py > ./prediction_195_54.txt
echo 'Bands 195, Rows 54:' >> _results.txt
../check.py ./prediction_195_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_195_57.txt ]; then
touch ./prediction_195_57.txt
cat ../1_data/train.txt | ../src/mapper.py 195 57 | sort | ../reducer.py > ./prediction_195_57.txt
echo 'Bands 195, Rows 57:' >> _results.txt
../check.py ./prediction_195_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_195_60.txt ]; then
touch ./prediction_195_60.txt
cat ../1_data/train.txt | ../src/mapper.py 195 60 | sort | ../reducer.py > ./prediction_195_60.txt
echo 'Bands 195, Rows 60:' >> _results.txt
../check.py ./prediction_195_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_195_63.txt ]; then
touch ./prediction_195_63.txt
cat ../1_data/train.txt | ../src/mapper.py 195 63 | sort | ../reducer.py > ./prediction_195_63.txt
echo 'Bands 195, Rows 63:' >> _results.txt
../check.py ./prediction_195_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_195_66.txt ]; then
touch ./prediction_195_66.txt
cat ../1_data/train.txt | ../src/mapper.py 195 66 | sort | ../reducer.py > ./prediction_195_66.txt
echo 'Bands 195, Rows 66:' >> _results.txt
../check.py ./prediction_195_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_195_69.txt ]; then
touch ./prediction_195_69.txt
cat ../1_data/train.txt | ../src/mapper.py 195 69 | sort | ../reducer.py > ./prediction_195_69.txt
echo 'Bands 195, Rows 69:' >> _results.txt
../check.py ./prediction_195_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_200_42.txt ]; then
touch ./prediction_200_42.txt
cat ../1_data/train.txt | ../src/mapper.py 200 42 | sort | ../reducer.py > ./prediction_200_42.txt
echo 'Bands 200, Rows 42:' >> _results.txt
../check.py ./prediction_200_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_200_45.txt ]; then
touch ./prediction_200_45.txt
cat ../1_data/train.txt | ../src/mapper.py 200 45 | sort | ../reducer.py > ./prediction_200_45.txt
echo 'Bands 200, Rows 45:' >> _results.txt
../check.py ./prediction_200_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_200_48.txt ]; then
touch ./prediction_200_48.txt
cat ../1_data/train.txt | ../src/mapper.py 200 48 | sort | ../reducer.py > ./prediction_200_48.txt
echo 'Bands 200, Rows 48:' >> _results.txt
../check.py ./prediction_200_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_200_51.txt ]; then
touch ./prediction_200_51.txt
cat ../1_data/train.txt | ../src/mapper.py 200 51 | sort | ../reducer.py > ./prediction_200_51.txt
echo 'Bands 200, Rows 51:' >> _results.txt
../check.py ./prediction_200_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_200_54.txt ]; then
touch ./prediction_200_54.txt
cat ../1_data/train.txt | ../src/mapper.py 200 54 | sort | ../reducer.py > ./prediction_200_54.txt
echo 'Bands 200, Rows 54:' >> _results.txt
../check.py ./prediction_200_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_200_57.txt ]; then
touch ./prediction_200_57.txt
cat ../1_data/train.txt | ../src/mapper.py 200 57 | sort | ../reducer.py > ./prediction_200_57.txt
echo 'Bands 200, Rows 57:' >> _results.txt
../check.py ./prediction_200_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_200_60.txt ]; then
touch ./prediction_200_60.txt
cat ../1_data/train.txt | ../src/mapper.py 200 60 | sort | ../reducer.py > ./prediction_200_60.txt
echo 'Bands 200, Rows 60:' >> _results.txt
../check.py ./prediction_200_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_200_63.txt ]; then
touch ./prediction_200_63.txt
cat ../1_data/train.txt | ../src/mapper.py 200 63 | sort | ../reducer.py > ./prediction_200_63.txt
echo 'Bands 200, Rows 63:' >> _results.txt
../check.py ./prediction_200_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_200_66.txt ]; then
touch ./prediction_200_66.txt
cat ../1_data/train.txt | ../src/mapper.py 200 66 | sort | ../reducer.py > ./prediction_200_66.txt
echo 'Bands 200, Rows 66:' >> _results.txt
../check.py ./prediction_200_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_200_69.txt ]; then
touch ./prediction_200_69.txt
cat ../1_data/train.txt | ../src/mapper.py 200 69 | sort | ../reducer.py > ./prediction_200_69.txt
echo 'Bands 200, Rows 69:' >> _results.txt
../check.py ./prediction_200_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_205_42.txt ]; then
touch ./prediction_205_42.txt
cat ../1_data/train.txt | ../src/mapper.py 205 42 | sort | ../reducer.py > ./prediction_205_42.txt
echo 'Bands 205, Rows 42:' >> _results.txt
../check.py ./prediction_205_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_205_45.txt ]; then
touch ./prediction_205_45.txt
cat ../1_data/train.txt | ../src/mapper.py 205 45 | sort | ../reducer.py > ./prediction_205_45.txt
echo 'Bands 205, Rows 45:' >> _results.txt
../check.py ./prediction_205_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_205_48.txt ]; then
touch ./prediction_205_48.txt
cat ../1_data/train.txt | ../src/mapper.py 205 48 | sort | ../reducer.py > ./prediction_205_48.txt
echo 'Bands 205, Rows 48:' >> _results.txt
../check.py ./prediction_205_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_205_51.txt ]; then
touch ./prediction_205_51.txt
cat ../1_data/train.txt | ../src/mapper.py 205 51 | sort | ../reducer.py > ./prediction_205_51.txt
echo 'Bands 205, Rows 51:' >> _results.txt
../check.py ./prediction_205_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_205_54.txt ]; then
touch ./prediction_205_54.txt
cat ../1_data/train.txt | ../src/mapper.py 205 54 | sort | ../reducer.py > ./prediction_205_54.txt
echo 'Bands 205, Rows 54:' >> _results.txt
../check.py ./prediction_205_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_205_57.txt ]; then
touch ./prediction_205_57.txt
cat ../1_data/train.txt | ../src/mapper.py 205 57 | sort | ../reducer.py > ./prediction_205_57.txt
echo 'Bands 205, Rows 57:' >> _results.txt
../check.py ./prediction_205_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_205_60.txt ]; then
touch ./prediction_205_60.txt
cat ../1_data/train.txt | ../src/mapper.py 205 60 | sort | ../reducer.py > ./prediction_205_60.txt
echo 'Bands 205, Rows 60:' >> _results.txt
../check.py ./prediction_205_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_205_63.txt ]; then
touch ./prediction_205_63.txt
cat ../1_data/train.txt | ../src/mapper.py 205 63 | sort | ../reducer.py > ./prediction_205_63.txt
echo 'Bands 205, Rows 63:' >> _results.txt
../check.py ./prediction_205_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_205_66.txt ]; then
touch ./prediction_205_66.txt
cat ../1_data/train.txt | ../src/mapper.py 205 66 | sort | ../reducer.py > ./prediction_205_66.txt
echo 'Bands 205, Rows 66:' >> _results.txt
../check.py ./prediction_205_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_205_69.txt ]; then
touch ./prediction_205_69.txt
cat ../1_data/train.txt | ../src/mapper.py 205 69 | sort | ../reducer.py > ./prediction_205_69.txt
echo 'Bands 205, Rows 69:' >> _results.txt
../check.py ./prediction_205_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_210_42.txt ]; then
touch ./prediction_210_42.txt
cat ../1_data/train.txt | ../src/mapper.py 210 42 | sort | ../reducer.py > ./prediction_210_42.txt
echo 'Bands 210, Rows 42:' >> _results.txt
../check.py ./prediction_210_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_210_45.txt ]; then
touch ./prediction_210_45.txt
cat ../1_data/train.txt | ../src/mapper.py 210 45 | sort | ../reducer.py > ./prediction_210_45.txt
echo 'Bands 210, Rows 45:' >> _results.txt
../check.py ./prediction_210_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_210_48.txt ]; then
touch ./prediction_210_48.txt
cat ../1_data/train.txt | ../src/mapper.py 210 48 | sort | ../reducer.py > ./prediction_210_48.txt
echo 'Bands 210, Rows 48:' >> _results.txt
../check.py ./prediction_210_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_210_51.txt ]; then
touch ./prediction_210_51.txt
cat ../1_data/train.txt | ../src/mapper.py 210 51 | sort | ../reducer.py > ./prediction_210_51.txt
echo 'Bands 210, Rows 51:' >> _results.txt
../check.py ./prediction_210_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_210_54.txt ]; then
touch ./prediction_210_54.txt
cat ../1_data/train.txt | ../src/mapper.py 210 54 | sort | ../reducer.py > ./prediction_210_54.txt
echo 'Bands 210, Rows 54:' >> _results.txt
../check.py ./prediction_210_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_210_57.txt ]; then
touch ./prediction_210_57.txt
cat ../1_data/train.txt | ../src/mapper.py 210 57 | sort | ../reducer.py > ./prediction_210_57.txt
echo 'Bands 210, Rows 57:' >> _results.txt
../check.py ./prediction_210_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_210_60.txt ]; then
touch ./prediction_210_60.txt
cat ../1_data/train.txt | ../src/mapper.py 210 60 | sort | ../reducer.py > ./prediction_210_60.txt
echo 'Bands 210, Rows 60:' >> _results.txt
../check.py ./prediction_210_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_210_63.txt ]; then
touch ./prediction_210_63.txt
cat ../1_data/train.txt | ../src/mapper.py 210 63 | sort | ../reducer.py > ./prediction_210_63.txt
echo 'Bands 210, Rows 63:' >> _results.txt
../check.py ./prediction_210_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_210_66.txt ]; then
touch ./prediction_210_66.txt
cat ../1_data/train.txt | ../src/mapper.py 210 66 | sort | ../reducer.py > ./prediction_210_66.txt
echo 'Bands 210, Rows 66:' >> _results.txt
../check.py ./prediction_210_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_210_69.txt ]; then
touch ./prediction_210_69.txt
cat ../1_data/train.txt | ../src/mapper.py 210 69 | sort | ../reducer.py > ./prediction_210_69.txt
echo 'Bands 210, Rows 69:' >> _results.txt
../check.py ./prediction_210_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_215_42.txt ]; then
touch ./prediction_215_42.txt
cat ../1_data/train.txt | ../src/mapper.py 215 42 | sort | ../reducer.py > ./prediction_215_42.txt
echo 'Bands 215, Rows 42:' >> _results.txt
../check.py ./prediction_215_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_215_45.txt ]; then
touch ./prediction_215_45.txt
cat ../1_data/train.txt | ../src/mapper.py 215 45 | sort | ../reducer.py > ./prediction_215_45.txt
echo 'Bands 215, Rows 45:' >> _results.txt
../check.py ./prediction_215_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_215_48.txt ]; then
touch ./prediction_215_48.txt
cat ../1_data/train.txt | ../src/mapper.py 215 48 | sort | ../reducer.py > ./prediction_215_48.txt
echo 'Bands 215, Rows 48:' >> _results.txt
../check.py ./prediction_215_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_215_51.txt ]; then
touch ./prediction_215_51.txt
cat ../1_data/train.txt | ../src/mapper.py 215 51 | sort | ../reducer.py > ./prediction_215_51.txt
echo 'Bands 215, Rows 51:' >> _results.txt
../check.py ./prediction_215_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_215_54.txt ]; then
touch ./prediction_215_54.txt
cat ../1_data/train.txt | ../src/mapper.py 215 54 | sort | ../reducer.py > ./prediction_215_54.txt
echo 'Bands 215, Rows 54:' >> _results.txt
../check.py ./prediction_215_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_215_57.txt ]; then
touch ./prediction_215_57.txt
cat ../1_data/train.txt | ../src/mapper.py 215 57 | sort | ../reducer.py > ./prediction_215_57.txt
echo 'Bands 215, Rows 57:' >> _results.txt
../check.py ./prediction_215_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_215_60.txt ]; then
touch ./prediction_215_60.txt
cat ../1_data/train.txt | ../src/mapper.py 215 60 | sort | ../reducer.py > ./prediction_215_60.txt
echo 'Bands 215, Rows 60:' >> _results.txt
../check.py ./prediction_215_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_215_63.txt ]; then
touch ./prediction_215_63.txt
cat ../1_data/train.txt | ../src/mapper.py 215 63 | sort | ../reducer.py > ./prediction_215_63.txt
echo 'Bands 215, Rows 63:' >> _results.txt
../check.py ./prediction_215_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_215_66.txt ]; then
touch ./prediction_215_66.txt
cat ../1_data/train.txt | ../src/mapper.py 215 66 | sort | ../reducer.py > ./prediction_215_66.txt
echo 'Bands 215, Rows 66:' >> _results.txt
../check.py ./prediction_215_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_215_69.txt ]; then
touch ./prediction_215_69.txt
cat ../1_data/train.txt | ../src/mapper.py 215 69 | sort | ../reducer.py > ./prediction_215_69.txt
echo 'Bands 215, Rows 69:' >> _results.txt
../check.py ./prediction_215_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_220_42.txt ]; then
touch ./prediction_220_42.txt
cat ../1_data/train.txt | ../src/mapper.py 220 42 | sort | ../reducer.py > ./prediction_220_42.txt
echo 'Bands 220, Rows 42:' >> _results.txt
../check.py ./prediction_220_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_220_45.txt ]; then
touch ./prediction_220_45.txt
cat ../1_data/train.txt | ../src/mapper.py 220 45 | sort | ../reducer.py > ./prediction_220_45.txt
echo 'Bands 220, Rows 45:' >> _results.txt
../check.py ./prediction_220_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_220_48.txt ]; then
touch ./prediction_220_48.txt
cat ../1_data/train.txt | ../src/mapper.py 220 48 | sort | ../reducer.py > ./prediction_220_48.txt
echo 'Bands 220, Rows 48:' >> _results.txt
../check.py ./prediction_220_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_220_51.txt ]; then
touch ./prediction_220_51.txt
cat ../1_data/train.txt | ../src/mapper.py 220 51 | sort | ../reducer.py > ./prediction_220_51.txt
echo 'Bands 220, Rows 51:' >> _results.txt
../check.py ./prediction_220_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_220_54.txt ]; then
touch ./prediction_220_54.txt
cat ../1_data/train.txt | ../src/mapper.py 220 54 | sort | ../reducer.py > ./prediction_220_54.txt
echo 'Bands 220, Rows 54:' >> _results.txt
../check.py ./prediction_220_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_220_57.txt ]; then
touch ./prediction_220_57.txt
cat ../1_data/train.txt | ../src/mapper.py 220 57 | sort | ../reducer.py > ./prediction_220_57.txt
echo 'Bands 220, Rows 57:' >> _results.txt
../check.py ./prediction_220_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_220_60.txt ]; then
touch ./prediction_220_60.txt
cat ../1_data/train.txt | ../src/mapper.py 220 60 | sort | ../reducer.py > ./prediction_220_60.txt
echo 'Bands 220, Rows 60:' >> _results.txt
../check.py ./prediction_220_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_220_63.txt ]; then
touch ./prediction_220_63.txt
cat ../1_data/train.txt | ../src/mapper.py 220 63 | sort | ../reducer.py > ./prediction_220_63.txt
echo 'Bands 220, Rows 63:' >> _results.txt
../check.py ./prediction_220_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_220_66.txt ]; then
touch ./prediction_220_66.txt
cat ../1_data/train.txt | ../src/mapper.py 220 66 | sort | ../reducer.py > ./prediction_220_66.txt
echo 'Bands 220, Rows 66:' >> _results.txt
../check.py ./prediction_220_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_220_69.txt ]; then
touch ./prediction_220_69.txt
cat ../1_data/train.txt | ../src/mapper.py 220 69 | sort | ../reducer.py > ./prediction_220_69.txt
echo 'Bands 220, Rows 69:' >> _results.txt
../check.py ./prediction_220_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_225_42.txt ]; then
touch ./prediction_225_42.txt
cat ../1_data/train.txt | ../src/mapper.py 225 42 | sort | ../reducer.py > ./prediction_225_42.txt
echo 'Bands 225, Rows 42:' >> _results.txt
../check.py ./prediction_225_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_225_45.txt ]; then
touch ./prediction_225_45.txt
cat ../1_data/train.txt | ../src/mapper.py 225 45 | sort | ../reducer.py > ./prediction_225_45.txt
echo 'Bands 225, Rows 45:' >> _results.txt
../check.py ./prediction_225_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_225_48.txt ]; then
touch ./prediction_225_48.txt
cat ../1_data/train.txt | ../src/mapper.py 225 48 | sort | ../reducer.py > ./prediction_225_48.txt
echo 'Bands 225, Rows 48:' >> _results.txt
../check.py ./prediction_225_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_225_51.txt ]; then
touch ./prediction_225_51.txt
cat ../1_data/train.txt | ../src/mapper.py 225 51 | sort | ../reducer.py > ./prediction_225_51.txt
echo 'Bands 225, Rows 51:' >> _results.txt
../check.py ./prediction_225_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_225_54.txt ]; then
touch ./prediction_225_54.txt
cat ../1_data/train.txt | ../src/mapper.py 225 54 | sort | ../reducer.py > ./prediction_225_54.txt
echo 'Bands 225, Rows 54:' >> _results.txt
../check.py ./prediction_225_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_225_57.txt ]; then
touch ./prediction_225_57.txt
cat ../1_data/train.txt | ../src/mapper.py 225 57 | sort | ../reducer.py > ./prediction_225_57.txt
echo 'Bands 225, Rows 57:' >> _results.txt
../check.py ./prediction_225_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_225_60.txt ]; then
touch ./prediction_225_60.txt
cat ../1_data/train.txt | ../src/mapper.py 225 60 | sort | ../reducer.py > ./prediction_225_60.txt
echo 'Bands 225, Rows 60:' >> _results.txt
../check.py ./prediction_225_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_225_63.txt ]; then
touch ./prediction_225_63.txt
cat ../1_data/train.txt | ../src/mapper.py 225 63 | sort | ../reducer.py > ./prediction_225_63.txt
echo 'Bands 225, Rows 63:' >> _results.txt
../check.py ./prediction_225_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_225_66.txt ]; then
touch ./prediction_225_66.txt
cat ../1_data/train.txt | ../src/mapper.py 225 66 | sort | ../reducer.py > ./prediction_225_66.txt
echo 'Bands 225, Rows 66:' >> _results.txt
../check.py ./prediction_225_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_225_69.txt ]; then
touch ./prediction_225_69.txt
cat ../1_data/train.txt | ../src/mapper.py 225 69 | sort | ../reducer.py > ./prediction_225_69.txt
echo 'Bands 225, Rows 69:' >> _results.txt
../check.py ./prediction_225_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_230_42.txt ]; then
touch ./prediction_230_42.txt
cat ../1_data/train.txt | ../src/mapper.py 230 42 | sort | ../reducer.py > ./prediction_230_42.txt
echo 'Bands 230, Rows 42:' >> _results.txt
../check.py ./prediction_230_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_230_45.txt ]; then
touch ./prediction_230_45.txt
cat ../1_data/train.txt | ../src/mapper.py 230 45 | sort | ../reducer.py > ./prediction_230_45.txt
echo 'Bands 230, Rows 45:' >> _results.txt
../check.py ./prediction_230_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_230_48.txt ]; then
touch ./prediction_230_48.txt
cat ../1_data/train.txt | ../src/mapper.py 230 48 | sort | ../reducer.py > ./prediction_230_48.txt
echo 'Bands 230, Rows 48:' >> _results.txt
../check.py ./prediction_230_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_230_51.txt ]; then
touch ./prediction_230_51.txt
cat ../1_data/train.txt | ../src/mapper.py 230 51 | sort | ../reducer.py > ./prediction_230_51.txt
echo 'Bands 230, Rows 51:' >> _results.txt
../check.py ./prediction_230_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_230_54.txt ]; then
touch ./prediction_230_54.txt
cat ../1_data/train.txt | ../src/mapper.py 230 54 | sort | ../reducer.py > ./prediction_230_54.txt
echo 'Bands 230, Rows 54:' >> _results.txt
../check.py ./prediction_230_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_230_57.txt ]; then
touch ./prediction_230_57.txt
cat ../1_data/train.txt | ../src/mapper.py 230 57 | sort | ../reducer.py > ./prediction_230_57.txt
echo 'Bands 230, Rows 57:' >> _results.txt
../check.py ./prediction_230_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_230_60.txt ]; then
touch ./prediction_230_60.txt
cat ../1_data/train.txt | ../src/mapper.py 230 60 | sort | ../reducer.py > ./prediction_230_60.txt
echo 'Bands 230, Rows 60:' >> _results.txt
../check.py ./prediction_230_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_230_63.txt ]; then
touch ./prediction_230_63.txt
cat ../1_data/train.txt | ../src/mapper.py 230 63 | sort | ../reducer.py > ./prediction_230_63.txt
echo 'Bands 230, Rows 63:' >> _results.txt
../check.py ./prediction_230_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_230_66.txt ]; then
touch ./prediction_230_66.txt
cat ../1_data/train.txt | ../src/mapper.py 230 66 | sort | ../reducer.py > ./prediction_230_66.txt
echo 'Bands 230, Rows 66:' >> _results.txt
../check.py ./prediction_230_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_230_69.txt ]; then
touch ./prediction_230_69.txt
cat ../1_data/train.txt | ../src/mapper.py 230 69 | sort | ../reducer.py > ./prediction_230_69.txt
echo 'Bands 230, Rows 69:' >> _results.txt
../check.py ./prediction_230_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_235_42.txt ]; then
touch ./prediction_235_42.txt
cat ../1_data/train.txt | ../src/mapper.py 235 42 | sort | ../reducer.py > ./prediction_235_42.txt
echo 'Bands 235, Rows 42:' >> _results.txt
../check.py ./prediction_235_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_235_45.txt ]; then
touch ./prediction_235_45.txt
cat ../1_data/train.txt | ../src/mapper.py 235 45 | sort | ../reducer.py > ./prediction_235_45.txt
echo 'Bands 235, Rows 45:' >> _results.txt
../check.py ./prediction_235_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_235_48.txt ]; then
touch ./prediction_235_48.txt
cat ../1_data/train.txt | ../src/mapper.py 235 48 | sort | ../reducer.py > ./prediction_235_48.txt
echo 'Bands 235, Rows 48:' >> _results.txt
../check.py ./prediction_235_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_235_51.txt ]; then
touch ./prediction_235_51.txt
cat ../1_data/train.txt | ../src/mapper.py 235 51 | sort | ../reducer.py > ./prediction_235_51.txt
echo 'Bands 235, Rows 51:' >> _results.txt
../check.py ./prediction_235_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_235_54.txt ]; then
touch ./prediction_235_54.txt
cat ../1_data/train.txt | ../src/mapper.py 235 54 | sort | ../reducer.py > ./prediction_235_54.txt
echo 'Bands 235, Rows 54:' >> _results.txt
../check.py ./prediction_235_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_235_57.txt ]; then
touch ./prediction_235_57.txt
cat ../1_data/train.txt | ../src/mapper.py 235 57 | sort | ../reducer.py > ./prediction_235_57.txt
echo 'Bands 235, Rows 57:' >> _results.txt
../check.py ./prediction_235_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_235_60.txt ]; then
touch ./prediction_235_60.txt
cat ../1_data/train.txt | ../src/mapper.py 235 60 | sort | ../reducer.py > ./prediction_235_60.txt
echo 'Bands 235, Rows 60:' >> _results.txt
../check.py ./prediction_235_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_235_63.txt ]; then
touch ./prediction_235_63.txt
cat ../1_data/train.txt | ../src/mapper.py 235 63 | sort | ../reducer.py > ./prediction_235_63.txt
echo 'Bands 235, Rows 63:' >> _results.txt
../check.py ./prediction_235_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_235_66.txt ]; then
touch ./prediction_235_66.txt
cat ../1_data/train.txt | ../src/mapper.py 235 66 | sort | ../reducer.py > ./prediction_235_66.txt
echo 'Bands 235, Rows 66:' >> _results.txt
../check.py ./prediction_235_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_235_69.txt ]; then
touch ./prediction_235_69.txt
cat ../1_data/train.txt | ../src/mapper.py 235 69 | sort | ../reducer.py > ./prediction_235_69.txt
echo 'Bands 235, Rows 69:' >> _results.txt
../check.py ./prediction_235_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_240_42.txt ]; then
touch ./prediction_240_42.txt
cat ../1_data/train.txt | ../src/mapper.py 240 42 | sort | ../reducer.py > ./prediction_240_42.txt
echo 'Bands 240, Rows 42:' >> _results.txt
../check.py ./prediction_240_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_240_45.txt ]; then
touch ./prediction_240_45.txt
cat ../1_data/train.txt | ../src/mapper.py 240 45 | sort | ../reducer.py > ./prediction_240_45.txt
echo 'Bands 240, Rows 45:' >> _results.txt
../check.py ./prediction_240_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_240_48.txt ]; then
touch ./prediction_240_48.txt
cat ../1_data/train.txt | ../src/mapper.py 240 48 | sort | ../reducer.py > ./prediction_240_48.txt
echo 'Bands 240, Rows 48:' >> _results.txt
../check.py ./prediction_240_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_240_51.txt ]; then
touch ./prediction_240_51.txt
cat ../1_data/train.txt | ../src/mapper.py 240 51 | sort | ../reducer.py > ./prediction_240_51.txt
echo 'Bands 240, Rows 51:' >> _results.txt
../check.py ./prediction_240_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_240_54.txt ]; then
touch ./prediction_240_54.txt
cat ../1_data/train.txt | ../src/mapper.py 240 54 | sort | ../reducer.py > ./prediction_240_54.txt
echo 'Bands 240, Rows 54:' >> _results.txt
../check.py ./prediction_240_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_240_57.txt ]; then
touch ./prediction_240_57.txt
cat ../1_data/train.txt | ../src/mapper.py 240 57 | sort | ../reducer.py > ./prediction_240_57.txt
echo 'Bands 240, Rows 57:' >> _results.txt
../check.py ./prediction_240_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_240_60.txt ]; then
touch ./prediction_240_60.txt
cat ../1_data/train.txt | ../src/mapper.py 240 60 | sort | ../reducer.py > ./prediction_240_60.txt
echo 'Bands 240, Rows 60:' >> _results.txt
../check.py ./prediction_240_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_240_63.txt ]; then
touch ./prediction_240_63.txt
cat ../1_data/train.txt | ../src/mapper.py 240 63 | sort | ../reducer.py > ./prediction_240_63.txt
echo 'Bands 240, Rows 63:' >> _results.txt
../check.py ./prediction_240_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_240_66.txt ]; then
touch ./prediction_240_66.txt
cat ../1_data/train.txt | ../src/mapper.py 240 66 | sort | ../reducer.py > ./prediction_240_66.txt
echo 'Bands 240, Rows 66:' >> _results.txt
../check.py ./prediction_240_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_240_69.txt ]; then
touch ./prediction_240_69.txt
cat ../1_data/train.txt | ../src/mapper.py 240 69 | sort | ../reducer.py > ./prediction_240_69.txt
echo 'Bands 240, Rows 69:' >> _results.txt
../check.py ./prediction_240_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_245_42.txt ]; then
touch ./prediction_245_42.txt
cat ../1_data/train.txt | ../src/mapper.py 245 42 | sort | ../reducer.py > ./prediction_245_42.txt
echo 'Bands 245, Rows 42:' >> _results.txt
../check.py ./prediction_245_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_245_45.txt ]; then
touch ./prediction_245_45.txt
cat ../1_data/train.txt | ../src/mapper.py 245 45 | sort | ../reducer.py > ./prediction_245_45.txt
echo 'Bands 245, Rows 45:' >> _results.txt
../check.py ./prediction_245_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_245_48.txt ]; then
touch ./prediction_245_48.txt
cat ../1_data/train.txt | ../src/mapper.py 245 48 | sort | ../reducer.py > ./prediction_245_48.txt
echo 'Bands 245, Rows 48:' >> _results.txt
../check.py ./prediction_245_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_245_51.txt ]; then
touch ./prediction_245_51.txt
cat ../1_data/train.txt | ../src/mapper.py 245 51 | sort | ../reducer.py > ./prediction_245_51.txt
echo 'Bands 245, Rows 51:' >> _results.txt
../check.py ./prediction_245_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_245_54.txt ]; then
touch ./prediction_245_54.txt
cat ../1_data/train.txt | ../src/mapper.py 245 54 | sort | ../reducer.py > ./prediction_245_54.txt
echo 'Bands 245, Rows 54:' >> _results.txt
../check.py ./prediction_245_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_245_57.txt ]; then
touch ./prediction_245_57.txt
cat ../1_data/train.txt | ../src/mapper.py 245 57 | sort | ../reducer.py > ./prediction_245_57.txt
echo 'Bands 245, Rows 57:' >> _results.txt
../check.py ./prediction_245_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_245_60.txt ]; then
touch ./prediction_245_60.txt
cat ../1_data/train.txt | ../src/mapper.py 245 60 | sort | ../reducer.py > ./prediction_245_60.txt
echo 'Bands 245, Rows 60:' >> _results.txt
../check.py ./prediction_245_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_245_63.txt ]; then
touch ./prediction_245_63.txt
cat ../1_data/train.txt | ../src/mapper.py 245 63 | sort | ../reducer.py > ./prediction_245_63.txt
echo 'Bands 245, Rows 63:' >> _results.txt
../check.py ./prediction_245_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_245_66.txt ]; then
touch ./prediction_245_66.txt
cat ../1_data/train.txt | ../src/mapper.py 245 66 | sort | ../reducer.py > ./prediction_245_66.txt
echo 'Bands 245, Rows 66:' >> _results.txt
../check.py ./prediction_245_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_245_69.txt ]; then
touch ./prediction_245_69.txt
cat ../1_data/train.txt | ../src/mapper.py 245 69 | sort | ../reducer.py > ./prediction_245_69.txt
echo 'Bands 245, Rows 69:' >> _results.txt
../check.py ./prediction_245_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_250_42.txt ]; then
touch ./prediction_250_42.txt
cat ../1_data/train.txt | ../src/mapper.py 250 42 | sort | ../reducer.py > ./prediction_250_42.txt
echo 'Bands 250, Rows 42:' >> _results.txt
../check.py ./prediction_250_42.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_250_45.txt ]; then
touch ./prediction_250_45.txt
cat ../1_data/train.txt | ../src/mapper.py 250 45 | sort | ../reducer.py > ./prediction_250_45.txt
echo 'Bands 250, Rows 45:' >> _results.txt
../check.py ./prediction_250_45.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_250_48.txt ]; then
touch ./prediction_250_48.txt
cat ../1_data/train.txt | ../src/mapper.py 250 48 | sort | ../reducer.py > ./prediction_250_48.txt
echo 'Bands 250, Rows 48:' >> _results.txt
../check.py ./prediction_250_48.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_250_51.txt ]; then
touch ./prediction_250_51.txt
cat ../1_data/train.txt | ../src/mapper.py 250 51 | sort | ../reducer.py > ./prediction_250_51.txt
echo 'Bands 250, Rows 51:' >> _results.txt
../check.py ./prediction_250_51.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_250_54.txt ]; then
touch ./prediction_250_54.txt
cat ../1_data/train.txt | ../src/mapper.py 250 54 | sort | ../reducer.py > ./prediction_250_54.txt
echo 'Bands 250, Rows 54:' >> _results.txt
../check.py ./prediction_250_54.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_250_57.txt ]; then
touch ./prediction_250_57.txt
cat ../1_data/train.txt | ../src/mapper.py 250 57 | sort | ../reducer.py > ./prediction_250_57.txt
echo 'Bands 250, Rows 57:' >> _results.txt
../check.py ./prediction_250_57.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_250_60.txt ]; then
touch ./prediction_250_60.txt
cat ../1_data/train.txt | ../src/mapper.py 250 60 | sort | ../reducer.py > ./prediction_250_60.txt
echo 'Bands 250, Rows 60:' >> _results.txt
../check.py ./prediction_250_60.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_250_63.txt ]; then
touch ./prediction_250_63.txt
cat ../1_data/train.txt | ../src/mapper.py 250 63 | sort | ../reducer.py > ./prediction_250_63.txt
echo 'Bands 250, Rows 63:' >> _results.txt
../check.py ./prediction_250_63.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_250_66.txt ]; then
touch ./prediction_250_66.txt
cat ../1_data/train.txt | ../src/mapper.py 250 66 | sort | ../reducer.py > ./prediction_250_66.txt
echo 'Bands 250, Rows 66:' >> _results.txt
../check.py ./prediction_250_66.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
if [ ! -f ./prediction_250_69.txt ]; then
touch ./prediction_250_69.txt
cat ../1_data/train.txt | ../src/mapper.py 250 69 | sort | ../reducer.py > ./prediction_250_69.txt
echo 'Bands 250, Rows 69:' >> _results.txt
../check.py ./prediction_250_69.txt ../1_data/duplicates.txt >> _results.txt
echo '' >> _results.txt
fi
