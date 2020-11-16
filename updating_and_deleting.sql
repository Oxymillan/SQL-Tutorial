SELECT * FROM student;

UPDATE student
SET major = 'Bio'
WHERE major = 'Biology';

-- Update all values from 'major' column from 'Biology' to 'Bio'

-- Other comparison ops:
-- =  :equals
-- <> :not equals
-- >  :greater than
-- <  : less than
-- >= :greater than or equal
-- <= :less than or equal

UPDATE student
SET major = 'Comp Sci'
WHERE student_id = 'Computer Science';

UPDATE student
SET major = 'Comp Sci'
WHERE student_id = 4;

-- By using OR we can combine the values of table
UPDATE student
SET major = 'Biochemistry'
WHERE major = 'Bio' OR major = 'Chemistry';

-- Here we changed the values of first row
UPDATE student
SET name = 'Tom', major = 'undecided'
WHERE student_id = 1;

-- Here we are changing the major column value of all students across table to 'undecided'
UPDATE student
SET major = 'undecided';

-- Delete all rows from table
DELETE FROM student;

-- Delete only the row where the student_id is 5
DELETE FROM student
WHERE student_id = 5;

-- Delete the entire row where name='Tom' and major='undecided'
DELETE FROM student
WHERE name = 'Tom' AND major = 'undecided';