-- (user_id, follower_id) is the primary key (combination of columns with unique values) for this table.
-- This table contains the IDs of a user and a follower in a social media app where the follower follows the user.
-- Write a solution that will, for each user, return the number of followers.
-- Return the result table ordered by user_id in ascending order.
SELECT USER_ID,COUNT(FOLLOWER_ID) FOLLOWERS_COUNT
FROM FOLLOWERS
GROUP BY USER_ID
ORDER BY USER_ID;