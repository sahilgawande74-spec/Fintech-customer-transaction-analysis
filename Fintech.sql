Create database fintech_analysis;
use fintech_analysis;

show Tables;

SELECT COUNT(*)
FROM fintech_customer_transactions_50000;

SELECT *
FROM fintech_customer_transactions_50000
LIMIT 5;

DESCRIBE fintech_customer_transactions_50000;

SELECT 
    is_fraud,
    COUNT(*) AS total_transactions
FROM fintech_customer_transactions_50000
GROUP BY is_fraud;

-- Overall Transaction Summary 
SELECT
    COUNT(*) AS Total_Transactions,
    SUM(transaction_amount) AS Total_Amount,
    AVG(transaction_amount) AS Average_Amount,
    MIN(transaction_amount) AS Minimum_Amount,
    MAX(transaction_amount) AS Maximum_Amount
FROM fintech_customer_transactions_50000;

-- Payment Type Analysis
SELECT
    payment_type,
    COUNT(*) AS Total_Transactions,
    SUM(transaction_amount) AS Total_Amount,
    AVG(transaction_amount) AS Average_Amount
FROM fintech_customer_transactions_50000
GROUP BY payment_type
ORDER BY Total_Transactions DESC;

-- Merchant-wise Transaction Analysis
SELECT
    merchant_name,
    COUNT(*) AS Total_Transactions,
    SUM(transaction_amount) AS Total_Amount,
    AVG(transaction_amount) AS Average_Amount
FROM fintech_customer_transactions_50000
GROUP BY merchant_name
ORDER BY Total_Amount DESC;

-- Location-wise Transaction Analysis
SELECT
    location,
    COUNT(*) AS Total_Transactions,
    SUM(transaction_amount) AS Total_Amount,
    AVG(transaction_amount) AS Average_Amount
FROM fintech_customer_transactions_50000
GROUP BY location
ORDER BY Total_Amount DESC;

-- Transaction Type Analysis
SELECT
    transaction_type,
    COUNT(*) AS Total_Transactions,
    SUM(transaction_amount) AS Total_Amount,
    AVG(transaction_amount) AS Average_Amount
FROM fintech_customer_transactions_50000
GROUP BY transaction_type
ORDER BY Total_Transactions DESC;

-- Transaction Status Analysis
SELECT
    transaction_status,
    COUNT(*) AS Total_Transactions,
    SUM(transaction_amount) AS Total_Amount
FROM fintech_customer_transactions_50000
GROUP BY transaction_status
ORDER BY Total_Transactions DESC;

--  Day-wise Transaction Analysis
SELECT
    DAYNAME(transaction_timestamp) AS Day_Name,
    COUNT(*) AS Total_Transactions,
    SUM(transaction_amount) AS Total_Amount
FROM fintech_customer_transactions_50000
GROUP BY DAYNAME(transaction_timestamp)
ORDER BY Total_Transactions DESC;

-- Hour-wise Transaction Analysis
SELECT
    HOUR(transaction_timestamp) AS Transaction_Hour,
    COUNT(*) AS Total_Transactions,
    SUM(transaction_amount) AS Total_Amount
FROM fintech_customer_transactions_50000
GROUP BY HOUR(transaction_timestamp)
ORDER BY Total_Transactions DESC;

-- Transaction Amount Range Analysis
SELECT
    CASE
        WHEN transaction_amount < 500 THEN '0-500'
        WHEN transaction_amount < 1000 THEN '500-1000'
        WHEN transaction_amount < 2000 THEN '1000-2000'
        WHEN transaction_amount < 3000 THEN '2000-3000'
        WHEN transaction_amount < 5000 THEN '3000-5000'
        ELSE '5000+'
    END AS Amount_Range,
    COUNT(*) AS Total_Transactions,
    AVG(is_fraud) * 100 AS Fraud_Percentage
FROM fintech_customer_transactions_50000
GROUP BY Amount_Range
ORDER BY MIN(transaction_amount);

-- Fraud Analysis by Payment Type
SELECT
    payment_type,
    COUNT(*) AS Total_Transactions,
    SUM(is_fraud) AS Fraud_Transactions,
    AVG(is_fraud) * 100 AS Fraud_Percentage
FROM fintech_customer_transactions_50000
GROUP BY payment_type
ORDER BY Fraud_Percentage DESC;

-- Merchant-wise Fraud Analysis
SELECT
    merchant_name,
    COUNT(*) AS Total_Transactions,
    SUM(is_fraud) AS Fraud_Transactions,
    AVG(is_fraud) * 100 AS Fraud_Percentage
FROM fintech_customer_transactions_50000
GROUP BY merchant_name
ORDER BY Fraud_Percentage DESC; 

-- Monthly Transaction Trend
SELECT
    DATE_FORMAT(transaction_timestamp, '%Y-%m') AS Month,
    COUNT(*) AS Total_Transactions,
    SUM(transaction_amount) AS Total_Amount,
    SUM(is_fraud) AS Fraud_Transactions
FROM fintech_customer_transactions_50000
GROUP BY DATE_FORMAT(transaction_timestamp, '%Y-%m')
ORDER BY Month;