-- 1. Overall churn rate
SELECT 
  COUNT(*) AS total_customers,
  SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
  ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM telco_customers;

-- 2. Churn rate by contract type
SELECT Contract,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
  ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM telco_customers
GROUP BY Contract;

-- 3. Monthly charges by churn status
SELECT Churn,
  ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charge,
  ROUND(AVG(TotalCharges), 2) AS avg_total_charge
FROM telco_customers
GROUP BY Churn;

-- 4. Churn by tenure group
SELECT 
  CASE 
    WHEN tenure < 6 THEN '0-6 months'
    WHEN tenure < 12 THEN '6-12 months'
    WHEN tenure < 24 THEN '1-2 years'
    ELSE '2+ years'
  END AS tenure_group,
  COUNT(*) AS total,
  SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
  ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM telco_customers
GROUP BY tenure_group;
