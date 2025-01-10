# Project-4

**Dataset**: [Fraudulent E-Commerce Transactions](https://www.kaggle.com/datasets/shriyashjagtap/fraudulent-e-commerce-transactions/data?select=Fraudulent_E-Commerce_Transaction_Data_2.csv)

<img width="800" alt="Screenshot 2025-01-07 at 6 57 08 PM" src="https://github.com/user-attachments/assets/8ba82b1c-1c57-4b90-9316-9ca8c2ae3de1" />

**Dataset Summary**:

The “Fraudulent E-Commerce Transactions” dataset is a synthetic dataset created to simulate transactional data from an e-commerce platform, with a focus on fraud detection. It includes features commonly found in real-world transactional data and additional attributes specifically engineered to support fraud detection model development.

  **Dataset Versions**:

  - **Version 1**: Contains **1,472,952 transactions**. This larger dataset does not include the binary fraud indicator and is used for testing the model.
    
     - Fraudulent_E-Commerce_Transaction_Data.csv (downloadable via the Dataset link above)
    
  - **Version 2**: Contains **23,634 transactions** and includes a binary “Is Fraudulent” column (1 for fraudulent, 0 for legitimate). This smaller dataset is used for training the model.
    
     - Fraudulent_E-Commerce_Transaction_Data_2.csv

  **Key Statistics**:

  - **Fraudulent Transactions**: Approximately 5% of total transactions.
  - **Features**: 16 features

<br><br>
**Project Summary**:

This project aimed to detect fraudulent e-commerce transactions using machine learning models. The smaller dataset (Version 2), containing a binary fraud indicator, was utilized for training and evaluation. Initially, the goal was to achieve an overall prediction accuracy of 75% or higher. However, recognizing the impact of dataset imbalance (5% fraudulent transactions), the focus shifted to achieving a recall of 75% or higher for identifying fraudulent transactions (Class 1).

The trained model was then applied to the larger dataset (Version 1) to predict fraudulent transactions.

**Feature Engineering and Preprocessing**:

 1. **Data Preprocessing**:
    - Removed irrelevant columns such as Customer Location and Year to reduce noise in the data.
    - Scaled numerical features using StandardScaler to ensure that all features contributed equally to the model.

 2. **Data Splitting**:
    - Split the dataset into training and testing sets to evaluate model performance on unseen data

 3. **Class Imbalance Handling**:
    - XGBoost was chosen over Random Forest with SMOTE. XGBoost leveraged scale_pos_weight to handle the imbalance of between fraudulent and non-fraudulent transactions (5% fraud).

 **Model: XGBoost**:
  
 1. **Model Parameters**:
    - Number of Trees (n_estimators): 200.
    - Tree Depth (max_depth): 5.
    - Class Weight Scaline (scale_pos_weight): 15 to emphasize minority class predictions.
    - Objective: Binary classification (binary: logistic).
    - Evaluation Metric: Logarithmic Loss (logloss).

 2. **Training and Evaluation**:
    - Early stopping implemented during training to prevent overfitting.
    - Predictions made using a probability threshold of 0.3 for binary classification.

<br><br>
**Model Evaluation and Analysis**:

 **XGBoost Results**:
 - **Confusion Matrix**:
   - [[239939 39884]
   - [   3643 11125]]
  
 - **Key Metrics**:
   - Precision (Class 1): 0.22
   - Recall (Class 1): 0.75
   - F1-Score (Class 1): 0.34
   - Overall Accuracy: 0.85
   - Macro Average F1-Score: 0.63
   - Weighted Average F1-Score: 0.89

 
  - **Recall Priority**: The XGBoost model achieved **75% recall** for fraudulent transactions (Class 1), successfully identifying a majority of fraudulent cases in the test set.
    
  - **Precision Trade-Off**: Precision for fraudulent transactions (22%) was lower due to the trade-off required to achieve higher recall. This means the model flagged more transactions as fraudulent, leading to some false positives.

  - **Balanced Performance**: While precision was sacrificed, the F1-Score (0.34) for Class 1 reflects a reasonable trade-off for use cases where identifying fraudulent transactions is critical.

  - **Overall Accuracy and Weighted F1-Score**: Despite focusing on recall, the model maintained a strong overall accuracy (85%) and a high weighted F1-Score (0.89).

  - **Scalability and Speed**: XGBoost demonstrated its strength in efficiently handling large datasets, processing over 1.4 million records with optimized performance.

<br><br>
**Performance Comparison**:
  - Analyzing Fraudulent_E-Commerce_Transaction_Data_2.csv to select model to run for the larger dataset.

This evaluation highlights the model’s suitability for scenarios where identifying as many fraudulent transactions as possible is the top priority, even at the cost of increased false positives.
![performance_comparison](https://github.com/user-attachments/assets/884f92c4-4128-4ef0-88f9-0d58bf33cc4c)


**XGBoost Model Precision versus Recall**
![precision_recall_curve_xgboost](https://github.com/user-attachments/assets/19e7a181-64f8-4096-b34d-bbea80524558)


1. **High Precision at Low Recall**:
On the left side of the curve, the precision is close to 1.0 when recall is very low. This indicates that when the model predicts very few transactions as fraudulent, it is mostly correct (fewer false positives). However, it is missing a lot of actual fraudulent transactions.

2. **Trade-Off**:
As recall increases, the precision decreases. This is because, to catch more fraudulent transactions, the model starts predicting more transactions as fraudulent, which increases false positives.

3. **Model Performance**:
The area under the curve gives a sense of how well the model performs. If the curve stays high (closer to 1.0), it indicates that the model maintains a good balance between precision and recall. A steep drop-off in precision as recall increases may indicate a trade-off between identifying true positives and avoiding false positives.

4. **Application-Specific Decision**:
Depending on the use case, you might prioritize precision (minimizing false alarms in fraud detection, where false positives are costly) or recall (ensuring all fraudulent transactions are flagged).

<br><br>
**Conclusion**:
The **XGBoost model** was decided to be the most effective solution for detecting fraudulent e-commerce transactions based on accuracy and speed. While the original goal of achieving 75% overall prediction accuracy was reconsidered due to the imbalanced dataset, the new focus on **recall** ensured the detection of a significant proportion of fraudulent transactions.

The final model provided a **recall of 75%**, which means 3 out of 4 fraudulent transactions were correctly identified. This result demonstrates the model’s effectiveness in high-stakes scenarios where missing fraudulent cases is costlier than flagging legitimate ones. The decision threshold can be adjusted to optimize the balance between precision and recall, allowing for quick adaptability to business needs, while maintaining speed and scalability for large-scale datasets.




