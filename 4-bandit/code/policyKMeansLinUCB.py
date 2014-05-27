#!/usr/bin/env python2.7

import numpy as np
from scipy.spatial.distance import cdist

from sklearn.cluster import KMeans


cluster_centers = np.array([[1.          		, 0.31589668  		, 0.00381665  		, 0.57494287  		, 0.09842768  		, 0.00691608], [ 1.          		, 0.01063725  		, 0.00240795  		, 0.00557655  		, 0.01049619  		, 0.97088208], [ 1.          		, 0.32181511  		, 0.08208989  		, 0.10311919  		, 0.48382056  		, 0.00915519], [ 1.          		, 0.17147762  		, 0.66198051  		, 0.00232755  		, 0.15370741  		, 0.01050699], [ 1.          		, 0.7773996   		, 0.06270192  		, 0.07307821  		, 0.07908197  		, 0.00773821], [ 1.          		, 0.03132119  		, 0.03454807  		, 0.04269437  		, 0.88831258  		, 0.00312379], [ 1.00000000e+00   	, 1.96367119e-02   	, 5.70792991e-05	, 9.53352524e-01	, 2.56156042e-02  	, 1.33806100e-03], [ 1.          		, 0.52918128  		, 0.07358843  		, 0.08075369  		, 0.30574408  		, 0.01073254], [ 1.          		, 0.08179675  		, 0.00585941  		, 0.3658514   		, 0.54193576  		, 0.00455668], [ 1.          		, 0.07626693  		, 0.00223807  		, 0.5921673   		, 0.32453265  		, 0.00479505], [ 1.          		, 0.09000508  		, 0.21893031  		, 0.01604895  		, 0.66873941  		, 0.00627624], [ 1.00000000e+00   	, 4.76705668e-02   	, 8.95467432e-01	, 2.81673868e-04	, 5.25976948e-02  	, 3.98261115e-03], [ 1.00000000e+00   	, 9.09279570e-02   	, 7.88371879e-04	, 7.83836520e-01	, 1.14758406e-01  	, 9.68875168e-03], [ 1.          		, 0.54366387  		, 0.01302633  		, 0.31948095  		, 0.11407933  		, 0.00974952], [ 1.          		, 0.09333583  		, 0.05873872  		, 0.09374949  		, 0.14237346  		, 0.6118025 ], [ 1.          		, 0.09807712  		, 0.02236863  		, 0.15403243  		, 0.71491347  		, 0.01060837], [ 1.          		, 0.31217748  		, 0.01713705  		, 0.34040484  		, 0.32254266  		, 0.00773797], [ 1.          		, 0.43601044  		, 0.38035315  		, 0.01425665  		, 0.1627975   		, 0.00658227], [ 1.          		, 0.62684964  		, 0.10143488  		, 0.049604   	 	, 0.2115178   		, 0.0105937 ], [ 1.          		, 0.11179218  		, 0.45506994  		, 0.0075924   		, 0.41874224  		, 0.00680326]])

# Implementation of Linear UCB with prior KMeans clustering of the users
# Online score: 0.057235 (14 minutes)
class LinUCB:
    all_articles = []
    all_M = {}
    all_M_inv = {}
    all_b = {}
    all_w = {}
    alpha = 0.21
    current_article = None  # current recommendation
    current_user = None  # user for which the article was recommended

    users = {}  # < #user_cluster, < articleNr, ucbScore> >

    def __init__(self):
        self.kmeans = KMeans(n_clusters=20, n_init=10, tol=0.0001, n_jobs=-1)
        self.kmeans.cluster_centers_ = cluster_centers

        # initialize ucb scores
        for index, user_cluster in enumerate(cluster_centers):
            self.users[index] = dict()


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

            # initialize UCB score for each user and current article
            for index, user_cluster in enumerate(cluster_centers):
                user_cluster = np.reshape(user_cluster, (6, 1))
                self.users[index][article] = np.dot(self.all_w[article].T, user_cluster) + self.alpha * np.sqrt(np.dot(user_cluster.T, np.dot(M_inv, user_cluster)))



    def ucb(self, article, user):

        index = self.kmeans.predict(user.T)[0]
        return self.users[index][article]


    def recommend(self, timestamp, user_features, articles):

        user_features = np.reshape(user_features, (6, 1))

        best_ucb = -np.inf
        index = np.argmin(cdist(user_features.T, cluster_centers, 'sqeuclidean'))
        user_ucbs = self.users[index]
        for article in articles:

            #current_ucb = self.ucb(article, user_features)
            current_ucb = user_ucbs[article]

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

            # update UCB scores for current user
            index = self.kmeans.predict(user.T)[0]
            user_cluster = np.reshape(cluster_centers[index, :], (6, 1))
            self.users[index][article] = np.dot(self.all_w[article].T, user_cluster) + self.alpha * np.sqrt(np.dot(user_cluster.T, np.dot(self.all_M_inv[article], user_cluster)))


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


def cluster():
    userArray = np.array(linucb.users)
    kmeans = KMeans(n_clusters=20, n_init=10, tol=0.0001, n_jobs=-1)
    kmeans.fit(userArray)

    for c in kmeans.cluster_centers_:
        print c