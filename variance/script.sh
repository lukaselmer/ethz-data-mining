
/usr/local/Cellar/hadoop121/1.2.1/bin/start-all.sh

hadoop dfs -rmr /user/hduser/variance/input
hadoop dfs -copyFromLocal /Users/lukas/data-mining/variance/input /user/hduser/variance/input

hadoop dfs -rmr /user/hduser/variance-output && \
hadoop jar ~/.bin/hadoop-streaming-1.2.1.jar \
-mapper /Users/lukas/data-mining/variance/mapper.py \
-reducer /Users/lukas/data-mining/variance/reducer.py \
-input "/user/hduser/variance/input/input.txt" \
-output /user/hduser/variance-output \
&& hadoop dfs -cat /user/hduser/variance-output/part-00000

# List and output the results
hadoop dfs -ls /user/hduser/variance-output
hadoop dfs -cat /user/hduser/variance-output/part-00000

# Copy data to local dir
hadoop dfs -copyToLocal /user/hduser/variance-output /Users/lukas/data-mining/variance/output

# Delete dir
hadoop dfs -rmr /user/hduser/variance-output
