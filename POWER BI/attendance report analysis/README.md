# Attendance Report Analysis – Power BI Project

## 📌 Project Overview

This project is a **Power BI Attendance Report Analysis** designed to track, analyze, and visualize employee attendance data at both **individual and organizational levels**.

The dashboard provides a **calendar-based view of attendance**, employee-wise summaries, and key KPIs such as attendance percentage, total working days, and presence statistics.  
It helps HR teams and management **monitor attendance patterns, identify absenteeism trends, and evaluate workforce availability**.

---

## 📊 Dataset Description

The dataset used in this project contains employee attendance records for a month and includes:

- Employee details (Name, ID)
- Date-wise attendance records
- Attendance status (Present, Sick, Vacation, On-call, Absent)
- Working days and total days
- Monthly attendance metrics

The raw data was structured and transformed to support **daily, weekly, and monthly analysis**.

---

## 🧹 Data Cleaning & Preparation

The following steps were performed during data preparation:

- Removed duplicate and inconsistent records
- Standardized date formats
- Classified attendance types (Present, Sick, Vacation, On-call)
- Ensured correct data types for calculations
- Created a clean, analysis-ready attendance table
- Validated total days and working day counts

Power BI’s **Power Query** was used to ensure the process is repeatable and refresh-friendly.

---

## 🔄 Data Modeling

- Built relationships between employee and attendance tables
- Created a calendar/date table to support time-based analysis
- Optimized the data model for performance and clarity

---

## 📐 DAX Measures Created

Key DAX measures include:

- Total Attendance
- Total Working Days
- Total Days in Month
- Attendance Percentage
- Present Days
- Sick Days
- Vacation Days
- On-call Days

These measures dynamically update based on **employee selection and month filters**.

---

## 📈 Dashboard & Visualizations

The Power BI dashboard includes:

### 🔹 Employee Panel

- Employee-wise attendance summary
- Total days, present days, sick days, vacation days, and on-call days
- Employee selection for focused analysis

### 🔹 Calendar View

- Day-wise attendance visualization
- Weekly grouping (WK1–WK5)
- Color-coded indicators for attendance status
- Daily attendance percentage visibility

### 🔹 KPIs Section

- Total Days
- Total Attendance
- Total Working Days
- Attendance Percentage
- Total Workdays in Selected Month

### 🔹 Month Navigation

- Month-wise filtering (January to April)
- Dynamic update of visuals based on selected month

---

## 📊 Insights Generated

- Overall attendance rate for the selected month
- Identification of low-attendance days
- Employee-wise attendance comparison
- Patterns in sick leaves and vacations
- Working vs non-working day analysis

---

## 🛠 Tools & Technologies Used

- **Power BI**
- **Power Query**
- **DAX (Data Analysis Expressions)**
- **Microsoft Excel** (dataset source)

## 🎯 Use Case

This project is useful for:

- HR attendance tracking
- Workforce planning
- Absenteeism analysis
- Monthly attendance reporting
- Management decision support
