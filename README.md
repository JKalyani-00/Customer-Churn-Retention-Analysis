# Customer Churn & Retention Analysis

##  Project Overview

This project analyzes customer churn and retention patterns using a telecom customer dataset containing **7,043 customer records**.

The analysis was performed using **SQL, Power BI, DAX, and Excel** to identify customer segments associated with higher churn and understand factors related to customer retention.

##  Tools & Technologies

* **SQL (MySQL)** – Data analysis and querying
* **Power BI** – Interactive dashboard and visualization
* **DAX** – Measures and calculated columns
* **Excel** – Data checking and initial data cleaning

##  Analysis Performed

### SQL Analysis

Created **15 SQL queries** to analyze:

* Total customers and churned customers
* Overall churn rate
* Customers by contract type
* Customers by internet service
* Churn by contract
* Churn by payment method
* Churn by tenure group
* Churn by internet service
* Average monthly charges by churn status
* Customers with high monthly charges
* Churn by senior citizen status
* Churn by tech support
* High-churn customer segments
* Overall churn summary

### Power BI Dashboard

Created a **3-page interactive dashboard**.

#### 1. Customer Overview

* Total Customers
* Churned Customers
* Churn Rate
* Average Monthly Charges
* Average Tenure
* Customer churn by contract
* Customer churn by internet service
* Customer churn by payment method
* Customer churn by tenure group
* Customer churn by gender

#### 2. Churn Analysis

* Churn rate by contract
* Churn rate by tenure group
* Churn rate by payment method
* Churn rate by internet service
* Churn rate by monthly charges

#### 3. Retention Insights

* Churn rate by online security
* Churn rate by tech support
* Churn rate by partner status
* Churn rate by dependents
* Churn rate by paperless billing

##  Key Findings

* Overall customer churn rate was **26.5%**.
* **Month-to-month customers** showed substantially higher churn than customers on longer contracts.
* Customers in the **0–12 month tenure group** had the highest churn rate.
* Churned customers had higher average monthly charges (**74.44**) compared with customers who stayed (**61.27**).
* **Senior citizens** showed a higher churn rate than non-senior customers.
* Customers without **Tech Support** showed substantially higher churn.
* The largest high-churn segment was **Month-to-month + Fiber optic**, with **1,162 churned customers**.

##  Project Structure

```text
Customer-Churn-Retention-Analysis/
│
├── SQL/
│   └── customer_churn_analysis.sql
│
├── PowerBI/
│   ├── Customer_Churn_Retention_Analysis.pbix
│   ├── Customer_Overview.png
│   ├── Churn_Analysis.png
│   └── Retention_Insights.png
│
└── README.md
```

##  Dashboard Preview

### Customer Overview

![Customer Overview](PowerBI/Customer_Overview.png)

### Churn Analysis

![Churn Analysis](PowerBI/Churn_Analysis.png)

### Retention Insights

![Retention Insights](PowerBI/Retention_Insights.png)

##  Project Objective

The objective of this project was to analyze customer churn patterns, identify higher-risk customer segments, and present the findings through SQL analysis and an interactive Power BI dashboard.

The objective of this project was to analyze customer churn patterns, identify higher-risk customer segments, and present the findings through SQL analysis and an interactive Power BI dashboard.
