-- Total Records
SELECT COUNT(*) AS total_records
FROM bank_transactions;

-- Null Values Check
SELECT *
FROM bank_transactions
WHERE TransactionID IS NULL;

-- Transaction Type Check
SELECT DISTINCT TransactionType
FROM bank_transactions;

-- Channel Check
SELECT DISTINCT Channel
FROM bank_transactions;

-- Occupation Check
SELECT DISTINCT CustomerOccupation
FROM bank_transactions;
