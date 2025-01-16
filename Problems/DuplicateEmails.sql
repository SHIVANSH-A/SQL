-- id is the primary key (column with unique values) for this table.
-- Each row of this table contains an email. The emails will not contain uppercase letters.
-- Write a solution to report all the duplicate emails. Note that it's guaranteed that the email field is not NULL.
/* Write your PL/SQL query statement below */
SELECT EMAIL AS "Email" FROM PERSON
GROUP BY EMAIL
HAVING COUNT(ID) >=2;