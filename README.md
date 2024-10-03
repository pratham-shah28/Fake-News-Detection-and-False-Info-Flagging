# False Information Flagger

## Overview
False Information Flagger is a comprehensive tool designed to detect and flag false information. The application features a Flutter-based frontend and a FastAPI-powered backend. It leverages machine learning models such as LSTM, Logistic Regression, and Multinomial Naive Bayes for classification, and also employs stance detection techniques to improve accuracy.

## Features
- **Frontend**: Developed using Flutter, providing a clean and intuitive user interface for interacting with the system.
- **Backend**: Powered by FastAPI, ensuring fast and scalable server-side operations.
- **Machine Learning Models**: 
  - **LSTM (Long Short-Term Memory)** for text classification.
  - **Logistic Regression** for binary classification.
  - **Multinomial Naive Bayes** for probabilistic classification.
- **Stance Detection**: Identifies the stance of a given text in relation to a claim (supports/against), helping to detect misinformation more accurately.

## Technology Stack
- **Frontend**: Flutter
- **Backend**: FastAPI (Python)
- **Machine Learning Models**: LSTM, Logistic Regression, Multinomial Naive Bayes
- **Database**: (Include the database being used, e.g., PostgreSQL, MongoDB, etc.)
- **Other Tools**: (Include any other tools or libraries used, such as TensorFlow, Scikit-learn, etc.)

## Project Architecture

+----------------+ +-------------------+ +--------------------------+ | Flutter App | <--> | FastAPI Backend | <--> | ML Models (LSTM, LR, NB)| +----------------+ +-------------------+ +--------------------------+

1. **Flutter App**: The user interacts with the application through the Flutter-based UI.
2. **FastAPI Backend**: The backend handles API requests and interacts with the machine learning models.
3. **ML Models**: These models process the text and predict the likelihood of false information.

## Setup and Installation

### Prerequisites
- Flutter SDK
- Python 3.x
- FastAPI
- TensorFlow, Scikit-learn, and other dependencies

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-repo/false-information-flagger.git
   cd false-information-flagger

