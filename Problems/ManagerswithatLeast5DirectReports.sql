-- d is the primary key (column with unique values) for this table.
-- Each row of this table indicates the name of an employee, their department, and the id of their manager.
-- If managerId is null, then the employee does not have a manager.
-- No employee will be the manager of themself.
-- Write a solution to find managers with at least five direct reports.
/* Write your PL/SQL query statement below */
SELECT E.NAME FROM EMPLOYEE E JOIN
        (SELECT MANAGERID FROM EMPLOYEE
        GROUP BY MANAGERID
        HAVING COUNT(MANAGERID) >=5 
        ) M
        ON E.ID = M.MANAGERID;