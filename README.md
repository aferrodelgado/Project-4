# Project-4

**Dataset**: [Fraudulent E-Commerce Transactions](https://www.kaggle.com/datasets/shriyashjagtap/fraudulent-e-commerce-transactions/data?select=Fraudulent_E-Commerce_Transaction_Data_2.csv)

<img width="800" alt="Screenshot 2025-01-07 at 6 57 08 PM" src="https://github.com/user-attachments/assets/2d8d92db-8e6c-4c9d-a1ec-3fa11f05d7e7" />

**Dataset Summary**:

The “Fraudulent E-Commerce Transactions” dataset is a synthetic dataset created to simulate transactional data from an e-commerce platform, with a focus on fraud detection. It includes features commonly found in real-world transactional data and additional attributes specifically engineered to support fraud detection model development.

  **Dataset Versions**:

  - **Version 1**: Contains 1,472,952 transactions. This larger dataset does not include the binary fraud indicator and is used for testing the model.
    - Fraudulent_E-Commerce_Transaction_Data.csv (downloadable via the dataset link above)
      
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
       - 4 hidden layers of varying sizes (100, 50, 20, 10 units).
       - ReLU activation for all layers except the output layer.
       - A sigmoid activation function for binary classification in the output layer.

    - Summarizes the model structure.

 3. **Model Compilation and Training**:
    - Compiles the model with:
      - binary_crossentropy loss function (ideal for binary classification problems).
      - adam optimizer (adaptive learning rate for efficient training).
      - Accuracy as the evaluation metric.
    - Trains the model for 10 epochs with a batch size of 32 and tracks accuracy and loss for each epoch using a custom callback.

 4. **Performance Tracking**:
    - Captures training accuracy and loss per epoch using a Callback class.
    - Evaluates the model on test data and calculates loss and accuracy.

 5. **Results Visualization**:
    - Plots:
       - Accuracy over epochs.
       - Loss over epochs.
     
  6. **Model Evaluation**:
     - Outputs final test accuracy (97.16%) and loss (0.1123), demonstrating the model performs well on unseen data.
