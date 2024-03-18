-- Add a column named "email" with VARCHAR(100) datatype to the "employees" table
ALTER TABLE employees
ADD COLUMN email VARCHAR(100);

-- Modify the datatype of the "salary" column to NUMBER(10, 2)
ALTER TABLE employees
MODIFY COLUMN salary NUMBER(10, 2);

-- Drop (remove) the column named "address" from the "employees" table
ALTER TABLE employees
DROP COLUMN address;

-- Rename the column "emp_id" to "employee_id" in the "employees" table
ALTER TABLE employees
RENAME COLUMN emp_id TO employee_id;

-- Add a foreign key constraint named "fk_dept_id" on the "department_id" column referencing the "department_id" column in the "departments" table
ALTER TABLE employees
ADD CONSTRAINT fk_dept_id
FOREIGN KEY (department_id) REFERENCES departments(department_id);
