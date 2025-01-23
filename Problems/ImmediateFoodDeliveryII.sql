-- delivery_id is the column of unique values of this table.
-- The table holds information about food delivery to customers that make orders at some date and specify a preferred delivery date (on the same order date or after it).
 

-- If the customer's preferred delivery date is the same as the order date, then the order is called immediate; otherwise, it is called scheduled.

-- The first order of a customer is the order with the earliest order date that the customer made. It is guaranteed that a customer has precisely one first order.

-- Write a solution to find the percentage of immediate orders in the first orders of all customers, rounded to 2 decimal places.
select 
round(100*sum(case when b.min_order_date = b.min_delivery_date then 1 else 0 end)/count(*), 2)
as immediate_percentage
from (
  select min(order_date) as min_order_date, min(customer_pref_delivery_date) as min_delivery_date
  from delivery
  group by customer_id
) b;