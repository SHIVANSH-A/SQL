-- (player_id, event_date) is the primary key (combination of columns with unique values) of this table.
-- This table shows the activity of players of some games.
-- Each row is a record of a player who logged in and played a number of games (possibly 0) before logging out on someday using some device.
 

-- Write a solution to report the fraction of players that logged in again on the day after the day they first logged in, rounded to 2 decimal places. In other words, you need to count the number of players that logged in for at least two consecutive days starting from their first login date, then divide that number by the total number of players.
SELECT ROUND(
    (SELECT COUNT(DISTINCT a.player_id) 
     FROM Activity a
     INNER JOIN (
         SELECT player_id, MIN(event_date) AS first_logged
         FROM Activity
         GROUP BY player_id
     ) b ON a.event_date - b.first_logged = 1
         AND a.player_id = b.player_id
    ) /
    (SELECT COUNT(DISTINCT player_id) FROM Activity), 
    2
) AS fraction
FROM DUAL;