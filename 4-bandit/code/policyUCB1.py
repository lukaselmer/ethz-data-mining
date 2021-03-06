#!/usr/bin/env python2.7

import numpy as np

# UCB1 implementation
#
# global variables
np.random.seed(42)
articlesDict = None
bandits = {}        # dictionary of type <articleNr, (meanReward, nrTrials)>
currentRecommendation = None
n = 1

# Evaluator will call this function and pass the article features.
# Check evaluator.py description for details.
def set_articles(art):
    global articlesDict
    articlesDict = art


# This function will be called by the evaluator.
# Check task description for details.
def update(reward):
    global bandits
    global n

    if reward != -1:  # just update model when reward is 0 or 1 (when we know what happened)
        n += 1

        # update meanReward and nrTrials
        meanReward, nrTrial = bandits[currentRecommendation]
        nrTrial += 1
        meanReward += 1/np.float(nrTrial) * (reward - meanReward)
        bandits[currentRecommendation] = (meanReward, nrTrial)

# compute ucb for a given article
def ucb(article, n):
    meanReward, nrTrial = bandits[article]
    return meanReward + np.sqrt(2 * np.log(n) / nrTrial)

# This function will be called by the evaluator.
# Check task description for details.
def reccomend(timestamp, user_features, articles):

    global currentRecommendation
    global bandits
    global n

    # initialization: recommend each machine once
    for article in np.random.permutation(articles):
        if not bandits.has_key(article) or bandits[article][1] == 0:
            bandits[article] = (0, 0)
            currentRecommendation = article
            return currentRecommendation

    # play machine j which maximizes upper confidence bound of x_j
    bestUCB = -np.inf
    for article in articles:
        currentUCB = ucb(article, n)

        if currentUCB > bestUCB:
            bestUCB = currentUCB
            currentRecommendation = article

    return currentRecommendation
