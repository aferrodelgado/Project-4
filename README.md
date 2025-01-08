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

Our project involved two datasets of e-commerce transactions. The smaller dataset (Version 2), which included a binary indicator of fraudulence, was used to train a machine learning model. This trained model was then applied to the larger dataset (Version 1) to predict fraudulent transactions.

The primary goal of this project was to achieve a fraud detection model with a prediction accuracy of 75% or higher. Additionally, the model’s performance was compared to the original dataset’s fraud detection accuracy to evaluate its effectiveness.

 1. **Feature Engineering and Preprocessing**:
    - Drops unnecessary columns (Customer Location) and scales the data using StandardScaler.
    - Splits data into training and testing sets.
    - Ensures features (X) and target (y) are correctly defined, and missing or irrelevant data is excluded.

 2. **Model Architecture**:
    - Defines a neural network with:
      - 4 hidden layers of varying sizes (40, 30, 20, 10 units).
      - ReLU activation for all layers except the output layer.
      - A sigmoid activation function for binary classification in the output layer.

 3. **Model Compilation and Training**:
    - Compiles the model with:
      - binary_crossentropy loss function (ideal for binary classification problems).
      - adam optimizer (adaptive learning rate for efficient training).
      - Accuracy as the evaluation metric.

 4. **Performance Tracking**:
    - Plots:
      - Accuracy over epochs
        ![Model Accuracy over Epochs](https://github.com/user-attachments/assets/94bdb9d4-0825-4417-864b-dee6e43aac3a)
        <br><br>
      - Loss over epochs
        ![Model Loss over Epochs](https://github.com/user-attachments/assets/8aae9371-1a18-47c5-ba8e-c56ed7594d1a)

