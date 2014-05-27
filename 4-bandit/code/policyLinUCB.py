#!/usr/bin/env python2.7

import numpy as np

#with alpha = 0.835 we get Online:  CTR=0.053443    Took 58 minutes and 37 seconds.
#                          Offline: CTR=0.064567    Took 11170s

#with alpha = 0.835 we get Online:  CTR=??          Took=??
#                          Offline: CTR=0.048       Took 1250s

#with alpha = 0.21 we get Online:   CTR=0.059383          Took=Took 57 minutes and 51 seconds
#                          Offline: CTR=0.067549          Took = 1785s

#with alpha = 0.2   we get Online:  CTR=??          Took=??
#                          Offline: CTR=0.068724          Took = 1660s



# Implementation of Linear UCB
class LinUCB:
    all_articles = []
    all_M = {}
    all_M_inv = {}
    all_b = {}
    all_w = {}
    alpha = 0.2
    current_article = None  # current recommendation
    current_user = None  # user for which the article was recommended

    def set_articles(self, articles):
        self.all_articles = articles

        # initialize M and b for each article:
        for article in self.all_articles:
            M = np.identity(6)
            b = np.zeros((6, 1))
            M_inv = M #the inverse of identity is identity

            self.all_M[article] = M
            self.all_b[article] = b
            self.all_M_inv[article] = M_inv
            self.all_w[article] = np.dot(M_inv, b)


    def ucb(self, article, user):
        M_inv = self.all_M_inv[article]
        w = self.all_w[article]

        return self.alpha * np.sqrt(np.dot(user.T, np.dot(M_inv, user)))


    def recommend(self, timestamp, user_features, articles):
        user_features = np.reshape(user_features, (6, 1))

        best_ucb = -np.inf
        for article in articles:
            inner_product = np.dot(self.all_w[article].T, user_features)

            # recommend articles which we haven't recommended yet
            if inner_product == 0:
                self.current_article = article
                break

            current_ucb = inner_product + self.ucb(article, user_features)

            if current_ucb > best_ucb:
                best_ucb = current_ucb
                self.current_article = article

        self.current_user = user_features
        return self.current_article


    def update(self, reward):
        if reward == 0 or reward == 1:
            article = self.current_article
            user = self.current_user
            M = self.all_M[article]
            b = self.all_b[article]

            self.all_M[article] = M + np.dot(user, user.T)
            self.all_b[article] = b + reward * user

            # precompute M^-1 and w for UCB
            self.all_M_inv[article] = np.linalg.inv(self.all_M[article])
            self.all_w[article] = np.dot(self.all_M_inv[article], self.all_b[article])



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
