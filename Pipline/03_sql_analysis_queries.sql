CREATE DATABASE subcription_db;
-- connect with jupyter notebook


-- Total Customers
SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM customer;

-- Total Revenue
SELECT SUM(monthly_revenue)
FROM customer;

-- Active vs Churned Customers
SELECT 
    subscription_status,
    COUNT(*) AS total
FROM customer
GROUP BY subscription_status;

-- Top Revenue Customers
SELECT 
    customer_id,
    SUM(monthly_revenue) AS total_revenue
FROM customer
GROUP BY customer_id
ORDER BY total_revenue DESC
LIMIT 10;

-- Monthly Churn Trend
SELECT 
    cancel_month,
    COUNT(*) AS churned_customers
FROM customer
WHERE churn_flag = 1
GROUP BY cancel_month
ORDER BY cancel_month;

-- Paid vs Unpaid Subscriptions
SELECT 
    was_subscription_paid,
    COUNT(*) AS total
FROM customer
GROUP BY was_subscription_paid;

-- Cohort Retention Analysis
SELECT 
    cohort_month,
    months_since_join,
    COUNT(DISTINCT customer_id) AS active_users
FROM customer
WHERE active_flag = 1
GROUP BY cohort_month, months_since_join
ORDER BY cohort_month, months_since_join;

-- CLV Distribution
SELECT 
    CASE 
        WHEN clv_per_customer < 100 THEN 'Low Value'
        WHEN clv_per_customer BETWEEN 100 AND 500 THEN 'Medium Value'
        ELSE 'High Value'
    END AS customer_segment,
    COUNT(*) AS total_customers
FROM customer
GROUP BY customer_segment;

-- Revenue Lost Due to Churn
SELECT SUM(monthly_revenue) AS revenue_lost
FROM customer
WHERE churn_flag = 1;

-- Average Revenue per User (ARPU)
SELECT SUM(monthly_revenue) / COUNT(DISTINCT customer_id) AS arpu
FROM customer;

-- Early Churn Detection (less then 3 months)
SELECT COUNT(*) AS early_churn_customers
FROM customer
WHERE churn_flag = 1
AND subscription_duration <= 3;