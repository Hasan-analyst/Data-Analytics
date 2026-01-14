# Product Inventory and Pricing Analysis (SQL)

## Project Overview

This project performs an end-to-end **inventory and pricing analysis** using SQL.  
The objective is to analyze product availability, inventory value, pricing efficiency, and discount behavior from a structured product dataset.

The project is organized into **four SQL files**, each addressing a specific analytical requirement.

---

## Dataset Description

The dataset contains product-level inventory records with the following attributes:

- Category – Product category
- name – Product name
- mrp – Maximum Retail Price
- discountPercent – Discount percentage
- discountedSellingPrice – Final selling price after discount
- availableQuantity – Quantity available in stock
- quantity – Order quantity
- weightInGms – Product weight
- outOfStock – Stock availability flag

This data enables both **inventory valuation** and **pricing strategy analysis**.

---

## Project Structure

├── 1_create_table.sql
├── 2_inventory_analysis.sql
├── 3_flags_and_operations.sql
├── 4_pricing_analysis.sql

## Inventory Analysis

This module evaluates inventory value and cost distribution.

# Key Queries

Total inventory value (excluding out-of-stock products)
Inventory value by category
Top 5 products by inventory cost

# Business Insight

    Helps identify high-value inventory, capital lock-in, and priority products for stock management.

## Flags and Operational Analysis

     This module focuses on classification and data quality checks.

# Key Queries

     Product classification into Bulk, Heavy, or Regular
     Detection of in-stock products with zero available quantity
     Category-wise summary metrics (average price, discount, product count)

# Business Insight

     Improves operational accuracy and identifies potential data inconsistencies.

## Pricing Analysis

     This module analyzes pricing effectiveness and discount behavior.

# Key Queries

     Top 5 products with highest discount value
     Price per gram analysis for value comparison
     Products offering above-average discounts within their category

# Business Insight

     Supports pricing optimization and promotional strategy decisions.

## Tools and Technologies

SQL (MySQL / PostgreSQL compatible)
Aggregate functions
CASE statements
Common Table Expressions (CTEs)
GROUP BY, ORDER BY, JOIN
Skills Demonstrated
SQL table design
Inventory and pricing analysis
Data validation and anomaly detection
Business-focused query writing
Modular SQL project organization

## Use Case

This project simulates a real-world inventory and pricing analytics scenario in retail and e-commerce environments.
