-- Example 1: Calculate the annual salary by multiplying the salary by 12 for each employee
-- SELECT ename, sal, sal*12 AS "annual salary" FROM emp;

-- Example 2: Calculate the salary after deducting 25% tax for each employee
-- SELECT ename, sal, sal - (sal*25/100) FROM emp;

-- Example 3: Display all columns from the emp table along with an additional column for annual salary calculated by multiplying the salary by 12
-- SELECT emp.*, sal*12 AS "annual salary" FROM emp;

-- Example 4: Calculate the total salary by adding the commission to the base salary for each employee
-- SELECT sal + comm AS Total_sal FROM emp;
