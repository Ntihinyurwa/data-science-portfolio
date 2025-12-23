# Fraud Detection using Machine Learning

## Overview

This project applies **supervised machine learning techniques** to detect fraudulent credit card transactions using a **large-scale transactional dataset containing over 555,000 records**. Click [here] (https://www.kaggle.com/datasets/kelvinkelue/credit-card-fraud-prediction) to get the full dataset. [Get dataset]([URL](https://www.kaggle.com/datasets/kelvinkelue/credit-card-fraud-prediction))


The primary objective is to identify rare fraud events within a **highly imbalanced dataset**, while balancing fraud detection performance with business risk, such as false declines of legitimate transactions.

## Business Problem

Fraudulent transactions present significant challenges for financial institutions, including:

* Direct financial losses
* Increased operational and investigation costs
* Customer dissatisfaction from false transaction declines
* Regulatory and compliance risks

An effective fraud detection system must **maximize fraud capture (recall)** while maintaining acceptable **precision** and scalability in production environments.

## Solution Approach

The project follows an end-to-end analytical workflow:

* Performed exploratory and diagnostic analysis on **555,719 transaction-level records**
* Analyzed class imbalance and fraud distribution
* Engineered features capturing transactional, temporal, and geographic patterns
* Trained and evaluated multiple classification models
* Applied resampling techniques to address class imbalance
* Compared models using business-relevant evaluation metrics

## Models & Techniques

The following models and techniques were implemented and evaluated:

* Logistic Regression
* Decision Trees & Random Forest
* Boosting-based ensemble models
* Neural Networks
* Class imbalance handling using **SMOTE and undersampling**
* Model evaluation using **Precision, Recall, F1-score, and Confusion Matrices**

> Emphasis was placed on interpretability and practical trade-offs rather than accuracy alone.

## Tools & Technologies

* Python (Pandas, NumPy, Scikit-learn)
* Jupyter Notebook
* Classification evaluation metrics

## Status

**Completed core modeling and evaluation**
 Notebook documentation and visual summaries are being refined for clarity and presentation

