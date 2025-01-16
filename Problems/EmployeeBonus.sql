-- empId is the column with unique values for this table.
-- Each row of this table indicates the name and the ID of an employee in addition to their salary and the id of their manager.
-- empId is the column of unique values for this table.
-- empId is a foreign key (reference column) to empId from the Employee table.
-- Each row of this table contains the id of an employee and their respective bonus.
-- Write a solution to report the name and bonus amount of each employee with a bonus less than 1000.
-- Return the result table in any order.
/* Write your PL/SQL query statement below */
SELECT E.NAME,B.BONUS FROM EMPLOYEE E LEFT JOIN BONUS B
ON E.empId = B.empId
WHERE B.BONUS < 1000 OR B.BONUS IS NULL;
