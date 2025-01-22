-- id is the primary key of this table.
-- The table has information about incoming transactions.
-- The state column is an enum of type ["approved", "declined"].
 

-- Write an SQL query to find for each month and country, the number of transactions and their total amount, the number of approved transactions and their total amount.

-- Return the result table in any order.
SELECT TO_CHAR(trans_date,'YYYY-MM') AS month,COUNTRY,COUNT(id) AS trans_count,
SUM(CASE WHEN STATE ='approved' THEN 1 ELSE 0 END) AS "approved_count",
SUM(AMOUNT) AS "trans_total_amount",
SUM(CASE WHEN STATE ='approved' THEN AMOUNT ELSE 0 END) AS "approved_total_amount" FROM Transactions
GROUP BY TO_CHAR(trans_date,'YYYY-MM'),COUNTRY;