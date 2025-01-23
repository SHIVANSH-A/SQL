-- (product_id, start_date, end_date) is the primary key (combination of columns with unique values) for this table.
-- Each row of this table indicates the price of the product_id in the period from start_date to end_date.
-- For each product_id there will be no two overlapping periods. That means there will be no two intersecting periods for the same product_id.
-- This table may contain duplicate rows.
-- Each row of this table indicates the date, units, and product_id of each product sold. 
 

-- Write a solution to find the average selling price for each product. average_price should be rounded to 2 decimal places. If a product does not have any sold units, its average selling price is assumed to be 0.

-- Return the result table in any order.
-- NVL Function:

-- Used to replace NULL with 0 in the calculation of the average_price.
-- If there are no matching rows in UnitsSold, SUM(P.PRICE * U.UNITS) or SUM(U.UNITS) could be NULL. Using NVL, we ensure that the result is 0 in such cases.
-- NULLIF Function:

-- Prevents division by 0 by replacing SUM(U.UNITS) with NULL if it is 0. This avoids runtime errors.
SELECT P.product_id,ROUND(NVL(SUM(P.PRICE*U.UNITS)/NULLIF(SUM(U.UNITS),0),0),2) AS average_price
FROM PRICES P LEFT JOIN UnitsSold U
ON P.START_DATE <= U.PURCHASE_DATE AND U.PURCHASE_DATE <= P.END_DATE
AND P.PRODUCT_ID = U.PRODUCT_ID
GROUP BY P.PRODUCT_ID;