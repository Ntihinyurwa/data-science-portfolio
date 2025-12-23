# Fraud Detection using Machine Learning

## Overview

This project applies **supervised machine learning techniques** to detect fraudulent credit card transactions using a **large-scale transactional dataset containing over 555,000 records**. Click on [here](https://www.kaggle.com/datasets/kelvinkelue/credit-card-fraud-prediction) to get the full dataset. 



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

## Key Exploratory Data Analysis (EDA Insights)

Based on exploratory analysis of **555,719 transaction records**, several important fraud patterns emerged:

### 1️⃣ Fraud Concentration by Transaction Category

* **Online and card-not-present transactions** (`shopping_net`, `misc_net`, `grocery_pos`) exhibit **significantly higher fraud rates** than in-person purchases.
* Traditional categories such as `home`, `kids_pets`, and `food_dining` show **relatively low fraud incidence**.
* This indicates that **transaction channel and merchant type** are strong predictors of fraud risk.

### 2️⃣ Fraud Distribution by Geography

* Fraud cases are **geographically concentrated**, with states such as **New York, Pennsylvania, and Texas** reporting the highest absolute number of fraud incidents.
* Higher fraud counts correlate with **population density and transaction volume**, reinforcing the need for normalization during modeling.

### 3️⃣ Time-of-Day Risk Patterns

* A **disproportionate share of fraud occurs at night**, compared to morning, afternoon, or evening hours.
* This temporal pattern suggests that **time-based features** (hour bands, off-peak indicators) are valuable for fraud detection models.

### 4️⃣ Customer Demographics

* Fraud cases are **relatively evenly distributed across genders**, indicating that demographic features alone are insufficient predictors.
* This reinforces the importance of **behavioral and transactional features** over personal attributes.

### 5️⃣ Class Imbalance Confirmation

* Fraud represents a **very small fraction of total transactions**, confirming a **highly imbalanced classification problem**.
* This justified the use of **resampling techniques (SMOTE, undersampling)** and **recall-focused evaluation metrics** in later modeling stages.

## Impact on Modeling Strategy

Insights from EDA directly informed:

* Feature engineering (transaction category, time bands, geography)
* Model selection and evaluation criteria
* Emphasis on **recall and risk-aware performance metrics**

## Tools & Technologies

* Python (Pandas, NumPy, Scikit-learn)
* Jupyter Notebook
* Classification evaluation metrics


