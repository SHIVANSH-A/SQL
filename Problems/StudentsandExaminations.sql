-- student_id is the primary key (column with unique values) for this table.
-- Each row of this table contains the ID and the name of one student in the school.
-- subject_name is the primary key (column with unique values) for this table.
-- Each row of this table contains the name of one subject in the school.
-- There is no primary key (column with unique values) for this table. It may contain duplicates.
-- Each student from the Students table takes every course from the Subjects table.
-- Each row of this table indicates that a student with ID student_id attended the exam of subject_name.
-- Write a solution to find the number of times each student attended each exam.
-- Return the result table ordered by student_id and subject_name.
SELECT S1.student_id,S1.student_name,S2.subject_name,count(S3.student_id) as attended_exams 
FROM STUDENTS S1 CROSS JOIN SUBJECTS S2 LEFT JOIN EXAMINATIONS S3
ON S1.student_id=S3.student_id AND
S2.subject_name=S3.subject_name
GROUP BY S1.student_id,S1.student_name,S2.subject_name
ORDER BY S1.student_id,S2.subject_name;