-- High Amount Transactions

SELECT
TransactionID,
AccountID,
TransactionAmount,
TransactionType,
Location
FROM bank_transactions
WHERE TransactionAmount > 1000
ORDER BY TransactionAmount DESC;

-- High Login Attempts

SELECT
TransactionID,
AccountID,
LoginAttempts,
TransactionAmount
FROM bank_transactions
WHERE LoginAttempts >= 3
ORDER BY LoginAttempts DESC;

-- Suspicious Transactions

SELECT
TransactionID,
AccountID,
TransactionAmount,
LoginAttempts,
Channel,

CASE
    WHEN TransactionAmount > 1000
         AND LoginAttempts >= 3
    THEN 'Suspicious'

    WHEN TransactionAmount > 2000
    THEN 'High Risk'

    ELSE 'Normal'
END AS Risk_Level

FROM bank_transactions;

-- Risk Summary

SELECT

CASE
    WHEN TransactionAmount > 1000
         AND LoginAttempts >= 3
    THEN 'Suspicious'

    WHEN TransactionAmount > 2000
    THEN 'High Risk'

    ELSE 'Normal'
END AS Risk_Level,

COUNT(*) AS Total_Transactions

FROM bank_transactions

GROUP BY Risk_Level;


