CREATE TABLE student (
    student_id INT,
    name VARCHAR(20),
    major VARCHAR(20),
    PRIMARY KEY(student_id)
);
-- See all the data from this table
SELECT * FROM student;

-- Insert all 3 types of data that this schema is defined for
INSERT INTO student VALUES(4, 'Claire', 'Biology');

-- Insert only 2 values of this schema
INSERT INTO student(student_id, name) VALUES(4, 'Claire');
