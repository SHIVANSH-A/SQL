-- movie_id is the primary key (column with unique values) for this table.
-- title is the name of the movie.
-- user_id is the primary key (column with unique values) for this table.
-- The column 'name' has unique values.
-- (movie_id, user_id) is the primary key (column with unique values) for this table.
-- This table contains the rating of a movie by a user in their review.
-- created_at is the user's review date. 
-- Write a solution to:

-- Find the name of the user who has rated the greatest number of movies. In case of a tie, return the lexicographically smaller user name.
-- Find the movie name with the highest average rating in February 2020. In case of a tie, return the lexicographically smaller movie name.
SELECT name results
FROM (SELECT name
      FROM (
            SELECT user_id
             FROM MovieRating
             GROUP BY user_id
              HAVING COUNT(*)=(SELECT MAX(COUNT(*)) FROM MovieRating GROUP BY user_id)
           ) m,Users u
       WHERE m.user_id=u.user_id
       ORDER BY name)
WHERE ROWNUM=1
UNION ALL
SELECT title
FROM( SELECT title
      FROM (
             SELECT movie_id
             FROM MovieRating
             WHERE TO_CHAR(created_at,'yyyy-mm')='2020-02'
             GROUP BY movie_id
             HAVING AVG(rating)=(SELECT MAX(AVG(rating)) FROM MovieRating WHERE TO_CHAR(created_at,'yyyy-mm')='2020-02' GROUP BY movie_id)
           ) r,movies  m
      WHERE m.movie_id=r.movie_id
      ORDER BY title
    )
WHERE ROWNUM=1;