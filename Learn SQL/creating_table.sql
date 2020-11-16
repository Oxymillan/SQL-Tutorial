-- create table with 3 columns and student_id is the primary key
CREATE TABLE student (
    student_id INT,
    name VARCHAR(20),
    major VARCHAR(20),
    PRIMARY KEY(student_id)
);

--describe table
DESCRIBE student;

--delete table
DROP TABLE student;

ALTER TABLE student ADD gpa DECIMAL(3,2);

--delete column gpa
ALTER TABLE student DROP gpa;

