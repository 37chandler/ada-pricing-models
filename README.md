# ADA: Pricing Models for Carbitrage

## Project Overview

This project is focused on building and deploying regression models to estimate the value of used cars, using our Carbitrage dataset. The goal is to create accurate models that allow for the identification of good deals, with model outputs feeding into a public-facing dashboard. This assignment will give you hands-on experience with scalable data science in a cloud environment and introduce you to formal project planning through a feature specification document.

The project consists of two main phases:
1. **Project Planning**: Creating a feature specification document that defines the project scope, objectives, and technical requirements. This phase is part of the "Regression Modeling Specification" assignemnt that everyone will do. 
2. **Model Building**: Developing regression models for different car makes and models, storing the results in Google BigQuery (GBQ), and creating a view to integrate model outputs with the latest data for the dashboard. This is an "A/B Choice" assignment.

## Repository Structure

- `regression-data-explore.ipynb`: A Jupyter Notebook to help you explore the dataset. Use this notebook to get a handle on the features available, assess data quality, and identify any preprocessing steps that may be necessary before modeling.
- `estimated-price.sql`: when do complete the final part of the project, creating a view that estimates car prices, store the code here. 
- `README.md`: This file, which provides an overview of the project and guidance on getting started.

You will create your own notebook for the regression modeling and upload to GBQ piece. I recommend creating a new data set within the GBQ project you used for the Wedge. If you want to keep my naming convention, call the dataset ID "carbitrage". 

## Getting Started

1. **Data Exploration**: Start by opening `regression-data-explore.ipynb`. This notebook will help you understand the structure and content of the dataset. As you explore the data, consider the following:
   - Key features that may influence car value (e.g., make, model, year, mileage).
   - Data quality issues such as missing values or inconsistencies.
   - Potential feature engineering steps to improve model accuracy.

2. **Model Building**: Once your project plan is complete, begin the model building phase. You’ll be fitting regression models for each make/model combination, evaluating their accuracy, and storing results in GBQ.
3. **View Creation**: The final phase of the project is to create a view that merges the model-fitting data with your estimated parameters. The view should have at least two columns: `url` (the unique identifier for a listing) and `estimated_price`. 

