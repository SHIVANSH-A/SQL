-- In SQL, (x, y, z) is the primary key column for this table.
-- Each row of this table contains the lengths of three line segments.
SELECT X,Y,Z,
    CASE
        WHEN (X+Y>Z AND Y+Z>X AND Z+X>Y) THEN 'Yes'
        ELSE 'No'
    END AS TRIANGLE
FROM TRIANGLE;