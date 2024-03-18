-- Arithmetic Operators ➕➖✖️➗
-- SELECT 10 + 5 AS Addition,
--        10 - 5 AS Subtraction,
--        10 * 5 AS Multiplication,
--        10 / 5 AS Division,
--        10 % 3 AS Modulus;

-- Comparison Operators 🔄
-- SELECT * FROM employees WHERE age > 30;

-- Logical Operators 🔍
-- SELECT * FROM employees WHERE department = 'IT' AND salary > 50000;

-- Special Operators ⚙️
-- SELECT * FROM orders WHERE amount BETWEEN 100 AND 500;

-- String Concatenation Operator 🔗
-- SELECT first_name || ' ' || last_name AS full_name FROM employees;

-- Using IN with a list of values
-- SELECT column1, column2
-- FROM table
-- WHERE column IN (value1, value2, value3,...);

-- Using IN with a subquery
-- SELECT column1, column2
-- FROM table
-- WHERE column IN (SELECT query);

-- Example: Selecting employees with NULL job titles
-- SELECT ENAME FROM EMP WHERE JOB IS NULL;]

-- Example: Selecting employees with non-NULL salaries
-- SELECT ENAME FROM EMP WHERE SAL IS NOT NULL;]

-- Example: Selecting employees with non-NULL job titles
-- SELECT ENAME FROM EMP WHERE JOB IS NOT NULL;]
