# Hotel Booking Analysis – Power BI Project

## 📌 Project Overview

This project is a **Hotel Booking Analysis dashboard built using Power BI** to analyze booking behavior, revenue performance, customer loyalty, and booking channels.

The dashboard provides a comprehensive view of:

- Booking trends over time
- Revenue and room performance
- Cancellation behavior
- Customer loyalty distribution
- Booking lead time and channel analysis

The project helps hotel management understand **customer behavior, demand patterns, and revenue drivers** for better decision-making.

---

## 📊 Dataset Description

The dataset contains hotel booking records with information related to:

- Booking dates and stay details
- Room bookings and revenue
- Cancellation status
- Average room rate (ARR)
- Customer loyalty levels
- Booking channels (App, Website, Phone, GDS, Wholesaler, etc.)
- Lead time (how early customers book)

The raw data was cleaned and structured for analysis in Power BI.

---

## 🧹 Data Cleaning & Preparation

The following data preparation steps were performed using **Power Query**:

- Removed duplicate records
- Handled missing and invalid values
- Standardized date formats
- Categorized booking lead time (Before 1 week, 2 weeks, 4 weeks, >4 weeks)
- Classified weekdays vs weekends
- Cleaned and standardized loyalty level categories
- Ensured numeric fields were suitable for calculations

---

## 🔄 Data Modeling

- Created a proper date table for time-based analysis
- Built relationships between booking, date, and customer tables
- Optimized the data model for performance and scalability

---

## 📐 Key DAX Measures

The following important DAX measures were created:

- Total Booking Count
- Total Revenue
- Average Room Rate (ARR)
- Cancellation Percentage
- Total Rooms Booked
- Weekday vs Weekend Bookings
- Loyalty-wise Booking Distribution

All measures dynamically update based on date filters and slicers.

---

## 📈 Dashboard & Visualizations

The Power BI dashboard includes the following sections:

### 🔹 KPI Cards

- Total Booking Count
- Cancellation Percentage
- Total Revenue
- Total Rooms Booked
- Average Room Rate

### 🔹 Booking Trend

- Line/area chart showing booking trends over time
- Helps identify peak and low-demand periods

### 🔹 Weekday vs Weekend Analysis

- Comparison of bookings across weekdays and weekends
- Useful for staffing and pricing strategies

### 🔹 Customer Loyalty Analysis

- Distribution of bookings by loyalty level:
  - Non-member
  - Iconic
  - Elite
  - Premier
  - Essential
  - Preferred
  - Select

### 🔹 Booking Lead Time Analysis

- Analysis of how far in advance customers book
- Categories:
  - Before 1 week
  - Before 2 weeks
  - Before 4 weeks
  - More than 4 weeks

### 🔹 Booking Channel Analysis

- Comparison of bookings across channels:
  - App
  - Website
  - Phone
  - GDS
  - Connected Hotel
  - Wholesaler

---

## 📊 Insights Generated

- Majority of bookings come from **non-members**, highlighting loyalty program opportunities
- Significant portion of customers book **within one week**
- Weekday bookings slightly outperform weekend bookings
- App and website are major booking channels
- High cancellation percentage indicates potential revenue leakage

---

## 🛠 Tools & Technologies Used

- **Power BI**
- **Power Query**
- **DAX (Data Analysis Expressions)**
- **Microsoft Excel** (dataset source)

## 🎯 Use Case

This project can be used by:

- Hotel management
- Revenue managers
- Operations and marketing teams

It supports:

- Demand forecasting
- Revenue optimization
- Customer segmentation
- Channel performance evaluation
