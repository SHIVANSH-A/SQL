-- order_number is the primary key (column with unique values) for this table.
-- This table contains information about the order ID and the customer ID.
 

-- Write a solution to find the customer_number for the customer who has placed the largest number of orders.
-- SELECT CUSTOMER_NUMBER FROM ORDERS
-- GROUP BY CUSTOMER_NUMBER
-- HAVING COUNT(CUSTOMER_NUMBER) =MAX(COUNT(CUSTOMER_NUMBER));
-- MAX AND COUNT CANNOT BE NESTED DIRECTLY IN SQL
SELECT CUSTOMER_NUMBER FROM ORDERS
GROUP BY CUSTOMER_NUMBER
HAVING COUNT(CUSTOMER_NUMBER) =(SELECT  MAX(COUNT(CUSTOMER_NUMBER)) FROM ORDERS
                                GROUP BY CUSTOMER_NUMBER ) ;