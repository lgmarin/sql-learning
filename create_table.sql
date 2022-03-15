INT                           -- Whole Numbers
DECIMAL(M,N)                  -- Decimal Numbers - Exact Value
VARCHAR(l)                    -- String of text of length l
BLOB                          -- Binary Large Object, Stores large data
DATE                          -- 'YYYY-MM-DD'
TIMESTAMP                     -- 'YYYY-MM-DD HH:MM:SS' - used for recording events

CREATE TABLE student (
    student_id INT,
    name VARCHAR(40),
    major VARCHAR(40),
    PRIMARY KEY (student_id)
);


DESCRIBE student;  -- mysql -> Show the table, with all its information
DROP TABLE student; -- Delete a table
ALTER TABLE student ADD gpa DECIMAL; -- ADD another column to the table
ALTER TABLE student DROP COLUMN gpa; -- REMOVE a column
