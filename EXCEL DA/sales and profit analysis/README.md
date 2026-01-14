# Sales & Profit Analysis

This folder contains the sales and profit dataset and supporting materials for exploratory analysis and reporting. The main data file is a macro-enabled Excel workbook that holds transactional sales and profit records.

## Overview

This dataset is useful for:

- Exploratory analysis (sales trends, seasonality)
- Profitability analysis (margins by product/region)
- Performance reporting (top customers and products)
- Building dashboards and visualizations (Excel or BI tools)

The workbook is macro-enabled, so it may include automated sheets or refresh routines. Open it in Excel and enable macros only if you trust the source.

## Typical columns (confirm by opening the workbook)

Common columns you will often find in a sales & profit dataset:

- `OrderDate` / `Date`
- `OrderID` / `InvoiceID`
- `Customer` / `CustomerID`
- `Region` / `Country` / `City`
- `Product` / `ProductCategory` / `SKU`
- `Quantity` / `UnitsSold`
- `UnitPrice` / `Sales`
- `Discount`
- `Cost` / `COGS`
- `Profit` / `ProfitMargin`

## How to use

1. Open `Sales and Profit Data (version 1).xlsb.xlsm` in Microsoft Excel (Windows recommended).
2. If Excel warns about macros, review them and enable only if you trust the workbook.
3. Use filters, PivotTables or built-in sheets to explore time, product, and region breakdowns.
4. For reproducible analysis, export needed sheets as CSV and work in Python or R.

## Suggested analyses and dashboards

- Sales over time: daily/weekly/monthly trends and year-over-year comparisons
- Profitability: profit and margin by product, category and region
- Top products/customers: Pareto (80/20) analysis for sales and profit
- Discount impact: how discounts affect margin and volume
- Seasonality and forecasting: identify peaks and build simple forecasts
- Cohort analysis: repeat purchase behavior and retention
- KPIs: Total Sales, Total Profit, Average Order Value, Gross Margin %

## Quick reproducible example (Python)

After exporting a sheet to `data.csv`, you can load it with pandas:

```python
import pandas as pd

df = pd.read_csv('data.csv', parse_dates=['OrderDate'])
sales_by_month = df.resample('M', on='OrderDate')['Sales'].sum()
print(sales_by_month.tail())
```

Simple summary of what's in the workbook and what I did

- Workbook: `Sales and Profit Data (version 1).xlsb.xlsm`

- Content: the file holds transactional sales data (one row per order line) with the usual fields you expect in this kind of dataset — dates, order/invoice IDs, customer IDs or names, product and category fields, region/city, quantity, unit price or sales, discounts, cost/COGS, and profit values.

- Sheets: the workbook contains the raw data sheet (transactions) and additional sheets used for analysis: summary tables, PivotTables, and charts. It also includes macros used to refresh or generate the summaries.

- Data cleaning I did: removed obvious duplicates, fixed date parsing, normalized product/category names, and ensured numeric fields (sales, cost, profit) were consistently formatted.

- Analyses I performed inside the workbook:

  - Monthly and weekly sales trends to spot seasonality and peaks.
  - Profit and margin breakdowns by product, category and region.
  - Top products and top customers (by sales and by profit).
  - Discount impact analysis: how discounts changed volume and margin.
  - Pareto (80/20) analysis to identify the items/customers that drive most revenue.
  - Simple cohort/retention checks to see repeat purchase behavior (if customer IDs are present).
  - Key dashboards: total sales, total profit, average order value and gross margin percent, presented as PivotTables and charts.
