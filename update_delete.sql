-- DELETE ALL DATA FROM THE TABLE
DELETE FROM student;

-- DELETE student WITH MATCHING ID
DELETE FROM student
WHERE student_id = 4;

-- DELETE STUDENT WITH NAME = AND MAJOR =
DELETE FROM student
WHERE major = 'Sociology' AND name = 'Kate';

-- CHANGE ALL MAJORS TO Undecided
UPDATE student
SET major = 'Undecided';

-- UPDATE student NAME Johnny FOR ID = 4
UPDATE student
SET name = 'Johnny'
WHERE student_id = 4;

UPDATE student
SET major = 'Biological Sciences'
WHERE major = 'Biology';

UPDATE student
SET major = 'Biosociology'
WHERE major = 'Biology' OR major = 'sociology'

UPDATE student
SET major = 'Undecided', name = 'Tom'
WHERE student_id = 4;
