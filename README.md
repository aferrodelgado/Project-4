# Project-4

**Dataset**: [Fraudulent E-Commerce Transactions](https://www.kaggle.com/datasets/shriyashjagtap/fraudulent-e-commerce-transactions/data?select=Fraudulent_E-Commerce_Transaction_Data_2.csv)

<img width="800" alt="Screenshot 2025-01-07 at 6 57 08 PM" src="https://github.com/user-attachments/assets/8ba82b1c-1c57-4b90-9316-9ca8c2ae3de1" />

**Dataset Summary**:

The “Fraudulent E-Commerce Transactions” dataset is a synthetic dataset created to simulate transactional data from an e-commerce platform, with a focus on fraud detection. It includes features commonly found in real-world transactional data and additional attributes specifically engineered to support fraud detection model development.

  **Dataset Versions**:

  - **Version 1**: Contains 1,472,952 transactions. This larger dataset does not include the binary fraud indicator and is used for testing the model.
    
     - Fraudulent_E-Commerce_Transaction_Data.csv
    
  - **Version 2**: Contains 23,634 transactions and includes a binary “Is Fraudulent” column (1 for fraudulent, 0 for legitimate). This smaller dataset is used for training the model.
    
     - Fraudulent_E-Commerce_Transaction_Data_2.csv

  **Key Statistics**:

  - **Fraudulent Transactions**: Approximately 5% of total transactions.
  - **Features**: 16 features

<br><br>
**Project Summary**:

Our project involved two datasets of e-commerce transactions. The smaller dataset (Version 2), which included a binary indicator of fraudulence, was used to train a machine learning model. This trained model was then applied to the larger dataset (Version 1) to predict fraudulent transactions.

The primary goal of this project was to achieve a fraud detection model with a prediction accuracy of 75% or higher. Additionally, the model’s performance was compared to the original dataset’s fraud detection accuracy to evaluate its effectiveness.


  - **Data Cleaning / Extraction**:

    - Using Python, matplotlib and Numpy to import and clean CSV files. Using Sql to retrieve our data because it of its ease to use on small data set and better integration with Pandas and metasploit

  - **Model Selection**:

    - Logistic Regression Model - for original data testing

       - Question: How well does the logistic regression model predict both the `0` (healthy loan) and `1` (high-risk loan) labels?
       - Answer: This model is currently skewed in favor of the client. Healthy loans were all found and recorded as healthy, and 99% of the returned positives should have been positive. The f1-score was 100%, meaning this metric is solid. When looking at high-risk loans, however, the f1 score was only 89%. The success rate of the model might be helped by adding a random forest model, but also might be skewed by the large disparity between healty vs high-risk support.

    - Random Forest Model - 

<br><br>
**Visualizations**:
