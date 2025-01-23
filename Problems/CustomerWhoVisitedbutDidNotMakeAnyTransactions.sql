-- visit_id is the column with unique values for this table.
-- This table contains information about the customers who visited the mall.
-- transaction_id is column with unique values for this table.
-- This table contains information about the transactions made during the visit_id.
-- Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

-- Return the result table sorted in any order.
SELECT CUSTOMER_ID AS "customer_id",COUNT(CUSTOMER_ID) AS "count_no_trans" FROM VISITS V
LEFT JOIN TRANSACTIONS T
ON V.VISIT_ID=T.VISIT_ID
WHERE TRANSACTION_ID IS NULL
GROUP BY CUSTOMER_ID;