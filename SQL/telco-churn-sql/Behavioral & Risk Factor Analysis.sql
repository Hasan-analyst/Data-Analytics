-- Top 5 churned customers with highest TotalCharges
SELECT customerID, tenure, TotalCharges
FROM telco_customers
WHERE Churn = 'Yes'
ORDER BY TotalCharges DESC
LIMIT 5;

-- Average tenure of churned vs retained customers
SELECT Churn, ROUND(AVG(tenure), 2) AS avg_tenure
FROM telco_customers
GROUP BY Churn;

-- Correlation: Senior Citizens and Churn
SELECT SeniorCitizen,
  COUNT(*) AS total,
  SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
  ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM telco_customers
GROUP BY SeniorCitizen;
