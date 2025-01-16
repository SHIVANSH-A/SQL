-- id is the column with unique values for this table.
-- There are no different rows with the same recordDate.
-- This table contains information about the temperature on a certain day.
-- Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).
Select w1.id from weather w1
join weather w2
on w1.recordDate-1 = w2.recordDate + 1
where w1.temperature > w2.temperature;