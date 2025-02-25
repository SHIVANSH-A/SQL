-- There is no primary key (column with unique values) for this table. It may contain duplicates.
-- Each row of this table contains the product name and the date it was sold in a market.
 

-- Write a solution to find for each date the number of different products sold and their names.

-- The sold products names for each date should be sorted lexicographically.

-- Return the result table ordered by sell_date .

-- LISTAGG(COL,',') THIS WILL TAKE THE EXCLUDED COL WHICH IS NOT IN GROUP BY AND COMBINE MULTIPLE ROWS TO ONE WITHIN GROUP BY
SELECT TO_CHAR(SELL_DATE,'YYYY-MM-DD') AS SELL_DATE,COUNT(DISTINCT PRODUCT) AS NUM_SOLD,
LISTAGG(PRODUCT,',') WITHIN GROUP (ORDER BY PRODUCT) "PRODUCTS"
FROM (SELECT DISTINCT SELL_DATE,PRODUCT FROM ACTIVITIES)
GROUP BY SELL_DATE
ORDER BY SELL_DATE;