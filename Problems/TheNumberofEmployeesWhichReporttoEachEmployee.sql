-- employee_id is the column with unique values for this table.
-- This table contains information about the employees and the id of the manager they report to. Some employees do not report to anyone (reports_to is null). 
 

-- For this problem, we will consider a manager an employee who has at least 1 other employee reporting to them.

-- Write a solution to report the ids and the names of all managers, the number of employees who report directly to them, and the average age of the reports rounded to the nearest integer.

-- Return the result table ordered by employee_id.
-- NOTE -IN GROUP BY ALL NON-AGGREGATED COLUMNS should be there if they are in SELECT
SELECT E2.EMPLOYEE_ID AS "employee_id",E2.NAME AS "name",
COUNT(E1.EMPLOYEE_ID) AS "reports_count",ROUND(AVG(E1.AGE)) AS "average_age" FROM EMPLOYEES E1
JOIN EMPLOYEES E2 ON 
E1.REPORTS_TO = E2.EMPLOYEE_ID
GROUP BY E2.EMPLOYEE_ID,E2.NAME
ORDER BY E2.EMPLOYEE_ID;