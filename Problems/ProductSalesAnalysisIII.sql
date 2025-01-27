-- (sale_id, year) is the primary key (combination of columns with unique values) of this table.
-- product_id is a foreign key (reference column) to Product table.
-- Each row of this table shows a sale on the product product_id in a certain year.
-- Note that the price is per unit.
-- product_id is the primary key (column with unique values) of this table.
-- Each row of this table indicates the product name of each product.
-- Write a solution to select the product id, year, quantity, and price for the first year of every product sold.
-- Return the resulting table in any order.
SELECT PRODUCT_ID,year as first_year,QUANTITY,PRICE FROM SALES
WHERE (PRODUCT_ID,year) IN 
    (SELECT PRODUCT_ID, MIN(year) FROM SALES 
    GROUP BY PRODUCT_ID);