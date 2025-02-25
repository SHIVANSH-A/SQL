-- (requester_id, accepter_id) is the primary key (combination of columns with unique values) for this table.
-- This table contains the ID of the user who sent the request, the ID of the user who received the request, and the date when the request was accepted.
 

-- Write a solution to find the people who have the most friends and the most friends number.

-- The test cases are generated so that only one person has the most friends.
-- UNION - COMBINE DUPLICATES AND UNION ALL - DOES NOT  COMBINE DUPLICATES 

--WITH
WITH COMBINED_TABLE AS (
    SELECT id,COUNT(*) as num
    FROM(
        SELECT requester_id as id FROM RequestAccepted
        UNION ALL
        SELECT accepter_id as id FROM RequestAccepted
    ) GROUP BY id
)SELECT id,num FROM COMBINED_TABLE
WHERE num = (SELECT MAX(num) FROM COMBINED_TABLE);


-- SELECT id, num
-- FROM (
--     SELECT id, COUNT(*) AS num
--     FROM (
--         SELECT requester_id AS id FROM RequestAccepted
--         UNION ALL
--         SELECT accepter_id AS id FROM RequestAccepted
--     )
--     GROUP BY id
-- )
-- WHERE num = (
--     SELECT MAX(cnt)
--     FROM (
--         SELECT id, COUNT(*) AS cnt
--         FROM (
--             SELECT requester_id AS id FROM RequestAccepted
--             UNION ALL
--             SELECT accepter_id AS id FROM RequestAccepted
--         )
--         GROUP BY id
--     )
-- );
