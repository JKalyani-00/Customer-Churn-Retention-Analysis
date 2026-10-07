CREATE DATABASE customer_churn;
USE customer_churn;

SELECT COUNT(*) AS total_customers
FROM `wa_fn-usec_-telco-customer-churn`;


SELECT COUNT(*) AS churned_customers
FROM `wa_fn-usec_-telco-customer-churn`
WHERE Churn = 'Yes';


SELECT 
    ROUND( COUNT(CASE WHEN Churn = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 1) AS churn_rate
FROM `wa_fn-usec_-telco-customer-churn`;


SELECT Contract, COUNT(*) AS total_customers
FROM `wa_fn-usec_-telco-customer-churn`
GROUP BY Contract
ORDER BY total_customers DESC;


SELECT InternetService, COUNT(*) AS total_customers
FROM `wa_fn-usec_-telco-customer-churn`
GROUP BY InternetService
ORDER BY total_customers DESC;


SELECT Contract, Churn, COUNT(*) AS customer_count
FROM `wa_fn-usec_-telco-customer-churn`
GROUP BY Contract, Churn
ORDER BY Contract, Churn;


SELECT PaymentMethod, Churn, COUNT(*) AS customer_count
FROM `wa_fn-usec_-telco-customer-churn`
GROUP BY PaymentMethod, Churn
ORDER BY PaymentMethod, Churn;


SELECT
    CASE
        WHEN tenure <= 12 THEN '0-12 Months'
        WHEN tenure <= 24 THEN '13-24 Months'
        WHEN tenure <= 48 THEN '25-48 Months'
        ELSE '49+ Months'
    END AS tenure_group,
    Churn,
    COUNT(*) AS customer_count
FROM `wa_fn-usec_-telco-customer-churn`
GROUP BY tenure_group, Churn
ORDER BY
    CASE
        WHEN tenure_group = '0-12 Months' THEN 1
        WHEN tenure_group = '13-24 Months' THEN 2
        WHEN tenure_group = '25-48 Months' THEN 3
        ELSE 4
    END,
    Churn;
    
    
    SELECT
    InternetService,
    Churn,
    COUNT(*) AS customer_count
FROM `wa_fn-usec_-telco-customer-churn`
GROUP BY InternetService, Churn
ORDER BY InternetService, Churn;


SELECT Churn,
 ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges
FROM `wa_fn-usec_-telco-customer-churn`
GROUP BY Churn;


SELECT COUNT(*) AS high_charge_customers
FROM `wa_fn-usec_-telco-customer-churn`
WHERE MonthlyCharges >= 90;


SELECT SeniorCitizen, Churn, COUNT(*) AS customer_count
FROM `wa_fn-usec_-telco-customer-churn`
GROUP BY SeniorCitizen, Churn
ORDER BY SeniorCitizen, Churn;


SELECT TechSupport, Churn, COUNT(*) AS customer_count
FROM `wa_fn-usec_-telco-customer-churn`
GROUP BY TechSupport, Churn
ORDER BY TechSupport, Churn;


SELECT Contract, InternetService, COUNT(*) AS churned_customers
FROM `wa_fn-usec_-telco-customer-churn`
WHERE Churn = 'Yes'
GROUP BY Contract, InternetService
ORDER BY churned_customers DESC
LIMIT 5;


SELECT
    COUNT(*) AS total_customers,
    COUNT(CASE WHEN Churn = 'Yes' THEN 1 END) AS churned_customers,
    ROUND(
        COUNT(CASE WHEN Churn = 'Yes' THEN 1 END) * 100.0 / COUNT(*),
        1
    ) AS churn_rate,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges,
    ROUND(AVG(tenure), 2) AS avg_tenure
FROM `wa_fn-usec_-telco-customer-churn`;