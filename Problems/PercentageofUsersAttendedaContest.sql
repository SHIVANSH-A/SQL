-- user_id is the primary key (column with unique values) for this table.
-- Each row of this table contains the name and the id of a user.
-- contest_id, user_id) is the primary key (combination of columns with unique values) for this table.
-- Each row of this table contains the id of a user and the contest they registered into.
 

-- Write a solution to find the percentage of the users registered in each contest rounded to two decimals.

-- Return the result table ordered by percentage in descending order. In case of a tie, order it by contest_id in ascending order.
SELECT contest_id,ROUND(COUNT(USER_ID)*100.00/(SELECT COUNT(USER_ID) FROM USERS),2) AS percentage FROM REGISTER
GROUP BY contest_id
ORDER BY percentage desc,contest_id;