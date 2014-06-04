#!/usr/bin/env python2.7

import numpy as np
import datetime

# Implementation of Linear UCB with a stepwise reset of the model (on a per article basis). If an article
# is available for more than 24 hours its model is reset. This leads currently to the best score on the evaluation system.
class LinUCB:
    all_articles = []
    all_M = {}
    all_M_inv = {}
    all_b = {}
    all_w = {}
    alpha = 0.2
    current_article = None  # current recommendation
    current_user = None  # user for which the article was recommended
    article_first_appearance = {}


    def set_articles(self, articles):
        self.all_articles = articles
        self.counter = 0

        # initialize M and b for each article:
        for article in self.all_articles:
            M = np.identity(6)
            b = np.zeros((6, 1))
            M_inv = np.identity(6)  #the inverse of identity is identity

            self.all_M[article] = M
            self.all_b[article] = b
            self.all_M_inv[article] = M_inv
            self.all_w[article] = np.dot(M_inv, b)

    def resetArticle(self, article):
        M = np.identity(6)
        b = np.zeros((6, 1))
        M_inv = np.identity(6)  #the inverse of identity is identity

        self.all_M[article] = M
        self.all_b[article] = b
        self.all_M_inv[article] = M_inv
        self.all_w[article] = np.dot(M_inv, b)
        self.article_first_appearance.pop(article)


    def ucb(self, article, user, timestamp):
        M_inv = self.all_M_inv[article]
        w = self.all_w[article]

        ucb = np.dot(w.T, user) + self.alpha * np.sqrt(np.dot(user.T, np.dot(M_inv, user)))

        if not self.article_first_appearance.has_key(article):
            self.article_first_appearance[article] = timestamp

        seconds_visible = timestamp - self.article_first_appearance[article]
        num_hours_to_show = 24
        if seconds_visible > 3600 * num_hours_to_show: # timestamp is in seconds
            # reset article
            self.resetArticle(article)

            #hours_visible = (seconds_visible - 3600*num_hours_to_show) / float(3600)
            #weight = 1 / (hours_visible + 1)
            #ucb *= weight

        return ucb


    def recommend(self, timestamp, user_features, articles):
        user_features = np.reshape(user_features, (6, 1))

        best_ucb = -np.inf
        for article in articles:
            current_ucb = self.ucb(article, user_features, timestamp)

            if current_ucb > best_ucb:
                best_ucb = current_ucb
                self.current_article = article

        self.current_user = user_features
        return self.current_article


    def update(self, reward):
        if reward == 0 or reward == 1:
            self.counter += 1
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
