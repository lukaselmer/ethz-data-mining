#!/usr/bin/env python2.7

import numpy as np

# TODO: recommend most uncertain article in case of 2 very similar articles
# TODO: use timestamp to lower ucb score over time


# Implementation of Linear UCB
class LinUCB:
    all_articles = []
    all_M = {}
    all_M_inv = {}
    all_b = {}
    all_w = {}
    alpha = 0.205 #0.195
    current_article = None  # current recommendation
    current_user = None  # user for which the article was recommended

    def set_articles(self, articles):
        print 'We are using an alpha of: %f \n' %(self.alpha)
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

        return np.dot(w.T, user) + self.alpha * np.sqrt(np.dot(user.T, np.dot(M_inv, user)))


    def recommend(self, timestamp, user_features, articles):
        user_features = np.reshape(user_features, (6, 1))

        best_ucb = -np.inf
        for article in articles:
            current_ucb = self.ucb(article, user_features)

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
