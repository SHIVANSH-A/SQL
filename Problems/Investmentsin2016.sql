-- pid is the primary key (column with unique values) for this table.
-- Each row of this table contains information about one policy where:
-- pid is the policyholder's policy ID.
-- tiv_2015 is the total investment value in 2015 and tiv_2016 is the total investment value in 2016.
-- lat is the latitude of the policy holder's city. It's guaranteed that lat is not NULL.
-- lon is the longitude of the policy holder's city. It's guaranteed that lon is not NULL.
-- Write a solution to report the sum of all total investment values in 2016 tiv_2016, for all policyholders who:
-- have the same tiv_2015 value as one or more other policyholders, and
-- are not located in the same city as any other policyholder (i.e., the (lat, lon) attribute pairs must be unique).
-- Round tiv_2016 to two decimal places.
SELECT SUM(TIV_2016) AS TIV_2016
FROM insurance
WHERE TIV_2015 IN (
  SELECT TIV_2015
  FROM insurance
  GROUP BY TIV_2015
  HAVING COUNT(*) > 1
)
AND (LAT || ',' || LON) IN (
  SELECT (LAT || ',' || LON)
  FROM insurance
  GROUP BY LAT, LON
  HAVING COUNT(*) = 1
);