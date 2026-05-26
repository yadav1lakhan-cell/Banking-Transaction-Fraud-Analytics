SELECT
AccountID,
SUM(TransactionAmount) AS Total_Spent,

RANK() OVER(
ORDER BY SUM(TransactionAmount) DESC
) AS Customer_Rank

FROM bank_transactions

GROUP BY AccountID;





SELECT *

FROM
(
SELECT
AccountID,
TransactionAmount,

ROW_NUMBER() OVER(
PARTITION BY AccountID
ORDER BY TransactionAmount DESC
) AS rn

FROM bank_transactions
) t

WHERE rn = 1;



WITH customer_spending AS
(
SELECT
AccountID,
SUM(TransactionAmount) AS Total_Spent

FROM bank_transactions

GROUP BY AccountID
)

SELECT *

FROM customer_spending

WHERE Total_Spent > 5000;









