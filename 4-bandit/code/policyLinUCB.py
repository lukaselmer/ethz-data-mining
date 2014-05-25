#!/usr/bin/env python2.7

import numpy.random
import random
import numpy as np
import math
all_articles = []
newArticles = {}
all_M={}
all_inverseCache={}
all_b={}
all_w = {}
alpha=0.835
lastArticle=[]
lastUser=[]
totalLine=0;


# This function initializes all articles as new
def initializeArticles(articles):
    for article in articles:
        newArticles[article] = True


# Evaluator will call this function and pass the article features.
# Check evaluator.py description for details.
def set_articles(art):
    global all_articles
    all_articles = art
    initializeArticles(art)



# This function will be called by the evaluator.
# Check task description for details.
def update(reward):
    if reward == -1:
        pass
    else:
        all_M[lastArticle] = all_M[lastArticle]+np.dot(lastUser,np.transpose(lastUser))
        if reward == 1:
            all_b[lastArticle] = all_b[lastArticle]+lastUser


# This function will be called by the evaluator.
# Check task description for details.
def reccomend(timestamp, user_features, articles):
    #if all articles have been seen at least once and rand
    if all(newArticles[i]==False for i in articles) and totalLine % 10 != 0:
        lastArticle=random.choice(articles)
    else:
        user_features = np.transpose(np.mat(user_features))
        articlesWithMaxUCB = []
        bestUCB = 0;

        for article in articles:
            if(newArticles[article]): #new one
                newArticles[article] = False
                all_M[article] = np.identity(6)  #'todo change 6 to size....'
                all_b[article] = np.zeros((6, 1)) #'todo change 6 to size....'
            if totalLine%1000 == 0 or not all_inverseCache.has_key(article):
                #print 'drin at %d' %(totalLine)
                all_inverseCache[article] = np.linalg.inv(all_M[article])
            inverse=all_inverseCache[article]
            all_w[article] = np.dot(inverse,all_b[article])
            ucb_current = np.dot(np.transpose(all_w[article]), user_features)[0,0] + alpha*math.sqrt(np.dot(np.dot(np.transpose(user_features),inverse),user_features))
            if(ucb_current>=bestUCB):
                bestUCB=ucb_current
                articlesWithMaxUCB.append(article)
        lastArticle=random.choice(articlesWithMaxUCB) #if several articles had the same UCB value

    global totalLine
    totalLine+=1
    global lastUser
    lastUser = user_features
    global lastArticle

    return lastArticle

