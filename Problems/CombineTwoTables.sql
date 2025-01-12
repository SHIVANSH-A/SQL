-- Write a solution to report the first name, last name, city, and state of each person in the Person table. If the address of a personId is not present in the Address table, report null instead.

-- Return the result table in any order.
SELECT PERSON.FIRSTNAME,PERSON.LASTNAME,ADDRESS.CITY,ADDRESS.STATE 
FROM PERSON LEFT OUTER JOIN ADDRESS
ON PERSON.personId =ADDRESS.personId;  