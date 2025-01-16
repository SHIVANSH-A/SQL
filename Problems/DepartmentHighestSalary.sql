-- id is the primary key (column with unique values) for this table.
-- departmentId is a foreign key (reference columns) of the ID from the Department table.
-- Each row of this table indicates the ID, name, and salary of an employee. It also contains the ID of their department.
-- id is the primary key (column with unique values) for this table. It is guaranteed that department name is not NULL.
-- Each row of this table indicates the ID of a department and its name.   
-- Write a solution to find employees who have the highest salary in each of the departments.
-- Return the result table in any order.
/* Write your PL/SQL query statement below */
SELECT T2.NAME AS "Department",T1.NAME as "Employee",T1.SALARY FROM EMPLOYEE T1 
JOIN DEPARTMENT T2
ON T1.departmentId = T2.id
WHERE (T1.departmentId,T1.SALARY) IN (SELECT departmentId,MAX(SALARY) FROM EMPLOYEE
                GROUP BY departmentId);