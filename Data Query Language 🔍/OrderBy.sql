-- Sorting by Employee Name in Ascending Order
SELECT ENAME FROM EMP ORDER BY ENAME ASC; -- Order the employee names in ascending order.

-- Sorting by Employee Name in Descending Order
SELECT ENAME FROM EMP ORDER BY ENAME DESC; -- Order the employee names in descending order.

-- Selecting Top 3 Rows in Descending Order
SELECT * FROM (SELECT ROWNUM, EMP.* FROM EMP ORDER BY ROWNUM DESC) WHERE ROWNUM < 4; -- Select the top 3 rows in descending order.

-- Finding Maximum Salary
SELECT MAX(SAL) FROM EMP; -- Find the maximum salary.

-- Finding Maximum Salary Less Than Maximum Salary
SELECT MAX(SAL) FROM EMP WHERE SAL < (SELECT MAX(SAL) FROM EMP); -- Find the maximum salary less than the overall maximum salary.

-- Finding Maximum Salary Less Than Second Maximum Salary
SELECT MAX(SAL) FROM EMP WHERE SAL < (SELECT MAX(SAL) FROM EMP WHERE SAL < (SELECT MAX(SAL) FROM EMP)); -- Find the maximum salary less than the second maximum salary.

-- Finding nth Maximum and Minimum Salary using ROWNUM Concept
SELECT SAL FROM (SELECT ROWNUM SLNO, SAL FROM (SELECT DISTINCT SAL FROM EMP ORDER BY SAL ASC)) WHERE SLNO = n; -- Find the nth maximum and minimum salary using the ROWNUM concept.
SELECT SAL FROM (SELECT ROWNUM SLNO, SAL FROM (SELECT DISTINCT SAL FROM EMP ORDER BY SAL DESC)) WHERE SLNO = 12; -- Find the nth maximum and minimum salary using the ROWNUM concept.

-- Selecting Specific Rows using ROWNUM Concept
SELECT SAL FROM (SELECT ROWNUM SLNO, SAL FROM (SELECT DISTINCT SAL FROM EMP ORDER BY SAL DESC)) WHERE SLNO IN (1, 2, 3); -- Select specific rows using the ROWNUM concept.
SELECT SAL FROM (SELECT ROWNUM SLNO, SAL FROM (SELECT DISTINCT SAL FROM EMP ORDER BY SAL DESC)) WHERE SLNO IN (5, 3); -- Select specific rows using the ROWNUM concept.

-- Selecting Salary Based on nth Record
SELECT * FROM EMP WHERE SAL IN (SELECT SAL FROM (SELECT ROWNUM SLNO, SAL FROM (SELECT DISTINCT SAL FROM EMP ORDER BY SAL DESC))) WHERE SLNO = 10; -- Select the salary based on the nth record.

-- Nested Subqueries for Complex Selection
SELECT DNAME FROM DEPT WHERE DEPTNO IN (SELECT DEPTNO FROM (SELECT DEPTNO FROM EMP WHERE SAL IN (SELECT SAL FROM (SELECT ROWNUM DINO, SAL FROM (SELECT DISTINCT SAL FROM EMP ORDER BY SAL ASC))) WHERE DINO = 7)); -- Nested subqueries for complex selection.

-- Nested Subqueries for More Complex Selection
SELECT LOC FROM DEPT WHERE DEPTNO IN (SELECT DEPTNO FROM EMP WHERE COMM IN (SELECT SAL FROM (SELECT ROWNUM SINO, SAL FROM (SELECT DISTINCT SAL FROM EMP ORDER BY SAL DESC))) WHERE SINO = 5); -- Nested subqueries for more complex selection.
