#!/usr/bin/env python2.7

import numpy as np
#with alpha = 0.71 we get Online:  CTR=??          Took ??
#                          Offline: TAKES TOO LONG!!!! Evaluated 51586/1040000 lines.	CTR = 0.055907





# Implementation of Linear UCB
class LinUCB:
    all_articles = []
    A_zero = np.identity(36)
    A_zero_inverse = np.identity(36)
    b_zero = np.zeros((36, 1))

    beta_hat=np.zeros((36, 1))

    all_A = {}
    all_A_inverse={}
    all_B = {}
    all_b = {}
    all_theta_hat = {}

    current_article = None  # current recommendation
    current_user = None  # user for which the article was recommended
    current_z = None  # user for which the article was recommended


    alpha = 0.71
    current_article = None  # current recommendation
    current_user = None  # user for which the article was recommended

    def set_articles(self, articles):
        self.all_articles = articles

        # initialize M and b for each article:
        for article in self.all_articles:
            A = np.identity(6)
            B = np.zeros((6, 36))
            b = np.zeros((6, 1))


            self.all_A[article] = A
            self.all_B[article] = B
            self.all_b[article] = b
            self.all_theta_hat[article] =  b #initially also zeros(6,1)

            self.all_A_inverse[article] = A




    def recommend(self, timestamp, user_features, articles):
        user_features = np.reshape(user_features, (6, 1))


        best_ucb = -np.inf
        for article in articles:
            outerproduct=np.outer(np.reshape(np.array(self.all_articles[article]),(6,1)),user_features)
            z_t = np.reshape(outerproduct,(36,1)) #unsure!!!

            theta_hat = self.all_theta_hat[article]
            first_term = np.dot(np.dot(z_t.T,self.A_zero_inverse),z_t)
            second_term = np.dot(np.dot(np.dot(np.dot(2*z_t.T,self.A_zero_inverse),self.all_B[article].T),self.all_A_inverse[article]),user_features)
            third_term = np.dot(np.dot(user_features.T,self.all_A_inverse[article]),user_features)
            fourth_term = np.dot(np.dot(np.dot(np.dot(np.dot(np.dot(user_features.T,self.all_A_inverse[article]),self.all_B[article]),self.A_zero_inverse),self.all_B[article].T),self.all_A_inverse[article]),user_features)
            s = first_term-second_term+third_term+fourth_term

            #now ucb
            current_ucb=np.dot(z_t.T,self.beta_hat) + np.dot(user_features.T,self.all_theta_hat[article]) + self.alpha*np.sqrt(s)

            if current_ucb > best_ucb:
                best_ucb = current_ucb
                self.current_article = article
                self.current_z = z_t

        self.current_user = user_features
        return self.current_article


    def update(self, reward):
        if reward == 0 or reward == 1:
            article = self.current_article
            user = self.current_user
            z = self.current_z
            A = self.all_A[article]
            B = self.all_B[article]
            b = self.all_b[article]


            self.A_zero += np.dot(np.dot(B.T,self.all_A_inverse[article]),B)
            self.b_zero += np.dot(np.dot(B.T,self.all_A_inverse[article]),b)

            self.all_A[article] = A + np.dot(user, user.T)
            self.all_B[article] = B + np.dot(user, z.T)
            self.all_b[article] = b + reward * user

            #update
            self.all_A_inverse[article] = np.linalg.inv(self.all_A[article])
            A_inv = self.all_A_inverse[article]

            self.A_zero += np.dot(z,z.T) - np.dot(np.dot(self.all_B[article].T,A_inv),self.all_B[article])
            self.b_zero += reward*z - np.dot(np.dot(self.all_B[article].T,A_inv),self.all_b[article])


            # precompute
            #self.all_A_inverse[article] = np.linalg.inv(self.all_A[article])
            self.A_zero_inverse = np.linalg.inv(self.A_zero)
            self.beta_hat = np.dot(self.A_zero_inverse,self.b_zero)
            self.all_theta_hat[article] = np.dot(self.all_A_inverse[article],self.all_b[article]-np.dot(self.all_B[article],self.beta_hat))



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