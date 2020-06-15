-- INSERT INTO branch VALUES(4, 'Buffalo', NULL, NULL);


-- JOIN serves to combine columns from various tables when they are a related columns
-- Find all branches and the names of their managers
SELECT employee.emp_id, employee.first_name, branch.branch_name
-- We are querying from 2 tables in the same time
FROM employee
JOIN branch
-- and then joining both tables where we are querying
ON employee.emp_id = branch.mgr_id;
-- and specify the columns that are related on those tables and combine them
-- In the end this is returning the list of employees that has the information on shared columns of these 2 different tables


-- LEFT JOIN
-- Here the query is the same as above but this will show all the results from left table, which is the employee table in this case.
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
LEFT JOIN branch
ON employee.emp_id = branch.mgr_id;

-- RIGHT JOIN
-- What this left and right join is doing is this query will include in the search all the results from the table that we are specifying, like branch table in this case
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
RIGHT JOIN branch
ON employee.emp_id = branch.mgr_id;

-- in MySQL we can't use this method but there's also a FULL JOIN where we include all the info from both tables
