CREATE TABLE trigger_test (
    message VARCHAR(100)
);

-- This is a trigger for each time a new employee is added to employee table it is inserting new row of data into trigger_test table
-- Very useful to automize events

--  !!This code won't work on PopSQL, it has to run on MySQL Command Line
DELIMITER $$
CREATE 
    TRIGGER my_trigger BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES('added new employee');
    END$$
DELIMITER ;

INSERT INTO employee
VALUES(109, 'Oscar', 'Martinez', '1968-02-19', 'M', 69000, 106, 3);

SELECT * FROM trigger_test;
SELECT * FROM employee;
DELETE FROM employee
WHERE emp_id = 110;

-- More useful trigger where insert name of new employee instead of simple msg
DELIMITER $$
CREATE 
    TRIGGER my_trigger1 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES(NEW.first_name);
    END$$
DELIMITER ;

INSERT INTO employee
VALUES(110, 'Kevin', 'Malone', '1978-02-19', 'M', 69000, 106, 3);

-- Conditional trigger
DELIMITER $$
CREATE
-- here we are using insert but obviously we can use delete or other methods and instead of BEFORE we could use AFTER for triggering this condition after the query
    TRIGGER my_trigger2 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        IF NEW.sex = 'M' THEN
            INSERT INTO trigger_test VALUES('added male employee');
        ELSEIF NEW.sex = 'F' THEN
            INSERT INTO trigger_test VALUES('added female');
        ELSE
            INSERT INTO trigger_test VALUES('added other employee');
        END IF;
    END$$
DELIMITER ;

INSERT INTO employee
VALUES(111, 'Pam', 'Beesly', '1988-02-19', 'F', 69000, 106, 3);

SELECT * FROM trigger_test;

-- Drop trigger(on console)
DROP TRIGGER my_trigger;