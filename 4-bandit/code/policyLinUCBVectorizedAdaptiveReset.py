#!/usr/bin/env python2.7

import numpy as np
import random
import time
import itertools
import collections

# Implementation of Linear UCB
class LinUCB:
   # all_articles = []
    all_M = None
    all_M_inv = None
    all_b = None
    all_w = None
    mapping = {}
    keyList=None
    articleSize = 1
    article_tracker = {}
    totalLine = 0
    sizeOfHistory = 10000




    alpha = 0.2
    current_article = None  # current recommendation
    current_user = None  # user for which the article was recommended


    def set_articles(self, articles):
        print 'We are using an alpha of: %f \n' %(self.alpha)
        print 'VECTORIZED VERSION!!!!!\n'

        self.keyList = np.array(articles.keys())
        self.articleSize = self.keyList.size

        self.all_w = np.zeros((6,self.articleSize))
        M = np.identity(6)
        self.all_M = np.tile(M,(1,self.articleSize))
        self.all_M_inv = np.tile(M,(1,self.articleSize))

        self.all_b = np.zeros((6,self.articleSize))

        for idx, article in enumerate(articles.keys()):
            self.mapping[article] = idx
            self.article_tracker[article] = collections.deque([], self.sizeOfHistory)






    def recommend(self, timestamp, user_features, articles):
        self.totalLine += 1
        user_features = np.reshape(user_features, (6, 1))

        indicesOfArticles = [self.mapping[article] for article in articles]

        w_x = self.all_w[:,indicesOfArticles]
        exploitPart=np.dot(w_x.T,user_features)

        indicesForM_inv = [range(index*6,index*6+6) for index in indicesOfArticles]
        indicesForM_inv = list(itertools.chain(*indicesForM_inv))

        allM_inv = self.all_M_inv[:,indicesForM_inv]
        explorePart = np.dot((np.dot(user_features.T,allM_inv)).reshape(len(articles),6),user_features)
        explorePart = self.alpha*np.power(explorePart,0.5)

        UCB = (exploitPart + explorePart).flatten()
        #print UCB

        bestArticle=articles[np.argmax(UCB)]
        self.current_user = user_features
        self.current_article = bestArticle
        return bestArticle


    def update(self, reward):
        if reward == 0 or reward == 1:
            article = self.current_article
            user = self.current_user

            indexForArticle = np.zeros((self.articleSize),dtype=bool)
            indexForArticle[self.mapping[article]] = True

            M = self.all_M[:,indexForArticle.repeat(6)]
            b = self.all_b[:,indexForArticle]

            self.all_M[:,indexForArticle.repeat(6)] = M + np.dot(user, user.T)
            self.all_b[:,indexForArticle] = b + reward * user

            # precompute M^-1 and w for UCB
            self.all_M_inv[:,indexForArticle.repeat(6)] = np.linalg.inv(self.all_M[:,indexForArticle.repeat(6)])
            self.all_w[:,indexForArticle] = np.dot(self.all_M_inv[:,indexForArticle.repeat(6)], self.all_b[:,indexForArticle])


            #reset handling
            self.article_tracker[article].appendleft(reward)
            #3730000 = 2009-05-02 02:55:00
            if self.totalLine > 3730000 and len(self.article_tracker[article]) == self.sizeOfHistory:
                rewardHistory=self.article_tracker[article]
                percentagedReward = float(sum(rewardHistory))/len(rewardHistory)
                #if we are below 5%
                if percentagedReward < 0.06:
                    print 'resetting article: %d  / percentage is %f' % (article,percentagedReward)
                    #reset
                    self.all_M[:,indexForArticle.repeat(6)] = np.identity(6)
                    self.all_M_inv[:,indexForArticle.repeat(6)] = np.identity(6)
                    self.all_b[:,indexForArticle] = np.zeros((6, 1))
                    self.all_w[:,indexForArticle] = np.zeros((6, 1))
                    self.article_tracker[article] = collections.deque([], self.sizeOfHistory)




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