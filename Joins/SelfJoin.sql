-- --- Query 1: Select employee names and salaries for employees whose managers' and their own salaries are both greater than 2300.

-- SELECT E1.ENAME, E2.SAL 
-- FROM EMP E1, EMP E2 
-- WHERE E1.MGR = E2.EMPNO  
-- AND E1.SAL > 2300 
-- AND E2.SAL > 2300;

-- --- Query 2: Select names of employees and their managers hired before January 1, 1982.

-- SELECT E1.ENAME, E2.ENAME 
-- FROM EMP E1, EMP E2 
-- WHERE E1.MGR = E2.EMPNO  
-- AND E1.HIREDATE < '1982-01-01'; 

-- --- Query 3: Select names of employees and their commissions for salesmen in department 30.

-- SELECT E1.ENAME, E2.COMM 
-- FROM EMP E1, EMP E2 
-- WHERE E1.MGR = E2.EMPNO 
-- AND E1.JOB = 'SALESMAN' 
-- AND E2.DEPTNO = '30';