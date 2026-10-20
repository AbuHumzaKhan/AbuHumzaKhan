# Power BI Model & Report Guide

## Model
Load one row per customer into CustomerChurn. The data is customer-grain; do not invent churn dates because none are provided.

## Pages
1. Executive overview: Total Customers, Churn Rate, Monthly Revenue at Risk, Average Tenure.
2. Contract & payment: churn by contract type, payment method and autopay.
3. Experience & tenure: churn by support-ticket band, tenure cohort and late payments.
4. Retention review: customer-level triage table; protect identifiers when using real data.

Use slicers for contract, internet service, payment method and autopay. Format rates as percentages and charges as INR. Show counts beside rates. Use tooltips for tenure, support tickets, late payments and monthly charges.

**Native PBIX status:** No native .pbix is included; M code, DAX, CSV and report instructions are provided to recreate the report.
