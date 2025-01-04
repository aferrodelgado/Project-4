# Project-4

**Dataset**: [Fraudulent E-Commerce Transactions](https://www.kaggle.com/datasets/shriyashjagtap/fraudulent-e-commerce-transactions/data?select=Fraudulent_E-Commerce_Transaction_Data_2.csv)

**Description**:

This synthetic dataset, "Fraudulent E-Commerce Transactions," is designed to simulate transaction data from an e-commerce platform with a focus on fraud detection. It contains a variety of features commonly found in transactional data, with additional attributes specifically engineered to support the development and testing of fraud detection algorithms.

**Dataset Overview**

  - Number of Transactions in Version 1: 1,472,952 (Used for testing - can be accessed via above dataset link)
  - Number of Transactions in Version 2: 23,634 (Used for training / making predictions)
    - Include binary indicator "Is Fraudulent" to identify fraudulent or legitimate transactions (1 for fraudulent, 0 for legitimate).
    - Binary indicator column has been removed from Version 1 for testing.
  - Features: 16
  - Fraudulent Transactions: Approximately 5%

<br><br>
**Project Summary**:

Our team had two datasets: one smaller file which contained a binary indicator of fraudulent vs legitimate transactions. Our team used the smaller dataset with these indicators to train a model, which then will be able to predict fraudulence for the records in the larger dataset. The goal for this project is to compare our trained model to that of the original and see if we can achieve an accuracy level of 75% or more.

  - **Data Cleaning / Extraction**:

    - Using Python, matplotlib and Numpy to import and clean CSV files. Using Sql to retrieve our data because it of its ease to use on small data set and better integration with Pandas and metasploit

  - **Model Selection**:

    - Logistic Regression Model - for original data testing

       - Question: How well does the logistic regression model predict both the `0` (healthy loan) and `1` (high-risk loan) labels?
       - Answer: This model is currently skewed in favor of the client. Healthy loans were all found and recorded as healthy, and 99% of the returned positives should have been positive. The f1-score was 100%, meaning this metric is solid. When looking at high-risk loans, however, the f1 score was only 89%. The success rate of the model might be helped by adding a random forest model, but also might be skewed by the large disparity between healty vs high-risk support.

    - Random Forest Model - 

<br><br>
**Visualizations**:
