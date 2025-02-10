-- (product_id, change_date) is the primary key (combination of columns with unique values) of this table.
-- Each row of this table indicates that the price of some product was changed to a new price at some date.
 

-- Write a solution to find the prices of all products on 2019-08-16. Assume the price of all products before any change is 10.

-- Return the result table in any order.
SELECT PRODUCT_ID,NEW_PRICE AS PRICE 
FROM PRODUCTS
WHERE (PRODUCT_ID,CHANGE_DATE) IN ( SELECT PRODUCT_ID,MAX(CHANGE_DATE) AS
                            CHANGE_DATE FROM PRODUCTS
                            WHERE CHANGE_DATE <='2019-08-16'
                            GROUP BY PRODUCT_ID)
UNION
SELECT PRODUCT_ID,10 AS PRICE 
FROM PRODUCTS
WHERE PRODUCT_ID NOT IN ( SELECT PRODUCT_ID FROM PRODUCTS
                            WHERE CHANGE_DATE <='2019-08-16');