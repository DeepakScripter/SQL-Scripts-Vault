-- Retrieve employees' names and jobs for departments where there are at least two clerks
SELECT ename, job
FROM emp
WHERE deptno IN (SELECT deptno
                 FROM emp
                 WHERE job = 'CLERK'
                 GROUP BY deptno
                 HAVING COUNT(*) >= 2);


-- More Examples:

-- Retrieve employees with a salary higher than Adams
SELECT ENAME, SAL 
FROM EMP 
WHERE SAL > (SELECT SAL FROM EMP WHERE ENAME = 'ADAMS');

-- Retrieve employees with a salary higher than Miller and lower than Allen
SELECT ENAME, SAL 
FROM EMP 
WHERE SAL > (SELECT SAL FROM EMP where ENAME = 'MILLER') 
AND SAL < (SELECT SAL FROM EMP where ENAME = 'ALLEN');

-- Count employees hired after King
SELECT COUNT(*) 
FROM EMP 
WHERE HIREDATE > (SELECT HIREDATE FROM EMP where ENAME = 'KING');

-- Retrieve employees with the same department number as Turner, who is a clerk
SELECT * 
FROM EMP 
WHERE JOB = 'CLERK' 
AND DEPTNO = (SELECT DEPTNO FROM EMP where ENAME = 'TURNER');

-- Retrieve employees with a salary 12 times less than King but greater than Smith
SELECT ENAME, SAL, JOB 
FROM EMP 
WHERE SAL*12 < (SELECT SAL*12 FROM EMP where ENAME = 'KING') 
AND SAL*12 > (SELECT SAL*12 FROM EMP where ENAME = 'SMITH');


-- Query: Retrieve department names where employee 'SCOTT' works
SELECT DNAME 
FROM DEPT 
WHERE DEPTNO IN(SELECT DEPTNO
   FROM EMP
   where ENAME = 'SCOTT');



-- Query: Retrieve employee names and salaries for departments located in 'CHICAGO'
SELECT ENAME, SAL FROM EMP where DEPTNO IN (select DEPTNO from dept where LOC = 'CHICAGO');


-- Query: Retrieve employee names where salary is greater than 'SCOTT' and department is 'ACCOUNTING'
SELECT ENAME FROM EMP WHERE SAL > (select SAL from emp where ENAME = 'SCOTT') AND DEPTNO IN (select DEPTNO from dept where DNAME = 'ACCOUNTING');


-- Query: Retrieve employee names and salaries where salary is greater than 'SCOTT' and department is 'RESEARCH'
SELECT ENAME, SAL from emp where sal > (select sal from emp where ename = 'SCOTT') and deptno in (select deptno from dept where dname = 'RESEARCH')

-- Query: Retrieve locations of departments with non-null commissions and department number '30'
SELECT LOC FROM DEPT WHERE DEPTNO IN (SELECT DEPTNO FROM EMP WHERE COMM IS not null AND DEPTNO = '30');

-- Query: Retrieve the maximum salary from the employee table
SELECT MAX(SAL) from emp ;

-- Query: Retrieve the minimum salary from the employee table
SELECT MIN(SAL) from emp;

-- Query: Retrieve employee names with the maximum salary
SELECT ENAME from emp where SAL IN (select MAX(SAL) from emp);

-- Query: Retrieve employee names with the minimum salary
SELECT ENAME from emp where SAL IN (select MIN(SAL) from emp)

-- Query: Retrieve employee names with the latest hire date
SELECT ENAME from emp where HIREDATE IN (select MAX(HIREDATE) from emp)

-- Query: Retrieve employee names with the earliest hire date
SELECT ENAME from emp where HIREDATE IN (select MIN(HIREDATE) from emp)

-- Query: Retrieve employee names and commissions with the maximum commission
SELECT ENAME, COMM from emp where COMM IN (select MAX(COMM) from emp);

-- Query: Retrieve employee names and commissions with the minimum commission
SELECT ENAME, COMM from emp where COMM IN (select MIN(COMM) from emp);


-- HOW TO FIND MAX SAL AND MIN SAL IN EMP TABLE
-- Query to find the maximum salary in the EMP table
SELECT MAX(SAL) FROM emp;

