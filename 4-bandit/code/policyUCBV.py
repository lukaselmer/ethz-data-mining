#!/usr/bin/env python2.7

import numpy as np

# Implementation of Linear UCB
class LinUCB:
    np.random.seed(42)
    articlesDict = None
    bandits = {}        # dictionary of type <articleNr, (meanReward, nrTrials)>
    currentRecommendation = None
    n = 1
    c = 0.3

    def set_articles(self, articles):
        self.articlesDict = articles


    def ucb(self, article, n, user, ts):
        meanReward, nrTrial, tsFirstSeen = self.bandits[article]
        M_inv = self.all_M_inv[article]
        w = self.all_w[article]

        #return meanReward + np.sqrt(2 * np.log(n) / nrTrial) + 1/np.sqrt(ts-tsFirstSeen)+ np.dot(w.T, user)[0] + self.alpha * np.sqrt(np.dot(user.T, np.dot(M_inv, user)))[0][0]
        return meanReward + float(1)/ nrTrial + 1/np.sqrt(ts-tsFirstSeen)+ np.dot(w.T, user)[0] + self.alpha * np.sqrt(np.dot(user.T, np.dot(M_inv, user)))[0][0]

    def ucb(self,article, n, timestamp):
        meanReward, nrTrial, tsFirst = self.bandits[article]
        t = np.log(timestamp-tsFirst)
        return meanReward + np.sqrt((self.c * meanReward * (1-meanReward) * t )/ nrTrial) + self.c*((0.5-meanReward)/nrTrial)*t

    def recommend(self, timestamp, user_features, articles):
        # initialization: recommend each machine once
        for article in np.random.permutation(articles):
            if not self.bandits.has_key(article) or self.bandits[article][1] == 0:
                self.bandits[article] = (0, 0, timestamp-1)
                self.currentRecommendation = article
                return self.currentRecommendation

        # play machine j which maximizes upper confidence bound of x_j
        bestUCB = -np.inf
        for article in articles:
            currentUCB = self.ucb(article, self.n, timestamp)

            if currentUCB > bestUCB:
                bestUCB = currentUCB
                self.currentRecommendation = article
        print bestUCB
        return self.currentRecommendation


    def update(self, reward):
        if reward != -1:  # just update model when reward is 0 or 1 (when we know what happened)
            self.n += 1

            # update meanReward and nrTrials
            meanReward, nrTrial, ts = self.bandits[self.currentRecommendation]
            nrTrial += 1
            meanReward += 1/np.float(nrTrial) * (reward - meanReward)
            self.bandits[self.currentRecommendation] = (meanReward, nrTrial, ts)



linucb = LinUCB()

# Evaluator will call this function and pass the article features.
# Check evaluator.py description for details.
def set_articles(art):
    linucb.set_articles(art)


# This function will be called by the evaluator.
# Check task description for details.
def update(reward):
    linucb.update(reward)


# This function will be called by the evaluator.
# Check task description for details.
def reccomend(timestamp, user_features, articles):
    return linucb.recommend(timestamp, user_features, articles)
