-- Shows all data
SELECT *
FROM student;

-- Show all data, but only the name and major cols
SELECT student.name, student.major
FROM student;

-- ORDER THE DATA retrieved
SELECT student.name, student.major
FROM student
ORDER BY major, student_id DESC;

-- Limit the results for 2
SELECT student.name, student.major
FROM student
ORDER BY major, student_id DESC
LIMIT 2;

--- FILTERING
-- Show all with name jack
SELECT *
FROM student
WHERE name = 'Jack';

-- LOGICAL
SELECT *
FROM student
WHERE student_id > 2;

-- < > <= >= = <> (NOT EQUAL) AND OR

--SHOW all students that are not in Biology
SELECT *
FROM student
WHERE major <> 'Biology';


SELECT *
FROM student
WHERE major = 'Biology' AND student_id > 1;

