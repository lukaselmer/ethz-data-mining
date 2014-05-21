Bandit
======

Introduction
------------

The goal of this task is to learn a policy that explores and exploits among available choices in order to learn user preferences and recommend news articles to users. We use real world log data shared by Yahoo!. The original data was collected over a 10 day period and consists of 45 million log lines that capture the interaction between user visits and 271 news articles, one of which was randomly displayed for every user visit. Note that not all 271 articles are available in every round. Instead, we have a pool of roughly 20 articles to choose from in each round.

In each round, you are given a user context consisting of a timestamp and a six dimensional feature vector and a list of available articles for recommendation. Your task is to then select one article from this pool. If the article you selected matches the one displayed by the random policy, then your policy is evaluated for that log line. Otherwise, the line is discarded. Since the articles were displayed uniformly at random during the data collection phase, there is roughly 5% chance that a given line is evaluated.

Your task is to maximize the fraction of times the article chosen by your policy is clicked by the user.

Project assignment package
--------------------------

The full problem description, including dataset details, evaluation metric, grading policy and the data sets is available here.
