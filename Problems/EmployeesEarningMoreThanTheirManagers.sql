-- id is the primary key (column with unique values) for this table.
-- Each row of this table indicates the ID of an employee, their name, salary, and the ID of their manager. 
-- Write a solution to find the employees who earn more than their managers
/* Write your PL/SQL query statement below */
SELECT E1.NAME AS "Employee" FROM EMPLOYEE  E1 JOIN EMPLOYEE E2
ON E1.managerId = E2.id
where E1.salary > E2.salary; 
