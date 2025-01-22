-- (sale_id, year) is the primary key (combination of columns with unique values) of this table.
-- product_id is a foreign key (reference column) to Product table.
-- Each row of this table shows a sale on the product product_id in a certain year.
-- Note that the price is per unit.
-- product_id is the primary key (column with unique values) of this table.
-- Each row of this table indicates the product name of each product.
 

-- Write a solution to report the product_name, year, and price for each sale_id in the Sales table.

-- Return the resulting table in any order.
SELECT P.product_name,S.year,S.price from
SALES S LEFT JOIN PRODUCT P
ON S.PRODUCT_ID=P.PRODUCT_ID;