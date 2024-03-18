-- Query 1: Selecting a Specific ROWID
-- SELECT ROWID, EMP.* FROM emp WHERE ROWID = '3';

-- Query 2: Selecting ROWIDs Less Than or Equal to 10
SELECT * FROM emp WHERE ROWID <= '10';

-- Query 3: Selecting ROWIDs Greater Than 10
-- SELECT * FROM emp WHERE ROWID > '10';

-- Query 4: Selecting a ROWID that Does Not Exist
-- SQL PLUS IN THIS QUERY OUTPUT IS NO ROW SELECTED
-- SELECT * FROM emp WHERE ROWID = '3';

-- Making ROWNUM Static

-- Query: Making ROWNUM Static and Aliasing as SLno
-- SELECT 
--     ROWNUM AS SLno, 
--     emp.* 
-- FROM 
--     (
--         SELECT 
--             empno, 
--             ename, 
--             job, 
--             mgr, 
--             hiredate, 
--             sal, 
--             comm, 
--             deptno
--         FROM 
--             emp
--         -- Add any conditions or sorting if needed
--     ) emp;

-- Query: Using ROWID as SLNO and Selecting Specific ROWIDs
-- Using ROWID instead of ROWNUM and selecting specific ROWIDs
-- SELECT * FROM (SELECT ROWID SLNO, EMP.* FROM EMP) WHERE SLNO = '3';

-- Query: Using ROWID Instead of ROWNUM and Selecting Multiple ROWIDs
-- Using ROWID instead of ROWNUM and selecting multiple ROWIDs
-- SELECT * FROM (SELECT ROWID SLNO, EMP.* FROM EMP) WHERE SLNO IN (1,2,3,4,5,6,7,8,9,10);
