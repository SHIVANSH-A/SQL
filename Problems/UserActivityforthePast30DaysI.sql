// This table may have duplicate rows.
// The activity_type column is an ENUM (category) of type ('open_session', 'end_session', 'scroll_down', 'send_message').
// The table shows the user activities for a social media website. 
// Note that each session belongs to exactly one user.
 

// Write a solution to find the daily active user count for a period of 30 days ending 2019-07-27 inclusively. A user was active on someday if they made at least one activity on that day.

// Return the result table in any order.
/* Write your PL/SQL query statement below */
SELECT TO_CHAR(activity_date,'YYYY-MM-DD') as day,count(distinct(user_id)) active_users from Activity
WHERE activity_type = 'open_session' or activity_type = 'scroll_down' or
activity_type = 'end_session' or activity_type = 'send_message'
GROUP BY activity_date
HAVING TO_DATE(activity_date,'YYYY-MM-DD') <= '2019-07-27' and 
TO_DATE(activity_date,'YYYY-MM-DD') >= '2019-06-28'; 