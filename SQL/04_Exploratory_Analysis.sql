SELECT COUNT(*) AS Total_Transactions
FROM bank_transactions;

SELECT ROUND(SUM(TransactionAmount),2) AS Total_Amount
FROM bank_transactions;

SELECT ROUND(AVG(TransactionAmount),2) AS Avg_Transaction_Amount
FROM bank_transactions;

SELECT
TransactionType,
COUNT(*) AS Total_Transactions,
ROUND(SUM(TransactionAmount),2) AS Total_Amount
FROM bank_transactions
GROUP BY TransactionType;

SELECT
Location,
COUNT(*) AS Transactions
FROM bank_transactions
GROUP BY Location
ORDER BY Transactions DESC
LIMIT 10;


