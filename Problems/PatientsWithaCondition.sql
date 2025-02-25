-- patient_id is the primary key (column with unique values) for this table.
-- 'conditions' contains 0 or more code separated by spaces. 
-- This table contains information of the patients in the hospital.
 

-- Write a solution to find the patient_id, patient_name, and conditions of the patients who have Type I Diabetes. Type I Diabetes always starts with DIAB1 prefix.

-- Return the result table in any order.
-- select * from patients
-- where conditionS like '% DIAB1%' OR conditionS like 'DIAB1%' ;
SELECT * FROM PATIENTS 
WHERE INSTR(CONDITIONS,'DIAB1')>0 AND 
(SUBSTR(CONDITIONS,INSTR(CONDITIONS,'DIAB1')-1,1)=' ' OR INSTR(CONDITIONS,'DIAB1')-1=0);