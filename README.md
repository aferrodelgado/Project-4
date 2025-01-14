# Project-4

**Dataset**: [Fraudulent E-Commerce Transactions](https://www.kaggle.com/datasets/shriyashjagtap/fraudulent-e-commerce-transactions/data?select=Fraudulent_E-Commerce_Transaction_Data_2.csv)

<img width="800" alt="Screenshot 2025-01-07 at 6 57 08 PM" src="https://github.com/user-attachments/assets/8ba82b1c-1c57-4b90-9316-9ca8c2ae3de1" />

**Dataset Summary**:

The “Fraudulent E-Commerce Transactions” dataset is a synthetic dataset created to simulate transactional data from an e-commerce platform, with a focus on fraud detection. It includes features commonly found in real-world transactional data and additional attributes specifically engineered to support fraud detection model development.

  **Dataset Versions**:

  - **Version 1**: Contains **1,472,952 transactions**. This larger dataset does not include the binary fraud indicator and is used for testing the model.
    
     - _Fraudulent_E-Commerce_Transaction_Data.csv_ (downloadable via the Dataset link above)
    
  - **Version 2**: Contains **23,634 transactions** and includes a binary “Is Fraudulent” column (1 for fraudulent, 0 for legitimate). This smaller dataset is used for training the model.
    
     - _Training_Fraudulent_E-Commerce_Transaction_Data_2.csv_ (Models Folder)

  **Key Statistics**:

  - **Fraudulent Transactions**: Approximately 5% of total transactions.
  - **Features**: 16 features

<br><br>
**Project Summary**:

Our project focused on Detecting Fraudulent E-Commerce Transactions using machine learning. Fraud detection is a critical issue in today’s digital marketplace, and we set out to create a model that could identify fraudulent transactions accurately and efficiently.

Our objective was twofold:
1. Develop a fraud detection model capable of achieving 75% or higher accuracy for both fraudulent and legitimate transactions.
2. Address the class imbalance in the dataset, where only 5% of transactions were fraudulent. This imbalance made it challenging to detect fraud effectively without favoring legitimate transactions.

To meet these goals, we tested three machine learning models, focusing on building a scalable solution that balanced accuracy and fairness across both classes, even with imbalanced data.

<br><br>
**Feature Engineering and Preprocessing**:

 1. **Data Preprocessing**:
    - Removed irrelevant columns such as Customer Location and Year to reduce noise in the data.
    - Scaled numerical features using StandardScaler to ensure that all features contributed equally to the model.

 2. **Data Splitting**:
    - Split the dataset into training and testing sets to evaluate model performance on unseen data

 3. **Class Imbalance Handling**:
    - Random Forest with SMOTE effectively addressed class imbalance by generating synthetic data for the minority class. Ultimately, the Random Forest with SMOTE model stood out, achieving comparable performance for both classes and surpassing our initial accuracy goals.

<br><br>
**Model Analysis**

We tested multiple models to identify the best-performing approach for fraud detection. Here’s a summary of the key models and their results:


 **Logistic Regression** (_Accuracy model.ipynb_ located in Models folder)

 - Performance: High overall accuracy (95%) but struggled with fraudulent transactions (Class 1).

 - Limitations: Precision of 11% for Class 1 indicates too many false positives, making it unsuitable for real-world applications.

 **XGBoost** (_Accuracy model XGBoost.ipynb_ located in Models folder)

 - Gradient Boosting: Built a sequence of decision trees where each tree learns from the errors of the previous one.

 - Performance: Achieved a balanced trade-off with 96% overall accuracy and Class 1 precision of 69%.

 - Strengths: Scalability for larger datasets and better handling of imbalanced data compared to logistic regression.

 - Weaknesses: Precision and recall still required improvement for real-world application.

 **Random Forest with SMOTE** 
 (_Accuracy model Random Forest and SMOTE_OPTIMIZED.ipynb_ with connection SQLite Database and _Accuracy model Random Forest and SMOTE_OPTIMIZED_1.4Mil.ipynb_ located in Models folder)

 - SMOTE: Balanced the dataset by generating synthetic samples for the minority fraud class, ensuring the model saw enough fraudulent examples during training.

 - Performance: Achieved 97% overall accuracy and comparable precision and recall for both legitimate and fraudulent transactions.

 - Strengths: Provided the most balanced performance across all metrics and worked well on both smaller (23k) and larger (1.4M+) datasets.

 - Conclusion: Selected as the best-performing model for this project.

<br><br>
**Conclusion**:

  1. **Objective Achieved**: Surpassed the 75% accuracy goal for both legitimate and fraudulent transactions.
  2. **Class Imbalance Addressed**: SMOTE effectively balanced the minority fraud class for improved model training.
  3. **Best Model**: Random Forest with SMOTE outperformed others, achieving comparable precision, recall, and F1-scores for both classes.
  4. **Scalability**: Models demonstrated strong performance on both smaller and larger datasets (23k and 1.4M+ transactions).
  5. **Real-World Applicability**: Established a solid foundation for fraud detection strategies while highlighting areas for continued improvement.

**Additional References**

  - [Machine Learning for Fraud Detection: Using Random Forests and Synthetic Minority Over-sampling (SMOTE) in Credit Card Transactions](https://medium.com/@kisetzuu/machine-learning-for-fraud-detection-using-random-forests-and-synthetic-minority-over-sampling-629cf7e74671)
  - [Python SQLite – Connecting to Database](https://www.geeksforgeeks.org/python-sqlite-connecting-to-database/)
  - [Learn XGBoost in Python Tutorial](https://www.datacamp.com/tutorial/xgboost-in-python)
  - [SMOTE with Random Forest in Python - Google AI Overview](https://www.google.com/search?q=random+forest+with+smote+in+python&oq=random+forest+with+smote+in+python&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIHCAEQIRigATIHCAIQIRigATIHCAMQIRigATIHCAQQIRigATIHCAUQIRigATIHCAYQIRifBTIHCAcQIRifBTIHCAgQIRifBTIHCAkQIRifBdIBCTQzODlqMWoxNagCCLACAQ&sourceid=chrome&ie=UTF-8)
  - [How to use SMOTE for an imbalanced dataset](https://www.turing.com/kb/smote-for-an-imbalanced-dataset)

Utilized Xpert Learning Assistant via Bootcamp Spot and Chat GPT for assistance in coding and resolving errors







