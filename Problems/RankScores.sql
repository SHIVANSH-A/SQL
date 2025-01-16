-- <!-- Write a solution to find the rank of the scores. The ranking should be calculated according to the following rules:

-- The scores should be ranked from the highest to the lowest.
-- If there is a tie between two scores, both should have the same ranking.
-- After a tie, the next ranking number should be the next consecutive integer value. In other words, there should be no holes between ranks.
-- Return the result table ordered by score in descending order. -->
SELECT SCORE,DENSE_RANK() OVER(ORDER BY SCORE DESC) AS "rank"
FROM SCORES;

-- SELECT S2.Score, (SELECT COUNT(DISTINCT S1.Score) FROM Scores S1 WHERE S1.Score >= S2.Score ) AS Rank
-- FROM Scores S2
-- ORDER BY Rank