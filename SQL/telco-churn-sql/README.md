# Telco Customer Churn Analysis (SQL)

## Project Overview

This project analyzes **customer churn behavior in the telecom domain** using SQL.  
The main objective is to understand **why customers churn**, identify **high-risk segments**, and evaluate how churn impacts **revenue and customer lifetime value**.

The project reflects a real-world **telecom retention analytics scenario**.

---

## Dataset Description

The dataset contains customer-level information related to telecom subscriptions and usage.  
Each record represents a single customer and includes:

- Demographic details (gender, senior citizen status, family information)
- Service subscriptions (phone, internet, security, streaming services)
- Contract and billing information
- Monthly and lifetime charges
- Customer churn status

---

## Business Problem

Customer churn is a major challenge in the telecom industry as it directly affects revenue and growth.  
The business needs to:

- Identify customers likely to churn
- Understand key churn drivers
- Protect high-value customers
- Improve customer retention strategies

This project addresses these goals using structured SQL analysis.

---

## Analysis Performed

### Churn Analysis

- Calculated overall churn rate
- Analyzed churn across different contract types
- Compared average monthly and total charges of churned vs retained customers
- Studied churn behavior across different tenure groups

**Key Insight:**  
Customers with short tenure and month-to-month contracts show higher churn rates.

---

### Behavioral & Risk Factor Analysis

- Identified high-value customers who churned
- Compared average tenure between churned and retained customers
- Analyzed churn behavior among senior citizens

**Key Insight:**  
Short-tenure customers and senior citizens exhibit higher churn risk.

---

### Cohort & Ranking Analysis

- Ranked customers by total spend within each contract type
- Analyzed cumulative churn trends across customer tenure
- Flagged customers spending above the average within their contract group

**Key Insight:**  
High-spending customers churn less frequently, but their churn leads to significant revenue loss.

---

### Segment Analysis

- Analyzed churn by gender
- Evaluated churn across different payment methods
- Studied churn patterns based on internet services and security features
- Analyzed churn for customers subscribed to multiple services

**Key Insight:**  
Customers using fewer services and certain payment methods are more likely to churn.

---

## Key Business Insights

- Contract type and tenure are strong churn indicators
- Service bundling reduces churn risk
- Payment behavior influences customer retention
- High-value customers require targeted retention strategies

---

## Tools & Technologies Used

- SQL (MySQL / PostgreSQL compatible)
- Relational data analysis
- Aggregation and window functions
- Business-focused analytical querying

## Use Case

This project represents a real-world **telecom customer retention use case**, where data analysis is used to:

- Reduce customer churn
- Improve retention strategies
- Protect revenue from high-value customers
- Support data-driven business decisions

---

## Conclusion

This project demonstrates the ability to analyze customer churn using SQL and transform raw telecom data into **actionable business insights**.
