-- user_id is the primary key (column with unique values) for this table.
-- This table contains information of the users signed up in a website. Some e-mails are invalid.
 

-- Write a solution to find the users who have valid emails.

-- A valid e-mail has a prefix name and a domain where:

-- The prefix name is a string that may contain letters (upper or lower case), digits, underscore '_', period '.', and/or dash '-'. The prefix name must start with a letter.
-- The domain is '@leetcode.com'.
-- Return the result table in any order.

-- SELECT *
-- FROM users
-- WHERE mail LIKE '%@leetcode.com'
--   -- Ensure the email ends exactly with @leetcode.com
--   AND SUBSTR(mail, -12) = '@leetcode.com'
--   -- Check that the first character is a letter.
--   AND (SUBSTR(mail, 1, 1) BETWEEN 'A' AND 'Z' 
--        OR SUBSTR(mail, 1, 1) BETWEEN 'a' AND 'z')
--   -- Extract the local part and remove allowed characters. If any disallowed
--   -- character exists, the result will be non-empty.
--   AND TRANSLATE(SUBSTR(mail, 1, INSTR(mail, '@') - 1),
--                 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_.-',
--                 '') IS NULL;

select * from users
where regexp_like (mail,'^[a-zA-Z][A-Za-z0-9_.-]*@leetcode[.]com$');
