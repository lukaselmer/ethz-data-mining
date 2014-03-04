
/usr/local/Cellar/hadoop121/1.2.1/bin/start-all.sh

hadoop dfs -rmr /user/hduser/mean-output
hadoop dfs -rmr /user/hduser/mean/input
hadoop dfs -copyFromLocal /Users/lukas/data-mining/mean/input /user/hduser/mean/input

hadoop dfs -rmr /user/hduser/mean-output && \
hadoop jar ~/.bin/hadoop-streaming-1.2.1.jar \
-mapper /Users/lukas/data-mining/mean/mapper.py \
-reducer /Users/lukas/data-mining/mean/reducer.py \
-input "/user/hduser/mean/input/input.txt" \
-output /user/hduser/mean-output \
&& hadoop dfs -cat /user/hduser/mean-output/part-00000

# List and output the results
hadoop dfs -ls /user/hduser/mean-output
hadoop dfs -cat /user/hduser/mean-output/part-00000

# Copy data to local dir
hadoop dfs -copyToLocal /user/hduser/mean-output /Users/lukas/data-mining/mean/output

# Delete dir
hadoop dfs -rmr /user/hduser/mean-output
