# Sales Analysis Dashboard – Power BI Project

## 📌 Project Overview

This project is a **Sales Analysis dashboard built using Power BI** to analyze overall sales performance, profitability, shipment behavior, and salesperson performance.

The dashboard provides management with a **clear, interactive view of business performance**, helping identify trends, high-performing salespersons, profit margins, and shipment efficiency across regions.

---

## 📊 Dataset Description

The dataset used in this project contains sales transaction data related to a chocolate products company and includes:

- Sales amount
- Number of boxes sold
- Shipment details
- Costs and profit
- Salesperson information
- Profit percentage
- LBS % (logistics / shipment-related metric)
- Time-based sales data (monthly)

The dataset was cleaned and transformed to support **trend analysis, performance comparison, and profitability insights**.

---

## 🧹 Data Cleaning & Preparation

Data preparation was performed using **Power Query**, including:

- Removal of duplicate records
- Handling missing and invalid values
- Standardizing numerical fields (sales, cost, profit)
- Creating calculated columns for profit and profit %
- Ensuring consistent date formats for trend analysis
- Validating shipment and box count data

---

## 🔄 Data Modeling

- Created a structured sales fact table
- Built relationships for time-based analysis
- Optimized the model for performance and slicing by region and salesperson

---

## 📐 Key DAX Measures

Important DAX measures created include:

- Total Sales
- Total Boxes Sold
- Total Shipments
- Total Cost
- Total Profit
- Profit Percentage
- Salesperson-wise Sales & Profit
- Shipment Performance Metrics

All measures dynamically update based on filters such as **country and time period**.

---

## 📈 Dashboard & Visualizations

The Power BI dashboard includes the following sections:

### 🔹 KPI Cards

- Total Sales
- Total Boxes Sold
- Total Shipments
- Total Costs
- Total Profit
- Overall Profit Percentage Gauge

### 🔹 Trend Analysis

- Line chart showing monthly sales trends
- Helps identify peak and low-performing months

### 🔹 Shipment Analysis

- Histogram showing shipment distribution
- Shipment efficiency indicator (percentage gauge)
- Useful for logistics and operations insights

### 🔹 Salesperson Performance Table

- Salesperson-wise sales and profit
- Profit percentage comparison
- LBS % contribution
- Visual indicators highlighting high and low performers

### 🔹 Region Filtering

- Country-level filters (Australia, Canada, India, New Zealand, UK, USA)
- Enables regional performance comparison

---

## 📊 Insights Generated

- Identified top-performing salespersons based on profit %
- Observed seasonal trends in monthly sales
- Highlighted shipment inefficiencies impacting profit
- Compared regional sales performance
- Analyzed cost vs profit contribution

---

## 🛠 Tools & Technologies Used

- **Power BI**
- **Power Query**
- **DAX (Data Analysis Expressions)**
- **Microsoft Excel** (dataset source)

## 🎯 Use Case

This project supports:

- Sales performance monitoring
- Profitability analysis
- Salesperson evaluation
- Logistics and shipment optimization
- Strategic decision-making
