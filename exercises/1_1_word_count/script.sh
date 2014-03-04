
/usr/local/Cellar/hadoop121/1.2.1/bin/start-all.sh

hadoop dfs -rmr /user/hduser/1_1_word_count-output
hadoop dfs -rmr /user/hduser/1_1_word_count/input
hadoop dfs -copyFromLocal /Users/lukas/data-mining/1_1_word_count/input /user/hduser/1_1_word_count/input

hadoop dfs -rmr /user/hduser/1_1_word_count-output && \
hadoop jar ~/.bin/hadoop-streaming-1.2.1.jar \
-mapper /Users/lukas/data-mining/1_1_word_count/mapper.py \
-reducer /Users/lukas/data-mining/1_1_word_count/reducer.py \
-input "/user/hduser/1_1_word_count/input/*.txt" \
-output /user/hduser/1_1_word_count-output \
&& hadoop dfs -cat /user/hduser/1_1_word_count-output/part-00000



hadoop dfs -rmr /user/hduser/1_1_word_count-output && \
hadoop jar ~/.bin/hadoop-streaming-1.2.1.jar \
-mapper /Users/lukas/data-mining/1_1_word_count/mapper.py \
-reducer /Users/lukas/data-mining/1_1_word_count/reducer.py \
-input "/user/hduser/1_1_word_count/input/hw1-data/*.txt" \
-output /user/hduser/1_1_word_count-output \
&& hadoop dfs -cat /user/hduser/1_1_word_count-output/part-00000



# List and output the results
hadoop dfs -ls /user/hduser/1_1_word_count-output
hadoop dfs -cat /user/hduser/1_1_word_count-output/part-00000

# Copy data to local dir
hadoop dfs -copyToLocal /user/hduser/1_1_word_count-output /Users/lukas/data-mining/1_1_word_count/output

# Delete dir
hadoop dfs -rmr /user/hduser/1_1_word_count-output
