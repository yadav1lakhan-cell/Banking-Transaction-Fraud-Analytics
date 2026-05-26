CREATE VIEW vw_transaction_summary AS
SELECT
    AccountID,
    COUNT(*) AS Total_Transactions,
    ROUND(SUM(TransactionAmount),2) AS Total_Amount,
    ROUND(AVG(TransactionAmount),2) AS Avg_Transaction,
    MAX(TransactionAmount) AS Max_Transaction
FROM bank_transactions
GROUP BY AccountID;




CREATE VIEW vw_fraud_analysis AS
SELECT
    TransactionID,
    AccountID,
    TransactionAmount,
    LoginAttempts,
    Location,
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
