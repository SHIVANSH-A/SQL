-- user_id is the primary key (column with unique values) for this table.
-- This table contains the ID and the name of the user. The name consists of only lowercase and uppercase characters.
 

-- Write a solution to fix the names so that only the first character is uppercase and the rest are lowercase.

-- Return the result table ordered by user_id.
--|| = concatenate

select user_id, (upper(substr(name,1,1)) || lower(substr(name,2))) as name from users order by user_id;