-- In SQL, id is the primary key for this table.
-- id is an autoincrement column starting from 1.
 

-- Find all numbers that appear at least three times consecutively.

-- Return the result table in any order.
SELECT DISTINCT(L1.NUM) consecutiveNums FROM LOGS L1 JOIN LOGS L2
ON L1.ID = L2.ID-1 JOIN
LOGS L3 ON L2.ID = L3.ID-1
WHERE L1.NUM = L2.NUM  AND L2.NUM = L3.NUM;