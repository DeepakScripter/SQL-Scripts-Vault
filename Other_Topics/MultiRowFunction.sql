-- Find the maximum salary in the EMP table
-- SELECT MAX(SAL) FROM EMP;

-- Calculate the total salary sum in the EMP table
-- SELECT SUM(SAL) FROM EMP;

-- Calculate the average salary in the EMP table
-- SELECT AVG(SAL) FROM EMP;

-- Count the number of rows with non-null salary values in the EMP table
-- SELECT COUNT(SAL) FROM EMP;

-- Count the total number of rows in the EMP table
-- SELECT COUNT(*) FROM EMP;

-- Count the number of distinct department numbers in the EMP table
-- SELECT COUNT(DISTINCT DEPTNO) FROM EMP;

-- Find the maximum salary in the EMP table for department number 20
-- SELECT MAX(SAL) FROM EMP WHERE DEPTNO = '20';

-- Count the number of rows with salary greater than 2000 and department number 20
-- SELECT COUNT(*) FROM EMP WHERE SAL > 2000 AND DEPTNO = '20';

-- Calculate the total salary sum for employees with the job title 'MANAGER'
-- SELECT SUM(SAL) FROM EMP WHERE JOB = 'MANAGER';

-- Count the number of rows with non-null commission and department number 20
-- SELECT COUNT(*) FROM EMP WHERE COMM IS NOT NULL AND DEPTNO = '20';

-- Calculate the average salary, total salary sum, count of distinct department numbers, and maximum salary in the EMP table
-- SELECT AVG(SAL), SUM(SAL), COUNT(DISTINCT DEPTNO), MAX(SAL) FROM EMP;

-- Calculate the average salary, total salary sum, count of distinct department numbers, and maximum salary in the EMP table for department number 20
-- SELECT AVG(SAL), SUM(SAL), COUNT(DISTINCT DEPTNO), MAX(SAL) FROM EMP WHERE DEPTNO = '20';

-- Calculate the average salary, total salary sum, count of distinct department numbers, and maximum salary in the EMP table for employees whose name contains 'A' and belong to department number 20
-- SELECT AVG(SAL), SUM(SAL), COUNT(DISTINCT DEPTNO), MAX(SAL) 
-- FROM EMP 
-- WHERE ENAME LIKE '%A%' AND DEPTNO = '20';

-- Selecting employees whose salary is greater than any salesmen's salary
-- SELECT ENAME FROM EMP WHERE SAL > ANY (SELECT SAL FROM EMP WHERE JOB = 'SALESMAN');

-- Selecting employees whose salary is greater than all clerks' salary
-- SELECT ENAME FROM EMP WHERE SAL > ALL (SELECT SAL FROM EMP WHERE JOB = 'CLERK');