-- Query to find the minimum salary in the EMP table
SELECT MIN(SAL) FROM emp;


-- To find the nth maximum or minimum salary using subqueries while minimizing the number of subqueries to N - 1.
-- Query to find the second maximum salary
SELECT ENAME FROM emp WHERE SAL IN (SELECT MAX(SAL) FROM emp WHERE SAL < (SELECT MAX(SAL) FROM emp));

-- Query to find the employee number with the second maximum salary
SELECT EMPNO FROM emp WHERE SAL IN (SELECT MAX(SAL) FROM emp WHERE SAL < (SELECT MAX(SAL) FROM emp ));

-- Query to find the department name where employees earn the second maximum salary
SELECT DNAME FROM DEPT WHERE DEPTNO IN (SELECT DEPTNO FROM emp WHERE SAL IN (SELECT MAX(SAL) FROM emp WHERE SAL < (SELECT MAX(SAL) FROM emp)));

-- Query to find the department name and location where employees earn the second maximum salary
SELECT DNAME, LOC 
FROM DEPT 
WHERE DEPTNO IN (
    SELECT DEPTNO 
    FROM emp 
    WHERE SAL IN (
        SELECT MAX(SAL) 
        FROM emp 
        WHERE SAL < (
            SELECT MAX(SAL) 
            FROM emp 
            WHERE SAL < (
                SELECT MAX(SAL) 
                FROM emp
            )
        )
    )
);

-- Query to find the location and department name where employees earn the second minimum salary
SELECT LOC, DNAME 
FROM DEPT 
WHERE DEPTNO IN (
    SELECT DEPTNO 
    FROM emp 
    WHERE SAL IN (
        SELECT MIN(SAL) 
        FROM emp 
        WHERE SAL > (
            SELECT MIN(SAL) 
            FROM emp 
            WHERE SAL > (
                SELECT MIN(SAL) 
                FROM emp
            )
        )
    )
);

-- Query to select the names of employees who are managed by 'SCOTT'
SELECT ENAME 
FROM EMP 
WHERE EMPNO IN (
    SELECT MGR 
    FROM EMP 
    WHERE ENAME = 'SCOTT'
);

-- Query to select the salary and names of employees who are managed by 'ADAMS'
SELECT SAL, ENAME 
FROM EMP 
WHERE ENAME IN (
    SELECT ENAME 
    FROM EMP 
    WHERE EMPNO IN (
        SELECT MGR 
        FROM EMP 
        WHERE ENAME = 'ADAMS'
    )
);

-- Query to select the department names where employees managed by 'JONES' belong
SELECT DNAME 
FROM DEPT 
WHERE DEPTNO IN (
    SELECT DEPTNO 
    FROM EMP 
    WHERE EMPNO IN (
        SELECT MGR 
        FROM EMP 
        WHERE ENAME = 'JONES'
    )
);

-- Another copy of the query to select the names of employees who are managed by 'SCOTT'
SELECT ENAME 
FROM EMP 
WHERE EMPNO IN (
    SELECT MGR 
    FROM EMP 
    WHERE ENAME = 'SCOTT'
);

-- Another copy of the query to select the salary and names of employees who are managed by 'ADAMS'
SELECT SAL, ENAME 
FROM EMP 
WHERE ENAME IN (
    SELECT ENAME 
    FROM EMP 
    WHERE EMPNO IN (
        SELECT MGR 
        FROM EMP 
        WHERE ENAME = 'ADAMS'
    )
);

-- Another copy of the query to select the department names where employees managed by 'JONES' belong
SELECT DNAME 
FROM DEPT 
WHERE DEPTNO IN (
    SELECT DEPTNO 
    FROM EMP 
    WHERE EMPNO IN (
        SELECT MGR 
        FROM EMP 
        WHERE ENAME = 'JONES'
    )
);

-- Query to select the names of animals with the maximum age
SELECT name
FROM animals
WHERE age = (SELECT MAX(age) FROM animals);

-- Query to select the names of animals belonging to endangered species
SELECT name
FROM animals
WHERE species IN (SELECT species FROM endangered_species);

       

