
/usr/local/Cellar/hadoop121/1.2.1/bin/start-all.sh

hadoop dfs -rmr /user/hduser/1_2_word_count_concise_dictionary-output
hadoop dfs -rmr /user/hduser/1_2_word_count_concise_dictionary/input
hadoop dfs -copyFromLocal /Users/lukas/data-mining/1_2_word_count_concise_dictionary/input /user/hduser/1_2_word_count_concise_dictionary/input

hadoop dfs -rmr /user/hduser/1_2_word_count_concise_dictionary-output && \
hadoop jar ~/.bin/hadoop-streaming-1.2.1.jar \
-mapper /Users/lukas/data-mining/1_2_word_count_concise_dictionary/mapper.py \
-reducer /Users/lukas/data-mining/1_2_word_count_concise_dictionary/reducer.py \
-input "/user/hduser/1_2_word_count_concise_dictionary/input/*.txt" \
-output /user/hduser/1_2_word_count_concise_dictionary-output \
&& hadoop dfs -cat /user/hduser/1_2_word_count_concise_dictionary-output/part-00000



hadoop dfs -rmr /user/hduser/1_2_word_count_concise_dictionary-output && \
hadoop jar ~/.bin/hadoop-streaming-1.2.1.jar \
-mapper /Users/lukas/data-mining/1_2_word_count_concise_dictionary/mapper.py \
-reducer /Users/lukas/data-mining/1_2_word_count_concise_dictionary/reducer.py \
-input "/user/hduser/1_2_word_count_concise_dictionary/input/hw1-data/*.txt" \
-output /user/hduser/1_2_word_count_concise_dictionary-output \
&& hadoop dfs -cat /user/hduser/1_2_word_count_concise_dictionary-output/part-00000



# List and output the results
hadoop dfs -ls /user/hduser/1_2_word_count_concise_dictionary-output
hadoop dfs -cat /user/hduser/1_2_word_count_concise_dictionary-output/part-00000

# Copy data to local dir
hadoop dfs -copyToLocal /user/hduser/1_2_word_count_concise_dictionary-output /Users/lukas/data-mining/1_2_word_count_concise_dictionary/output

# Delete dir
hadoop dfs -rmr /user/hduser/1_2_word_count_concise_dictionary-output
