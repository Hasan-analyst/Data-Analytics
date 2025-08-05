-- 1️. Rank customers by TotalCharges within each contract

SELECT
  customerID,
  Contract,
  TotalCharges,
  RANK() OVER (PARTITION BY Contract ORDER BY TotalCharges DESC) AS spend_rank
FROM telco_customers
WHERE TotalCharges IS NOT NULL;



-- 2️.Cumulative churn by tenure (Cohort-based churn trend)

WITH churn_cohort AS (
  SELECT
    tenure,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned
  FROM telco_customers
  GROUP BY tenure
)
SELECT 
  tenure,
  churned,
  SUM(churned) OVER (ORDER BY tenure ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_churn
FROM churn_cohort;


-- 3️.Flag customers above average spend within contract

SELECT 
  customerID,
  Contract,
  TotalCharges,
  AVG(TotalCharges) OVER (PARTITION BY Contract) AS avg_contract_spend,
  CASE 
    WHEN TotalCharges > AVG(TotalCharges) OVER (PARTITION BY Contract) THEN 'Above Average'
    ELSE 'Below Average'
  END AS spend_flag
FROM telco_customers
WHERE TotalCharges IS NOT NULL;
