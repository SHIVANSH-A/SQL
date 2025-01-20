-- This table may contain duplicates (In other words, there is no primary key for this table in SQL).
-- Each row of this table contains an integer.
-- A single number is a number that appeared only once in the MyNumbers table.
-- Find the largest single number. If there is no single number, report null.
SELECT MAX(NUM) AS num FROM 
    (SELECT NUM FROM MYNUMBERS
     GROUP BY NUM
     HAVING COUNT(NUM) = 1);