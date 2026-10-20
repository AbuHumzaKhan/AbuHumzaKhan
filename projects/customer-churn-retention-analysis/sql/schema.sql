-- PostgreSQL schema: customer churn and retention analytics
CREATE TABLE IF NOT EXISTS customer_churn (
 customer_id VARCHAR(10) PRIMARY KEY,
 tenure_months INTEGER NOT NULL CHECK (tenure_months BETWEEN 0 AND 120),
 contract_type VARCHAR(30) NOT NULL,
 internet_service VARCHAR(30) NOT NULL,
 monthly_charges_inr NUMERIC(12,2) NOT NULL CHECK (monthly_charges_inr >= 0),
 total_charges_inr NUMERIC(14,2) NOT NULL CHECK (total_charges_inr >= 0),
 support_tickets_90d INTEGER NOT NULL CHECK (support_tickets_90d >= 0),
 late_payments_12m INTEGER NOT NULL CHECK (late_payments_12m >= 0),
 payment_method VARCHAR(40) NOT NULL,
 autopay_enabled VARCHAR(3) NOT NULL CHECK (autopay_enabled IN ('Yes','No')),
 senior_citizen VARCHAR(3) NOT NULL CHECK (senior_citizen IN ('Yes','No')),
 churned VARCHAR(3) NOT NULL CHECK (churned IN ('Yes','No'))
);
-- Load curated CSV: \\copy customer_churn FROM 'data/customer_churn_clean.csv' WITH (FORMAT csv, HEADER true);
