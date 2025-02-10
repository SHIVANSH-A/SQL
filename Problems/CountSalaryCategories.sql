-- account_id is the primary key (column with unique values) for this table.
-- Each row contains information about the monthly income for one bank account.
 

-- Write a solution to calculate the number of bank accounts for each salary category. The salary categories are:

-- "Low Salary": All the salaries strictly less than $20000.
-- "Average Salary": All the salaries in the inclusive range [$20000, $50000].
-- "High Salary": All the salaries strictly greater than $50000.
-- The result table must contain all three categories. If there are no accounts in a category, return 0.

-- Return the result table in any order.
-- SELECT 
--     CASE 
--         WHEN INCOME < 20000 THEN 'Low Salary' 
--         WHEN INCOME BETWEEN 20000 AND 50000 THEN 'Average Salary' 
--         ELSE 'High Salary' 
--     END AS CATEGORY, 
--     COUNT(*) AS ACCOUNTS_COUNT 
-- FROM ACCOUNTS
-- GROUP BY 
--     CASE 
--         WHEN INCOME < 20000 THEN 'Low Salary' 
--         WHEN INCOME BETWEEN 20000 AND 50000 THEN 'Average Salary' 
--         ELSE 'High Salary' 
--     END;
-- IN above query
-- In GROUP BY, missing categories are simply not grouped, so they are missing in the output.    
SELECT 'Low Salary' AS category, COUNT(*) AS accounts_count 
FROM Accounts
WHERE income < 20000

UNION

SELECT 'Average Salary' AS category, COUNT(*) AS accounts_count 
FROM Accounts
WHERE income BETWEEN 20000 AND 50000

UNION

SELECT 'High Salary' AS category, COUNT(*) AS accounts_count 
FROM Accounts
WHERE income > 50000;