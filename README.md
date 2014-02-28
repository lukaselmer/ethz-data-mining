Data Mining
===========

Important URLs
--------------

* http://localhost:50070/dfshealth.jsp
* http://localhost:50030/jobtracker.jsp
* http://hadoop.apache.org/docs/r1.1.1/single_node_setup.html
* http://www.michael-noll.com/tutorials/writing-an-hadoop-mapreduce-program-in-python/
* http://las.ethz.ch/courses/datamining-s14/recitation/dm_rc-1_hadoop.pdf
* http://las.ethz.ch/courses/datamining-s14/

Usage
-----

```sh
# Start and stop Hadoop
/usr/local/Cellar/hadoop121/1.2.1/bin/start-all.sh
/usr/local/Cellar/hadoop121/1.2.1/bin/stop-all.sh

# Hadoop dir
/usr/local/Cellar/hadoop121/1.2.1

# Copy data to HDFS
hadoop dfs -copyFromLocal /Users/lukas/data-mining/example/input /user/hduser/example

# Run the job
# Mapper and reducer paths are local, input and output paths are HDFS
hadoop jar ~/.bin/hadoop-streaming-1.2.1.jar \
-mapper /Users/lukas/data-mining/example/mapper.py \
-reducer /Users/lukas/data-mining/example/reducer.py \
-input "/user/hduser/example/*" \
-output /user/hduser/example-output

# List and output the results
hadoop dfs -ls /user/hduser/example-output
hadoop dfs -cat /user/hduser/example-output/part-00000

# Copy data to local dir
hadoop dfs -copyToLocal /user/hduser/example-output /Users/lukas/data-mining/example/output

# Delete dir
hadoop dfs -rmr /user/hduser/example-output
```

