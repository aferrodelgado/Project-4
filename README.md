# Project-4

**Dataset**: [Fraudulent E-Commerce Transactions](https://www.kaggle.com/datasets/shriyashjagtap/fraudulent-e-commerce-transactions/data?select=Fraudulent_E-Commerce_Transaction_Data_2.csv)

<img width="800" alt="Screenshot 2025-01-07 at 6 57 08 PM" src="https://github.com/user-attachments/assets/8ba82b1c-1c57-4b90-9316-9ca8c2ae3de1" />

**Dataset Summary**:

The “Fraudulent E-Commerce Transactions” dataset is a synthetic dataset created to simulate transactional data from an e-commerce platform, with a focus on fraud detection. It includes features commonly found in real-world transactional data and additional attributes specifically engineered to support fraud detection model development.

  **Dataset Versions**:

  - **Version 1**: Contains 1,472,952 transactions. This larger dataset does not include the binary fraud indicator and is used for testing the model.
    
     - Fraudulent_E-Commerce_Transaction_Data.csv (downloadable via the Dataset link above)
    
  - **Version 2**: Contains 23,634 transactions and includes a binary “Is Fraudulent” column (1 for fraudulent, 0 for legitimate). This smaller dataset is used for training the model.
    
     - Fraudulent_E-Commerce_Transaction_Data_2.csv

  **Key Statistics**:

  - **Fraudulent Transactions**: Approximately 5% of total transactions.
  - **Features**: 16 features

<br><br>
**Project Summary**:

Our project aimed to detect fraudulent e-commerce transactions using machine learning models. The smaller dataset (Version 2), containing a binary fraud indicator, was utilized for training and evaluation. The goal was to achieve a prediction accuracy of 75% or higher, with a focus on improving the recall and precision for detecting fraudulent transactions (Class 1). The trained model was applied to the larger dataset (Version 1) for fraud prediction.

**Feature Engineering and Preprocessing**:

 1. **Data Preprocessing**:
    - Removed irrelevant columns such as Customer Location and Year to reduce noise in the data.
    - Scaled numerical features using StandardScaler to ensure that all features contributed equally to the model.

 2. **Data Splitting**:
    - Split the dataset into training and testing sets to evaluate model performance on unseen data

 3. **Class Imbalance Handling**:
    - Instead of using Random Forest and SMOTE, XGBoost’s scale_pos_weight parameter was utilized to account for the imbalance in fraudulent and non-fraudulent transactions (5% fraud).

 **Model Architecture: XGBoost**:
  
 1. **Model Parameters**:
    - Number of Trees (n_estimators): 200.
    - Tree Depth (max_depth): 5.
    - Class Weight Scaline (scale_pos_weight): 10 to emphasize minority class predictions.
    - Objective: Binary classification (binary: logistic).
    - Evaluation Metric: Logarithmic Loss (logloss).

 2. **Training and Evaluation**:
    - Early stopping implemented during training to prevent overfitting.
    - Predictions made using a probability threshold of 0.5 for binary classification.

**Model Evaluation**:

 **XGBoost Results**:
 - **Confusion Matrix**:
   - [[4394   89]
   - [ 126   118]]
  
 - **Key Metrics**:
   - Precision (Class 1): 0.57
   - Recall (Class 1): 0.48
   - F1-Score (Class 1): 0.52
   - Overall Accuracy: 0.95
   - Macro Average F1-Score: 0.75
   - Weighted Average F1-Score: 0.95
  
 **Analysis**:
 - XGBoost achieved strong precision for detecting fraudulent transactions, minimizing false positives.
 - While recall was slightly lower, the F1-Score for fraudulent transactions indicated a balanced trade-off between precision and recall.
 - The overall accuracy (95%) and weighted F1-Score demonstrate robust performance on the highly imbalanced dataset.
