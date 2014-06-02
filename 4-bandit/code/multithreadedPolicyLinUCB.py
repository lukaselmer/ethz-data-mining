# !/usr/bin/env python2.7

import threading
import numpy as np

# TODO: recommend most uncertain article in case of 2 very similar articles
# TODO: use timestamp to lower ucb score over time


class SimpleInputOutputThread(threading.Thread):
    def __init__(self, linucb, article):
        threading.Thread.__init__(self)
        self.linucb = linucb
        self.article = article
        self.user_features = None
        self.res = 0
        self.setDaemon(True)
        self.inputReady = threading.Event()
        self.outputReady = threading.Event()
        self.outputReady.clear()
        self.start()

    def set_input(self, user_features):
        self.outputReady.clear()
        self.user_features = user_features
        self.inputReady.set()

    def get_res(self):
        self.outputReady.wait()
        return self.res

    def run(self):
        while True:
            self.inputReady.wait()
            self.inputReady.clear()
            self.do_calculation()
            self.outputReady.set()

    def do_calculation(self):
        self.res = linucb.ucb(self.article, self.user_features)


# Implementation of Linear UCB
class LinUCB:
    def __init__(self):
        self.all_articles = []
        self.all_M = {}
        self.all_M_inv = {}
        self.all_b = {}
        self.all_w = {}
        self.article_threads = {}
        self.alpha = 0.2
        self.current_article = None  # current recommendation
        self.current_user = None  # user for which the article was recommended
        self.num_user_features = 6


    def set_articles(self, articles):
        print 'We are using an alpha of: %f \n' % (self.alpha)
        print 'NORMAL LINUCB VERSION!!!!!\n'
        self.all_articles = articles

        # initialize M and b for each article:
        for article in self.all_articles:
            M = np.identity(self.num_user_features)
            b = np.zeros((self.num_user_features, 1))
            M_inv = M  # the inverse of identity is identity

            self.all_M[article] = M
            self.all_b[article] = b
            self.all_M_inv[article] = M_inv
            self.all_w[article] = np.dot(M_inv, b)
            self.article_threads[article] = SimpleInputOutputThread(self, article)


    def ucb(self, article, user):
        M_inv = self.all_M_inv[article]
        w = self.all_w[article]

        return np.dot(w.T, user) + self.alpha * np.sqrt(np.dot(user.T, np.dot(M_inv, user)))


    def recommend(self, timestamp, user_features, articles):
        user_features = np.reshape(user_features, (self.num_user_features, 1))

        best_ucb = -np.inf

        # for article in articles:
        # current_ucb = self.ucb(article, user_features)

        for a in articles:
            self.article_threads[a].set_input(user_features)

        for article in articles:
            current_ucb = self.article_threads[article].get_res()

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
