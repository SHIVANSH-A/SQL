-- (player_id, event_date) is the primary key (combination of columns with unique values) of this table.
-- This table shows the activity of players of some games.
-- Each row is a record of a player who logged in and played a number of games (possibly 0) before logging out on someday using some device.
-- Write a solution to find the first login date for each player.
SELECT player_id,TO_CHAR(MIN(EVENT_DATE),'YYYY-MM-DD') AS "first_login" FROM ACTIVITY
GROUP BY PLAYER_ID;