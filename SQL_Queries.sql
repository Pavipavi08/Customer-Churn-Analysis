--Total Customers
SELECT COUNT(*) AS Total_Customers
FROM customer_churn;

--Churn Customers
SELECT COUNT(*) AS Churn_Customers
FROM customer_churn
WHERE Churn = 'Yes';

--Churn Rate
SELECT
ROUND(
COUNT(CASE WHEN Churn='Yes' THEN 1 END)*100.0/COUNT(*),
2
) AS Churn_Rate
FROM customer_churn;

--Contract Analysis
SELECT Contract, COUNT(*) AS Customers
FROM customer_churn
GROUP BY Contract;

--Internet Service Analysis
SELECT InternetService, COUNT(*) AS Customers
FROM customer_churn
GROUP BY InternetService;