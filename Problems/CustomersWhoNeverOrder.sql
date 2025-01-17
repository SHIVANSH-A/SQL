-- id is the primary key (column with unique values) for this table.
-- Each row of this table indicates the ID and name of a customer.
-- id is the primary key (column with unique values) for this table.
-- customerId is a foreign key (reference columns) of the ID from the Customers table.
-- Each row of this table indicates the ID of an order and the ID of the customer who ordered it.
-- Write a solution to find all customers who never order anything.
SELECT NAME AS "Customers" from customers
where customers.id not in (SELECT CUSTOMERID FROM ORDERS);