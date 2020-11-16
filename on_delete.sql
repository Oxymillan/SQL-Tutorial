-- How to delete entries in the database when they have foreign keys associated with them

-- this is the code where we created the branch table,
CREATE TABLE branch (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(40),
    mgr_id INT,
    mgr_start_date DATE,
    FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL
);
-- In here we are using ON DELETE SET NULL om emp_id, so if we delete this employee from db it will set the emp_id value to NULL

DELETE FROM employee
WHERE emp_id = 102;


-- Whereas ON DELETE CASCADE will delete all the columns across multiple tables where they have foreign keys associated with them
-- example
CREATE TABLE branch_supplier (
    branch_id INT,
    supplier_name VARCHAR(40),
    supply_type VARCHAR(40),
    PRIMARY KEY(branch_id, supplier_name),
    FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE
);

DELETE FROM branch
WHERE branch_id = 2;