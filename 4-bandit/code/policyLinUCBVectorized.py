#!/usr/bin/env python2.7

import numpy as np
import random
import time
#with alpha = 0.835 we get Online:  CTR=0.053443    Took 58 minutes and 37 seconds.
#                          Offline: CTR=0.064567    Took 11170s

#with alpha = 0.835 we get Online:  CTR=??          Took=??
#                          Offline: CTR=0.048       Took 1250s

#with alpha = 0.21 we get Online:   CTR=0.059383          Took=Took 57 minutes and 51 seconds
#                          Offline: CTR=0.067549          Took = 1785s


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



    alpha = 0.18
    current_article = None  # current recommendation
    current_user = None  # user for which the article was recommended


    def set_articles(self, articles):

        self.keyList = np.array(articles.keys())
        #self.valueList = np.array(articles.values())
        self.articleSize = self.keyList.size

        self.all_w = np.zeros((6,self.articleSize))
        M = np.identity(6)
        self.all_M = np.tile(M,(1,self.articleSize))
        self.all_M_inv = self.all_M

        self.all_b = np.zeros((6,self.articleSize))

        for idx, article in enumerate(articles.keys()):
            self.mapping[article] = idx




    def recommend(self, timestamp, user_features, articles):
        user_features = np.reshape(user_features, (6, 1))

        #indicesOfArticles = np.in1d(self.keyList,articles) #todo optimize
        #indicesOfArticles = np.array([self.mapping[article] for article in articles])

        indicesOfArticles = np.zeros((self.articleSize),dtype=bool)
        for article in articles:
            indicesOfArticles[self.mapping[article]] = True

        w_x = self.all_w[:,indicesOfArticles]
        exploitPart=np.dot(w_x.T,user_features)

        allM_inv = self.all_M_inv[:,indicesOfArticles.repeat(6)]
        explorePart = np.dot((np.dot(user_features.T,allM_inv)).reshape(len(articles),6),user_features)
        explorePart = self.alpha*np.sqrt(explorePart)

        UCB = (exploitPart + explorePart).flatten()
        #bestArticlesIndices = UCB==max(UCB)

        #articlesArray = np.array(articles)
        bestArticle=articles[np.argmax(UCB)]
        #if sum(bestArticlesIndices) == 1:
        #    bestArticle = articlesArray[bestArticlesIndices][0]
        #else:
        #    bestArticle = random.choice(articlesArray[bestArticlesIndices])
        self.current_user = user_features
        self.current_article = bestArticle
        return bestArticle


    def update(self, reward):
        if reward == 0 or reward == 1:
            #start = time.time()
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
            #end = time.time()
            #print end - start


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