# SuspiciousTransactions

## Background

Fraud is prevalent these days, whether you are a small taco shop or a large international business. While there are emerging technologies that employ machine learning and artificial intelligence to detect fraud, many instances of fraud detection still require strong data analytics to find abnormal charges.

In this project, we use our SQL skills to analyze historical credit card transactions and consumption patterns in order to identify possible fraudulent transactions.

These three main tasks are to be accomplished:

1. Data Modeling: Define a database model to store the credit card transactions data and create a new PostgreSQL database using your model.

2. Data Engineering: Create a database schema on PostgreSQL and populate your  database from the CSV files provided.

3. Data Analysis: Analyze the data to identify possible fraudulent transactions trends data, and develop a report of your observations.

---

## Files

* [card_holder.csv](Data/card_holder.csv)
* [credit_card.csv](Data/credit_card.csv)
* [merchant.csv](Data/merchant.csv)
* [merchant_category.csv](Data/merchant_category.csv)
* [transaction.csv](Data/transaction.csv)

### Data Analysis
#### Part 1:

The CFO of your firm has requested a report to help analyze potential fraudulent transactions. Using your newly created database, generate queries that will discover the information needed to answer the following questions, then use your repository's ReadME file to create a markdown report you can share with the CFO:

<b> I was able to compare two card holders, and noticed their consumption patterns are different. By looking at card holder 2 and 18's trend data, I was able to observe their consumption patterns which show card holder 2 using the card frequently, but for small amounts, and card holder 18 had used very large amounts in very separated periods of time. This is suspicious activity meaning there is a chance that card 18 has been hacked. </b>
![image](https://user-images.githubusercontent.com/73862470/148669281-56426dec-c842-41b7-8ae7-9ce8c8c8043c.png)

#### Part 2:

The CEO of the biggest customer of the firm suspects that someone has used her corporate credit card without authorization in the first quarter of 2018 to pay quite expensive restaurant bills. Again, for privacy reasons, you know only that the cardholder ID in question is 25.

<b> Using Plotly Express, I was able to see the data from January 2018 to June 2018 for cardholder ID 25. There are a few visible outliers throughout the months. 1 outlier in January, March and May; 3 outliers in April and June. </b>
![image](https://user-images.githubusercontent.com/73862470/148669401-959193d2-320c-4fa8-969f-d1e18fc0de9e.png)


## Technologies
[![forthebadge made-with-python](http://ForTheBadge.com/images/badges/made-with-python.svg)](https://www.python.org/) </br>
[![Made withJupyter](https://img.shields.io/badge/Made%20with-Jupyter-orange?style=for-the-badge&logo=Jupyter)](https://jupyter.org/try) </br>
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) </br>
