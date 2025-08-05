# Telco Customer Churn SQL Project

This project analyzes customer churn using SQL based on a sample telecom dataset. The goal is to identify churn patterns and understand the characteristics of customers likely to leave the service.

---

## Dataset

The dataset contains customer-level information including:

- Demographics (gender, senior citizen, partner, dependents)
- Services used (internet, phone, streaming, security)
- Account information (contract type, payment method, charges)
- Churn label (Yes/No)

---

## Project Structure

```
telco-churn-sql/
├── telco_customers.csv          ← Sample dataset
├── create_table.sql             ← SQL schema for table creation
├── churn_analysis.sql           ← Key churn metrics and trends
├── segment_analysis.sql         ← Churn analysis by customer attributes
├── Behavioral & Risk Factor Analysis ← Some Adv queries
├── README.md                    ← Project summary
```

---

## Key SQL Analyses

- Overall churn rate
- Churn by contract type and tenure
- Charges and churn correlation
- Churn by gender and payment method
- Advanced: Top churned customers, senior citizen impact
