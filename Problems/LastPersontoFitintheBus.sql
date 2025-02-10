-- person_id column contains unique values.
-- This table has the information about all people waiting for a bus.
-- The person_id and turn columns will contain all numbers from 1 to n, where n is the number of rows in the table.
-- turn determines the order of which the people will board the bus, where turn=1 denotes the first person to board and turn=n denotes the last person to board.
-- weight is the weight of the person in kilograms.
 

-- There is a queue of people waiting to board a bus. However, the bus has a weight limit of 1000 kilograms, so there may be some people who cannot board.

-- Write a solution to find the person_name of the last person that can fit on the bus without exceeding the weight limit. The test cases are generated such that the first person does not exceed the weight limit.

-- Note that only one person can board the bus at any given turn.
-- The OVER() clause in SQL allows you to perform calculations across a set of rows without collapsing them into a single result, like you would with GROUP BY. It is used with window functions like SUM(), AVG(), ROW_NUMBER(), etc.
-- thus it is going like a loop
SELECT person_name FROM (SELECT person_name, 
                        SUM(weight) OVER(ORDER BY turn) Sum_Weight 
                        FROM Queue  
                        ORDER BY Sum_Weight DESC)
WHERE Sum_weight <= 1000 AND ROWNUM = 1;