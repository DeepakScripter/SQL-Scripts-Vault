-- Creating table dept
CREATE TABLE dept(
  deptno     NUMBER(2,0),  -- Department number
  dname      VARCHAR2(14),  -- Department name
  loc        VARCHAR2(13),  -- Location
  CONSTRAINT pk_dept PRIMARY KEY (deptno) -- Primary key constraint on deptno
);

-- Inserting data into dept table
INSERT INTO dept (deptno, dname, loc) VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO dept VALUES (20, 'RESEARCH', 'DALLAS');
INSERT INTO dept VALUES (30, 'SALES', 'CHICAGO');
INSERT INTO dept VALUES (40, 'OPERATIONS', 'BOSTON');

-- Creating table emp
CREATE TABLE emp(
  empno     NUMBER(4,0),   -- Employee number
  ename     VARCHAR2(10),  -- Employee name
  job       VARCHAR2(9),   -- Job title
  mgr       NUMBER(4,0),   -- Manager's employee number
  hiredate  DATE,          -- Hire date
  sal       NUMBER(7,2),   -- Salary
  comm      NUMBER(7,2),   -- Commission
  deptno    NUMBER(2,0),   -- Department number
  CONSTRAINT pk_emp PRIMARY KEY (empno),  -- Primary key constraint on empno
  CONSTRAINT fk_deptno FOREIGN KEY (deptno) REFERENCES dept (deptno)  -- Foreign key constraint referencing dept table
);

-- Inserting data into emp table
INSERT INTO emp VALUES (7839, 'KING', 'PRESIDENT', NULL, '1981-11-17', 5000, NULL, 10);
INSERT INTO emp VALUES (7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850, NULL, 30);
INSERT INTO emp VALUES (7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450, NULL, 10);
INSERT INTO emp VALUES (7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975, NULL, 20);
INSERT INTO emp VALUES (7788, 'SCOTT', 'ANALYST', 7566, '1987-07-13', 3000, NULL, 20);
INSERT INTO emp VALUES (7902, 'FORD', 'ANALYST', 7566, '1981-12-03', 3000, NULL, 20);
INSERT INTO emp VALUES (7369, 'SMITH', 'CLERK', 7902, '1980-12-17', 800, NULL, 20);
INSERT INTO emp VALUES (7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600, 300, 30);
INSERT INTO emp VALUES (7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', 1250, 500, 30);
INSERT INTO emp VALUES (7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', 1250, 1400, 30);
INSERT INTO emp VALUES (7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08', 1500, 0, 30);
INSERT INTO emp VALUES (7876, 'ADAMS', 'CLERK', 7788, '1987-07-13', 1100, NULL, 20);
INSERT INTO emp VALUES (7900, 'JAMES', 'CLERK', 7698, '1981-12-03', 950, NULL, 30);
INSERT INTO emp VALUES (7934, 'MILLER', 'CLERK', 7782, '1982-01-23', 1300, NULL, 10);
-- Additional data insertion statements for emp table...

-- Uncomment below queries to execute them
-- Selecting all data from emp table
-- select * from emp;
-- Selecting all data from dept table
-- select * from dept;

-- Query to retrieve employee details along with department details
-- select ename, dname, job, empno, hiredate, loc
-- from emp, dept
-- where emp.deptno = dept.deptno
-- order by ename;

-- Query to count the number of employees in each department
-- select dname, count(*) count_of_employees
-- from dept, emp
-- where dept.deptno = emp.deptno
-- group by DNAME
-- order by 2 desc;
