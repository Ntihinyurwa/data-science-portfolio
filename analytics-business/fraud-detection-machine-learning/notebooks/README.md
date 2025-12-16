# Notebooks

This folder contains Jupyter notebooks used for exploratory data analysis, feature engineering, and model training for fraud detection.

Notebooks demonstrate:
- Transaction-level exploratory and diagnostic analysis
- Discovering different insights from the dataset
- Understanding the data to be able to perform informed feature engineering and model selection

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

