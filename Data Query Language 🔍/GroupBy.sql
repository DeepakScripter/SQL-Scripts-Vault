-- Count the number of employees in department 30
SELECT COUNT(*) FROM EMP WHERE DEPTNO = '30';

-- Count the number of employees in each department
SELECT DEPTNO, COUNT(*) FROM EMP GROUP BY DEPTNO;

-- Count the number of employees in each department where the job is 'PRESIDENT'
SELECT DEPTNO, COUNT(*) FROM EMP WHERE JOB = 'PRESIDENT' GROUP BY DEPTNO;

-- Calculate the total salary for each job
SELECT SUM(SAL), JOB FROM EMP GROUP BY JOB;

-- Count the number of employees in each department where the job is 'MANAGER'
SELECT DEPTNO, COUNT(*) FROM EMP WHERE JOB = 'MANAGER' GROUP BY DEPTNO;

-- Count the number of employees, grouped by job, whose names contain 'A'
SELECT EName, JOB, COUNT(*) FROM EMP WHERE ENAME LIKE '%A%' GROUP BY JOB;

-- Display the department, job, employee name, and maximum salary in each department
SELECT DEPTNO, JOB, ENAME, MAX(SAL) FROM EMP GROUP BY DEPTNO;

-- Count the number of employees, grouped by salary
SELECT COUNT(*), SAL FROM EMP GROUP BY SAL;

-- Count the number of departments, where the department has at least 2 employees
SELECT COUNT(*), DEPTNO FROM EMP GROUP BY DEPTNO HAVING COUNT(*) >= 2;
