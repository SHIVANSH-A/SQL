-- Write a solution to find the second highest distinct salary from the Employee table. If there is no second highest salary, return null 
-- # Write your MySQL query statement below
SELECT
    (
        SELECT DISTINCT salary
        FROM Employee
        ORDER BY salary DESC
        LIMIT 1, 1
    ) AS SecondHighestSalary;