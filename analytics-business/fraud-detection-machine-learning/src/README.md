## Source Code — Fraud Detection Pipeline

This folder contains the **end-to-end fraud detection modeling pipeline** implemented in a single, structured notebook for clarity and reproducibility.

The code is designed to demonstrate how raw transactional data is transformed into actionable fraud detection models, covering the full analytics lifecycle from exploration to evaluation.

## What this Code includes

The main notebook (`FraudDetection_Project_code.ipynb`) covers the following stages:

### 1. Exploratory Data Analysis (EDA)

* Initial data inspection and quality checks
* Analysis of fraud distribution and class imbalance
* Exploration of fraud patterns across:

  * Transaction categories
  * Geography (states)
  * Time of day
  * Demographic attributes
* Supporting visualizations used to guide feature engineering decisions

> *Note: A dedicated EDA notebook with deeper visual storytelling is available in the `notebooks/` folder.*

### 2. Feature Engineering

* Creation of model-ready features from raw transactional data
* Encoding of categorical variables
* Transformation of temporal features
* Preparation of numerical variables for modeling

### 3. Train / Test Split

* Separation of data into training and testing sets
* Ensuring proper representation of rare fraud events
* Preventing data leakage between modeling stages

### 4. Handling Class Imbalance

Given the highly imbalanced nature of fraud data, the code applies and compares:

* **SMOTE (Synthetic Minority Oversampling)**
* **Random undersampling**
* Baseline (no resampling) approaches

This enables evaluation of trade-offs between fraud recall and false positives.

### 5. Model Training & Evaluation

Multiple supervised learning models are trained and compared, including:

* Logistic Regression
* Random Forest
* Boosting-based models
* Neural Networks

Models are evaluated using:

* Precision
* Recall
* F1-score
* Confusion matrices

Evaluation emphasizes **business risk**, particularly the cost of missed fraud versus false declines.

### 6. Model Comparison & Insights

* Side-by-side performance comparison across models and resampling strategies
* Identification of models that best balance fraud detection effectiveness and operational impact
* Interpretation of results to support downstream business decisions

## Purpose of this Structure

This single-file pipeline is intentionally designed to:

* Demonstrate **end-to-end ownership** of a real-world fraud detection problem
* Allow reviewers to follow the full modeling logic in one place
* Reflect common workflows used in analytics and risk teams

For exploratory storytelling and visualization-focused analysis, refer to the `notebooks/` folder.
