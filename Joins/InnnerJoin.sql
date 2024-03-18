-- Example 1: Retrieving department name and employee number for employees located in New York with employee numbers 7839 and 7902
-- SELECT DNAME, EMPNO 
-- FROM EMP, DEPT 
-- WHERE EMPNO IN (7839, 7902) 
-- AND LOC = 'NEW YORK' 
-- AND EMP.DEPTNO = DEPT.DEPTNO;

--- Example 2: Retrieving employee name and department name for departments with department numbers 10 and 30
-- SELECT ENAME, DNAME 
-- FROM EMP, DEPT 
-- WHERE deptno IN (10, 30) 
-- AND EMP.deptno = DEPT.deptno;

-- --- Example 3: Retrieving employee name and department name for employees with null commission located in departments with department numbers 10 and 30
-- SELECT ENAME, DNAME 
-- FROM EMP, DEPT 
-- WHERE emp.deptno = dept.deptno 
-- AND ENAME IN  (SELECT ENAME FROM EMP WHERE COMM IS NULL AND DEPTNO IN (10, 30));

