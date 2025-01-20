-- id is the primary key (column with unique values) for this table.
-- Each row contains information about the name of a movie, its genre, and its rating.
-- rating is a 2 decimal places float in the range [0, 10]
 

-- Write a solution to report the movies with an odd-numbered ID and a description that is not "boring".

-- Return the result table ordered by rating in descending order.
SELECT * FROM CINEMA
WHERE mod(id,2) <> 0 AND DESCRIPTION NOT LIKE 'boring'
ORDER BY RATING DESC;
-- select * from cinema
-- where mod(id,2) !=0 and instr(description,'boring')=0
-- order by rating desc
-- instr -returns pos of first occurance of string and 0 if not found