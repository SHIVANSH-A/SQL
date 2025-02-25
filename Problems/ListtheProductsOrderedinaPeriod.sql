-- product_id is the primary key (column with unique values) for this table.
-- This table contains data about the company's products.
-- This table may have duplicate rows.
-- product_id is a foreign key (reference column) to the Products table.
-- unit is the number of products ordered in order_date.
 

-- Write a solution to get the names of products that have at least 100 units ordered in February 2020 and their amount.

-- Return the result table in any order.
-- The reason the date condition in your HAVING clause is not working is that the HAVING clause is used to filter groups after aggregation. In your query, O.ORDER_DATE is not part of an aggregate function nor is it in the GROUP BY clause. As a result, Oracle doesn't know how to handle that condition for each group.
SELECT P.PRODUCT_NAME,
       SUM(O.UNIT) AS UNIT
FROM PRODUCTS P
JOIN ORDERS O ON P.PRODUCT_ID = O.PRODUCT_ID
WHERE O.ORDER_DATE BETWEEN TO_DATE('2020-02-01','YYYY-MM-DD')
                       AND TO_DATE('2020-02-29','YYYY-MM-DD')
GROUP BY P.PRODUCT_NAME
HAVING SUM(O.UNIT) >= 100;