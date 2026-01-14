# Call Centre Report Analysis

## Project Overview

This project is a call centre performance analysis built from an Excel dataset. The analysis consolidates call-level records to produce key performance indicators (KPIs), visualizations, and recommendations to improve service levels and agent efficiency.

## Data

- **Typical columns included:** `CallID`, `DateTime`, `Queue`, `Agent`, `CallDuration` (sec), `WaitTime` (sec), `HandleTime` (sec), `CallType`, `Abandoned` (Y/N), `Resolution` (Resolved/Unresolved), `SatisfactionScore` (1-5)

## Objectives

- Compute core KPIs: total calls, calls per interval, average handle time (AHT), average wait time, service level (e.g., % answered within 20s), abandonment rate, first call resolution (FCR), and agent occupancy.
- Produce pivot tables and charts for trend, queue, and agent-level performance.
- Provide clear recommendations based on observed bottlenecks.

## Methodology / Steps Taken

1. Data cleaning
   - Removed duplicate `CallID` entries and records with missing timestamps.
   - Standardized time fields and converted durations to seconds/minutes where required.
2. Feature engineering
   - Created derived fields: `HourOfDay`, `Date`, `Inbound/Outbound` if applicable, `Answered` flag, and `ResponseWithinSL` (true if wait time <= target threshold).
3. KPI calculations
   - AHT = (TalkTime + HoldTime + AfterCallWork) / CallsHandled
   - Service Level = Calls answered within threshold / Total Calls
   - Abandonment Rate = Abandoned Calls / Offered Calls
   - FCR = Resolved on First Call / Total Resolved Attempts
4. Aggregation and visualization
   - Created pivot tables by `Date`, `HourOfDay`, `Queue`, and `Agent`.
   - Built charts: time series (daily/weekly), stacked bar for call distribution by queue, heatmap for hourly volumes, and agent ranking bars for AHT and resolution rates.

## Worksheets Provided

- **RawData** — original imported data (do not edit raw data directly).
- **CleanedData** — cleaned and normalized records with derived fields.
- **KPIs** — summary metrics and trend tables.
- **Pivot_Analysis** — pivot tables used for charts and further inspection.
- **Charts** — dashboard-style charts summarizing key findings.

## Key Findings (Examples / Replace with your numbers)

- **Peak hours:** 10:00–12:00 and 15:00–16:00 show highest call volumes.
- **Service level:** X% answered within 20s (target: 80%).
- **Average Handle Time (AHT):** Y minutes; top 10% of agents exceed target AHT by Z%.
- **Abandonment rate:** A% — highest in Queue B between 14:00–15:00..

## Recommendations

- Staff scheduling: align more agents to peak hours and stagger breaks to maintain coverage.
- Training: target coaching for agents with high AHT and low FCR.
- Call routing: prioritize high-value queues during expected peaks and refine IVR to reduce average handle time.
- Further analysis: perform root-cause analysis on long-hold calls and investigate high abandonment queues.

## Limitations & Assumptions

- Analysis assumes timestamps are in the same timezone and properly recorded.
- If call durations include wrap-up time, AHT will reflect that; clarify column definitions before comparing against SLAs.
- Missing or incorrectly labeled data will affect KPI accuracy.
