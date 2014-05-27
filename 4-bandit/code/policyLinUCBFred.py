#!/usr/bin/env python2.7

import numpy.random
import numpy as np
import math
import random

recommender = None

# Evaluator will call this function and pass the article features.
# Check evaluator.py description for details.
def set_articles(art):
    global recommender
    recommender = LINUCB(art)


# This function will be called by the evaluator.
# Check task description for details.
def update(reward):
    if reward != -1:
        recommender.update(reward)

# This function will be called by the evaluator.
# Check task description for details.
def reccomend(timestamp, user_features, articles):
    return recommender.recommend(timestamp, np.asarray(user_features), articles)


class LINUCB:
    number_of_features = 6
    ALPHA = 0.835

    def __init__(self,art):
        self.all_articles = art
        self.M = dict()
        self.b = dict()

        for article in self.all_articles:
            self.M[article] = np.identity(LINUCB.number_of_features)
            self.b[article] = np.zeros((LINUCB.number_of_features,1))

    def recommend(self, timestamp, userfeature, A_t):
        z_t = np.reshape(userfeature, (6,1))
        scores = dict()
        for x in A_t:
            M_x_inverse = np.linalg.inv(self.M[x])

            w_x = np.dot(M_x_inverse,self.b[x])
            ucbScore=float(np.dot(w_x.T,z_t) + LINUCB.ALPHA*math.sqrt(np.dot(np.dot(z_t.T,M_x_inverse),z_t)))
            #print 'current article: %d current score: %f' % (x, ucbScore)
            scores[x] = ucbScore

        #todo one liner refactoring
        keys=np.array(scores.keys())
        values = np.array(scores.values())
        bestArticles = keys[values == max(values)]


        self.last_recommended_Article = random.choice(bestArticles) #choose random if several articles have same score
        self.last_recommended_User = z_t
        #print 'recommending Nummer %d ' % (self.last_recommended_Article)
        return self.last_recommended_Article


    def update(self, reward):
        self.M[self.last_recommended_Article] += numpy.dot(self.last_recommended_User, self.last_recommended_User.T)
        self.b[self.last_recommended_Article] += reward*self.last_recommended_User
