-- This table may contain duplicates rows. 
-- customer_id is not NULL.
-- product_key is a foreign key (reference column) to Product table.
-- product_key is the primary key (column with unique values) for this table.
 

-- Write a solution to report the customer ids from the Customer table that bought all the products in the Product table.

-- Return the result table in any order.
SELECT CUSTOMER_ID FROM CUSTOMER
GROUP BY CUSTOMER_ID
HAVING COUNT(DISTINCT(PRODUCT_KEY)) = (SELECT COUNT(*) FROM PRODUCT);