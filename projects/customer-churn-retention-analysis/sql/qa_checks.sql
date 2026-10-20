-- Exception queries should return zero rows.
SELECT customer_id,COUNT(*) FROM customer_churn GROUP BY customer_id HAVING COUNT(*)>1;
SELECT * FROM customer_churn WHERE tenure_months<0 OR monthly_charges_inr<0 OR total_charges_inr<0 OR support_tickets_90d<0 OR late_payments_12m<0;
SELECT * FROM customer_churn WHERE contract_type NOT IN ('Month-to-month','One year','Two year') OR churned NOT IN ('Yes','No') OR autopay_enabled NOT IN ('Yes','No');
SELECT COUNT(*) AS missing_required FROM customer_churn WHERE customer_id IS NULL OR tenure_months IS NULL OR contract_type IS NULL OR monthly_charges_inr IS NULL OR churned IS NULL;
-- Expected summary: 800 rows, 800 distinct customer IDs, 269 churned customers.
SELECT COUNT(*) AS total_customers,COUNT(DISTINCT customer_id) AS unique_customers,COUNT(*) FILTER(WHERE churned='Yes') AS churned_customers FROM customer_churn;
