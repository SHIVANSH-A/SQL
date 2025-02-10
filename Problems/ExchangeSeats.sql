-- id is the primary key (unique value) column for this table.
-- Each row of this table indicates the name and the ID of a student.
-- The ID sequence always starts from 1 and increments continuously.
 

-- Write a solution to swap the seat id of every two consecutive students. If the number of students is odd, the id of the last student is not swapped.

-- Return the result table ordered by id in ascending order.
SELECT A.ID,B.STUDENT FROM SEAT A JOIN SEAT B
ON (mod(A.ID,2)=1 AND A.ID+1=B.ID) OR
    (mod(A.ID,2)=0 AND A.ID-1=B.ID) OR
    (mod(A.ID,2)=1 AND A.ID=B.ID AND A.ID = (SELECT COUNT(*) FROM SEAT))
ORDER BY A.ID;