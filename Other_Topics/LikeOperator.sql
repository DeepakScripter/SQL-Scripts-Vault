-- Selecting employees with job titles ending with 'CLERK'
-- SELECT ENAME FROM EMP WHERE JOB LIKE '%CLERK';

-- Selecting employees with job titles containing 'MAN' anywhere
-- SELECT ENAME FROM EMP WHERE JOB LIKE '%MAN%';

-- Selecting employees with job titles starting with 'MAN' and ending with 'GER'
-- SELECT ENAME FROM EMP WHERE JOB LIKE '%MAN%GER';

-- Selecting employees with job titles starting with 'CLERK'
-- SELECT ENAME FROM EMP WHERE JOB LIKE 'CLERK%';

-- Selecting employees with job titles containing 'CLERK'
-- SELECT ENAME FROM EMP WHERE JOB LIKE '%CLERK%';

-- Selecting employees with names starting with any character followed by 'A' and any characters after
-- SELECT ENAME FROM EMP WHERE ENAME LIKE '_A%';

-- Selecting employees with names starting with 'A' followed by any characters
-- SELECT ENAME FROM EMP WHERE ENAME LIKE 'A%';

-- Selecting employees with names ending with 'N'
-- SELECT ENAME FROM EMP WHERE ENAME LIKE '%N';

-- Using the NOT LIKE Operator:

-- Selecting employees with job titles not ending with 'CLERK'
-- SELECT ENAME FROM EMP WHERE JOB NOT LIKE '%CLERK';

-- Selecting employees with job titles not containing 'MAN' anywhere
-- SELECT ENAME FROM EMP WHERE JOB NOT LIKE '%MAN%';

-- Selecting employees hired in 1981
-- SELECT ENAME, HIREDATE FROM EMP WHERE HIREDATE LIKE '1981%';
