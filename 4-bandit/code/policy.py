#!/usr/bin/env python2.7

import numpy.random

# Evaluator will call this function and pass the article features.
# Check evaluator.py description for details.
def set_articles(art):
    pass


# This function will be called by the evaluator.
# Check task description for details.
def update(reward):
    pass

# This function will be called by the evaluator.
# Check task description for details.
def reccomend(timestamp, user_features, articles):
    return numpy.random.choice(articles, size=1)
