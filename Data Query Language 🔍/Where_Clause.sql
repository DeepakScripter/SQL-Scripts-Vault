-- Example 1: Select all columns from the "emp" table where job is 'CLERK' and salary is less than 1500
SELECT * FROM emp WHERE job = 'CLERK' AND sal < 1500;

-- Example 2: Select employee name and hire date from the "emp" table where job is 'MANAGER' and department number is '30'
SELECT Ename, hiredate FROM emp WHERE job = 'MANAGER' AND deptno = '30';

-- Example 3: Select employee name, department number, and job from the "emp" table where job is 'CLERK' and department number is either '10' or '30'
SELECT Ename, DEPTNO, JOB FROM emp WHERE JOB = 'CLERK' AND (DEPTNO = '10' OR DEPTNO = '30');

-- Example 4: Select employee name, department number, and job from the "emp" table where job is either 'CLERK' or 'MANAGER' and department number is '10'
SELECT Ename, DEPTNO, JOB FROM emp WHERE (JOB = 'CLERK' OR JOB = 'MANAGER') AND DEPTNO = '10';
