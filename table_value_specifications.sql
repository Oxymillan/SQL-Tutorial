-- Delete the whote table
DROP TABLE student;

CREATE TABLE student (
    student_id INT,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) UNIQUE,
    PRIMARY KEY(student_id)
);
-- PRIMARY KEY is actually  a value that is both NOT NULL and UNIQUE

CREATE TABLE student (
    student_id INT,
    name VARCHAR(20) ,
    major VARCHAR(20) DEFAULT 'undecided',
    PRIMARY KEY(student_id)
);
-- If a person doesnt insert the value major the default value will be 'undecided'

CREATE TABLE student (
    student_id INT AUTO_INCREMENT,
    name VARCHAR(20),
    major VARCHAR(20),
    PRIMARY KEY(student_id)
);
-- Automatically increment student_id

DESCRIBE student;

SELECT * FROM student;

INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student(name, major) VALUES('Kate', 'Sociology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student VALUES(3, NULL, 'Chemistry');
INSERT INTO student VALUES(4, 'Jack', 'Biology');
INSERT INTO student VALUES(5, 'Mike', 'Computer Science');