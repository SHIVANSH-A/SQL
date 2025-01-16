-- id is the primary key (column with unique values) for this table.
-- Each row of this table contains an email. The emails will not contain uppercase letters.
-- Write a solution to delete all duplicate emails, keeping only one unique email with the smallest id.
DELETE FROM PERSON
WHERE ID IN (
    SELECT P2.ID
    FROM PERSON P1
    INNER JOIN PERSON P2
    ON P1.EMAIL = P2.EMAIL
    WHERE P1.ID < P2.ID
);

-- DELETE 
-- FROM person
-- WHERE id not in (select min(id) from person group by email)