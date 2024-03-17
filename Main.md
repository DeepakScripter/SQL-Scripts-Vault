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

📁 Database_Concepts 📊

## Data 💡
"Data is a raw facts that describe the attributes or properties of an object or entity."

## Database 💾
"A database is a place where data is stored in a systematic and organized manner."

## Basic Operations 🛠️
"The basic operations that are generally performed on a database include create/insert, read/retrieve, update/modify, and delete/drop (CRUD) operations."

## Database Management System (DBMS) 🖥️
"A Database Management System (DBMS) is software used to manage databases, providing two key factors: security and authorization. We use query languages to communicate with this database."

## Types of DBMS 🗃️
"The types of DBMS include NDBMS (Network Database Management System), HDBMS (Hierarchical DBMS), OODBMS (Object-Oriented Database Management System), and RDBMS (Relational Database Management System)."

## Relational Database Management System (RDBMS) 🔄
"A Relational Database Management System (RDBMS) is a type of DBMS software where data is stored in the form of tables. Two important factors are security and automatic backups, which are used to ensure data integrity. RDBMSs use query languages to communicate with databases."

## Relational Model 📑
"The relational model is a conceptual design developed by data scientist Edgar F. Codd, where data is organized in the form of tables. Any database management system (DBMS) that follows the principles of the relational model becomes a DBMS. Specifically, if a DBMS adheres to the rules set forth by E.F. Codd, it becomes a Relational Database Management System (RDBMS)."

## Terminology 📚
- **Table**: A logical organization of data consisting of rows and columns.
- **Entity**: Anything that has existence.
- **Cell**: The smallest unit of a table, representing a specific data point.
- **Metadata**: Details about the data stored in the database.

## Rules of EF Codd 📏
- The data to be stored in a cell should be single-valued data.
- Datatypes are mandatory, and constraints are optional.
- SQL is not a case-sensitive language.
- In RDBMS, we store everything in the form of tables.
- Metadata is auto-generated.
- According to EF Codd, data can be stored in multiple tables, and connections between tables can be established using key attributes.

## Overview of Statements 📝
- **DDL**: Data Definition Language
- **DML**: Data Manipulation Language
- **TCL**: Transaction Control Language
- **DQL**: Data Query Language
- **DCL**: Data Control Language


### DQL 🔍
- This statement is used to retrieve data from the database.
  - **Select**: Retrieve data from the table and display it.
  - **Projection**: Retrieve data by selecting only columns.
  - **Selection**: Retrieve data by selecting columns as well as records.
  - **Join**: Retrieve data from multiple tables simultaneously.


  --- 📝 Syntax: SELECT [DISTINCT] column-name/expression [AS alias] FROM table-name

  -- 🔄 Order of execution 1. From 2. Select

  -- Example query:
  -- select Ename, sal from emp;

-- 📝 Syntax: SELECT [DISTINCT] column-name/expression [AS alias] FROM table-name

-- 🔄 Order of execution 1. From 2. Select

-- Example query:
-- select Ename, sal from emp;





## What is an Expression? 🤔

An expression is a statement that produces a result. It consists of two types: operands and operators. Operators can be of two types:

1. Column name (direct value)
2. Literal, which consists of three types:
    - Number literal
    - Character literal
    - Date literal

**Note:** Character literals and date literals should be enclosed within single quotes. Date formats include DD/MM/YY and DD/MON/YYYY.

## Example Expression 🚀

Here's an example expression:

SELECT salary * 1.1 AS increased_salary
FROM employees
WHERE department = 'HR';

Example Query with Expression 📊
SELECT ename, sal*6 AS salary
FROM emp;




## Aliases 📝

An alias is an alternative name given to a column or expression in the result table. An alias name can be used with or without using the AS keyword. The alias name should be a single word or a string enclosed within double quotes, and it can include alphanumeric characters and underscores. While providing an alias is not mandatory, it is recommended to enhance clarity and consistency in your queries.

## Example Queries with Aliases 🚀

Here are some example queries demonstrating the usage of aliases:

```sql
-- Example 1:
-- select ename sal, sal*12 "annual salary" from emp;

-- Example 2:
-- select ename, sal, sal - (sal*25/100) from emp;

-- Example 3:
-- select emp.*, sal*12 "annual salary" from emp;

-- Example 4:
-- select sal + comm as Total_sal from emp;
```

## DISTINCT Clause 🔄

The DISTINCT clause is used to remove duplicate or repeated values from the result table. With the DISTINCT clause, we can specify column names or expressions as arguments. Multiple columns can be passed to the DISTINCT clause, but it will remove duplicates only in combination, ensuring unique combinations of values in the result set.

## Additional Information 📊

In some cases, if you want to display additional columns along with all the details, you can use the table name followed by a period (.) and the asterisk (*). This will select all the details directly from the database table specified in the FROM clause.

<!-- select sal + comm as Total_sal from emp; -->

## Handling Null Values 🚫

Null values represent the absence of a value. If any operation is performed with null, the result will be null. However, if any operation is performed with zero, a numerical result will be obtained. An empty cell simply means there is no data present.

## Note 📌

The above questions can be solved using the concept of null values.





## Query Execution Process ⚙️

A query is a condition written by following specific syntax rules to retrieve data from a database. During query execution, the process begins with the execution of the query. The FROM clause in the query searches the database table by traversing its rows. Once the appropriate table is identified, the SELECT clause executes to retrieve the desired data. The retrieved data is then displayed in the result table.

## WHERE Clause and Logical Operations 🧠

The WHERE clause is used to filter records based on specified conditions. It executes row by row after the execution of the FROM clause. Logical operations can be used to pass multiple conditions for the WHERE clause.

### Example Queries with WHERE Clause:

```sql
-- Example 1:
-- select * from emp where job = 'CLERK' and sal < 1500;

-- Example 2:
-- select Ename, hiredate from emp where job = 'MANAGER' and deptno = '30';

-- Example 3:
-- select Ename, DEPTNO, JOB from emp where JOB = 'CLERK' AND (DEPTNO = '10' OR DEPTNO = '30');

-- Example 4:
-- select Ename, DEPTNO, JOB from emp where (JOB = 'CLERK' OR JOB = 'MANAGER') AND DEPTNO = '10';
```

## Date Formats in Oracle SQL 📅

In Oracle SQL, two commonly used date formats are:

1. DD-MON-YY: Represents the day, abbreviated month name, and the last two digits of the year.
2. DD-MON-YYYY: Represents the day, abbreviated month name, and the full year.

### Example Date Queries:

```sql
-- Example 1:
-- select ENAME, HIREDATE from EMP where HIREDATE > '1981-JAN-01'; 

-- Example 2:
-- select ENAME, HIREDATE from EMP where HIREDATE > '1981-01-01'; 
```

**Note:** These formats are often used in SQL queries to handle date data.

## Note 📌

It is not possible to reference aliases defined in the SELECT clause within the WHERE clause because the SELECT clause executes after the WHERE clause. Therefore, aliases are not available for use in filtering conditions within the WHERE clause.










Here's the updated README file with the provided content:

```markdown
Here's the README file with the additional content about Relational and Subquery Operators:

```markdown
# SQL Operators Cheatsheet 📝

SQL operators are foundational elements of the language, essential for manipulating data within a database. 

### 1. Arithmetic Operators ➕➖✖️➗:

Arithmetic operators facilitate mathematical operations on numeric data types. Common arithmetic operators include:

- `+` (Addition): Adds two operands.
- `-` (Subtraction): Subtracts one operand from another.
- `*` (Multiplication): Multiplies two operands.
- `/` (Division): Divides one operand by another.
- `%` (Modulus): Returns the remainder of a division operation.

Example:
```sql
-- SELECT 10 + 5 AS Addition,
--        10 - 5 AS Subtraction,
--        10 * 5 AS Multiplication,
--        10 / 5 AS Division,
--        10 % 3 AS Modulus;
```

### 2. Comparison Operators 🔄:

Comparison operators are used to compare values and determine their relationships. Common comparison operators include:

- `=` (Equal to)
- `>` (Greater than)
- `<` (Less than)
- `>=` (Greater than or equal to)
- `<=` (Less than or equal to)
- `<>` or `!=` (Not equal to)

Example:
```sql
-- SELECT * FROM employees WHERE age > 30;
```

### 3. Logical Operators 🔍:

Logical operators combine multiple conditions and evaluate compound expressions. Common logical operators include:

- `AND`: Returns TRUE if both conditions are true.
- `OR`: Returns TRUE if at least one condition is true.
- `NOT`: Negates the result of a condition.

Example:
```sql
-- SELECT * FROM employees WHERE department = 'IT' AND salary > 50000;
```

### 4. Special Operators ⚙️:

Special operators provide additional functionalities for specific tasks:

- `ALL`
- `ANY` or `SOME`
- `BETWEEN`
- `IN`
- `EXISTS`
- `UNIQUE`

Example:
```sql
-- SELECT * FROM orders WHERE amount BETWEEN 100 AND 500;
```

### 5. String Concatenation Operator 🔗:

The string concatenation operator combines strings into a single string. It varies across database systems:

- In most databases: `||`
- Oracle: `||`
- SQL Server (alternative): `+`

Example:
```sql
-- SELECT first_name || ' ' || last_name AS full_name FROM employees;
```

### Relational and Subquery Operators ↔️:

Relational and subquery operators provide additional functionalities for complex data retrieval and manipulation tasks in SQL:

#### Relational Operators:

Relational operators are used to compare values and determine relationships between them. These operators include:

- `=` (Equal to)
- `>` (Greater than)
- `<` (Less than)
- `>=` (Greater than or equal to)
- `<=` (Less than or equal to)
- `<>` or `!=` (Not equal to)

These operators are essential for filtering data based on specific conditions in SQL queries.

#### Subquery Operators:

Subquery operators are used to perform queries within queries. They include:

- `IN`: Checks whether a value exists in a set of values returned by a subquery.
- `ANY` or `SOME`: Compares a value to any value in a list of results returned by a subquery.
- `ALL`: Compares a value to every value in a list of results returned by a subquery.
- `EXISTS`: Tests for the existence of rows returned by a subquery.

Subqueries are powerful tools for performing complex data retrieval and manipulation tasks in SQL.


```
# Logical Operators in SQL 💡

Logical operators are fundamental in SQL queries for combining conditions and evaluating expressions.

## AND Operator:
The "AND" operator is a binary manipulation [IN, INTO, ONTO, AS KEYWORD IN QUESTION WHEN USE AND OPERATOR]. It returns TRUE if both conditions are true. It should always be used between conditions.

## OR Operator:
The "OR" operator returns TRUE if any of the conditions is satisfied. It should always be used between conditions in binary addition. 
Note: It's recommended to enclose OR conditions within parentheses for clarity and proper evaluation.

## NOT Operator:
The "NOT" operator is used for negation, representing the inverse of a condition.

Note: We can use both the AND and OR operators together in a WHERE clause. When using the OR operator, it's recommended to enclose its conditions within parentheses for clarity and to ensure proper evaluation.

```markdown
# README: Understanding SQL Operators 🛠️

SQL operators are essential components for manipulating and filtering data within databases. Let's explore some common operators and their usage:

## Example Queries:

### 1. Using the AND Operator with OR:
```sql
SELECT * FROM EMP WHERE (JOB = 'MANAGER' OR JOB = 'SALESMAN') AND (DEPTNO = '10' OR DEPTNO = '30');
```
This query selects employees who are either managers or salesmen and belong to departments 10 or 30.

### 2. Using the OR Operator with Multiple Conditions:
```sql
SELECT * FROM EMP WHERE DEPTNO = '10' OR DEPTNO = '30' OR DEPTNO = '20' OR DEPTNO = '40' OR DEPTNO = '50' OR DEPTNO = '90';
```
This query selects employees who belong to departments 10, 30, 20, 40, 50, or 90.

## Understanding the IN Operator:

The IN operator is a versatile multi-value operator that simplifies queries involving multiple values.

```sql
-- Using IN with a list of values
SELECT column1, column2
FROM table
WHERE column IN (value1, value2, value3,...);

-- Using IN with a subquery
SELECT column1, column2
FROM table
WHERE column IN (SELECT query);
```

### Note:
The IN operator serves as a replacement for the OR operator as well as for the equality operator symbol (=) in certain contexts.

### Using NOT IN Operator:
The NOT IN operator is similar to IN, but it rejects all specified values instead of selecting them.

```sql
-- Rejecting employees with job roles of 'CLERK' or 'MANAGER'
SELECT * FROM EMP WHERE JOB NOT IN ('CLERK', 'MANAGER');
```

### Additional Example Query:

-- Selecting employees with salary between 1250 and 3000
SELECT ENAME, SAL FROM EMP WHERE SAL > 1250 AND SAL < 3000;




In addition to the commonly used operators, SQL provides several other operators for specific tasks. Let's explore them:

## BETWEEN Operator:
The BETWEEN operator is used to define a range within which the operator works. The ranges cannot overlap within an interval.


-- Example: Selecting employees with salaries between 1000 and 3000
SELECT * FROM EMP WHERE SAL BETWEEN 1000 AND 3000;

-- Example: Selecting employees hired between January 1, 1981, and December 31, 1981
SELECT ENAME, HIREDATE FROM EMP WHERE HIREDATE BETWEEN '1981-01-01' AND '1981-12-31';


## NOT BETWEEN Operator:
The NOT BETWEEN operator is similar to BETWEEN but rejects the values instead of selecting them.


-- Example: Selecting employees with salaries outside the range of 1000 to 3000
SELECT * FROM EMP WHERE SAL NOT BETWEEN 1000 AND 3000;


## IS Operator:
The IS operator is primarily used to compare values with NULL.


-- Example: Selecting employees with NULL job titles
SELECT ENAME FROM EMP WHERE JOB IS NULL;

-- Example: Selecting employees with non-NULL salaries
SELECT ENAME FROM EMP WHERE SAL IS NOT NULL;

-- Example: Selecting employees with non-NULL job titles
SELECT ENAME FROM EMP WHERE JOB IS NOT NULL;


## IS NULL Operator:
The IS NULL operator checks for NULL values.


-- Example: Selecting employees with NULL commissions
SELECT ENAME FROM EMP WHERE COMM IS NULL;



# LIKE Operator in SQL 🎯

The LIKE operator in SQL is used to match patterns within text data. It allows the use of '%' and '_' wildcard characters to represent any number of characters and any single character, respectively.



WHERE expression LIKE pattern


## Examples using the LIKE Operator:
Let's look at some examples of using the LIKE operator:


-- Selecting employees with job titles ending with 'CLERK'
SELECT ENAME FROM EMP WHERE JOB LIKE '%CLERK';

-- Selecting employees with job titles containing 'MAN' anywhere
SELECT ENAME FROM EMP WHERE JOB LIKE '%MAN%';

-- Selecting employees with job titles starting with 'MAN' and ending with 'GER'
SELECT ENAME FROM EMP WHERE JOB LIKE '%MAN%GER';

-- Selecting employees with job titles starting with 'CLERK'
SELECT ENAME FROM EMP WHERE JOB LIKE 'CLERK%';

-- Selecting employees with job titles containing 'CLERK'
SELECT ENAME FROM EMP WHERE JOB LIKE '%CLERK%';

-- Selecting employees with names starting with any character followed by 'A' and any characters after
SELECT ENAME FROM EMP WHERE ENAME LIKE '_A%';

-- Selecting employees with names starting with 'A' followed by any characters
SELECT ENAME FROM EMP WHERE ENAME LIKE 'A%';

-- Selecting employees with names ending with 'N'
SELECT ENAME FROM EMP WHERE ENAME LIKE '%N';


## Using the NOT LIKE Operator:
The NOT LIKE operator is used to reject values that match the specified pattern.


-- Selecting employees with job titles not ending with 'CLERK'
SELECT ENAME FROM EMP WHERE JOB NOT LIKE '%CLERK';

-- Selecting employees with job titles not containing 'MAN' anywhere
SELECT ENAME FROM EMP WHERE JOB NOT LIKE '%MAN%';

-- Selecting employees hired in 1981
SELECT ENAME, HIREDATE FROM EMP WHERE HIREDATE LIKE '1981%';


The LIKE operator is a powerful tool for pattern matching in SQL queries, allowing for flexible filtering of text data.

# SQL Functions and Operators 🛠️

In SQL, functions and operators are essential tools for manipulating and analyzing data. This comprehensive guide covers various types of functions and operators used in SQL queries.

## User-Defined Functions (UDFs):
User-defined functions (UDFs) are created by users to perform specific tasks not covered by built-in functions. They can be classified into two types:

### 1. Scalar Functions:
Scalar functions return a single value and operate on a single row.

### 2. Table-Valued Functions (TVFs):
Table-valued functions return a table as a result set and can accept parameters.

## Built-in Functions:
Built-in functions are predefined in SQL and provided by the database management system (DBMS). They are categorized based on their purpose:

### 1. Mathematical Functions:
Perform mathematical operations on numeric data types.

### 2. String Functions:
Manipulate character data.

### 3. Date Functions:
Manipulate date and time data types.

### 4. Aggregate Functions:
Perform calculations on sets of values and return a single value.

## Single-Row Functions:
Single-row functions operate on each row of data independently and return a single result for each row. Examples include mathematical functions, string functions, date functions, and aggregate functions.

## Note:
Single-row functions execute on one input at a time, generating one output for each input. They process each input independently, returning the same number of outputs as the number of inputs.


# Multi-Row Functions in SQL 📊

Multi-row functions, also known as aggregate functions, are essential tools in SQL for summarizing and analyzing data across multiple rows. This README provides an overview of multi-row functions, their usage, and important considerations.

## Types of Multi-Row Functions:

### 1. Aggregate Functions:
Aggregate functions operate on multiple rows of data and return a single result for the entire group of rows. Examples include COUNT(), SUM(), AVG(), MIN(), and MAX() (when used without a GROUP BY clause). These functions perform calculations across rows and summarize the data.

### 2. Analytic Functions:
Analytic functions operate on a group of rows and return a result for each row based on a specific window or partition of data. Examples include ROW_NUMBER(), RANK(), DENSE_RANK(), and NTILE(). These functions provide valuable insights into data distributions and rankings.

## Important Points about Multi-Row Functions:

1. Multi-row functions accept only a single argument, which can be a column name or an expression.
2. MAX and MIN functions can be used for all data types, including character, number, and date.
3. SUM and AVG functions can only take number columns as arguments.
4. Multi-row functions ignore NULL values in the column.
5. Multi-row functions cannot be used directly in the WHERE clause.
6. Column names with multi-row functions cannot be used in the SELECT clause.
7. COUNT is the only multi-row function to which '*' can be passed as an argument.
8. Multi-row functions can be used in the GROUP BY, ORDER BY, HAVING, UNION, INTERSECT, and EXCEPT clauses.

## Examples of Multi-Row Functions:

```sql
-- Find the maximum salary in the EMP table
SELECT MAX(SAL) FROM EMP;

-- Calculate the total salary sum in the EMP table
SELECT SUM(SAL) FROM EMP;

-- Calculate the average salary in the EMP table
SELECT AVG(SAL) FROM EMP;

-- Count the number of rows with non-null salary values in the EMP table
SELECT COUNT(SAL) FROM EMP;

-- Count the total number of rows in the EMP table
SELECT COUNT(*) FROM EMP;

-- Count the number of distinct department numbers in the EMP table
SELECT COUNT(DISTINCT DEPTNO) FROM EMP;

-- Find the maximum salary in the EMP table for department number 20
SELECT MAX(SAL) FROM EMP WHERE DEPTNO = '20';

-- Count the number of rows with salary greater than 2000 and department number 20
SELECT COUNT(*) FROM EMP WHERE SAL > 2000 AND DEPTNO = '20';

-- Calculate the total salary sum for employees with the job title 'MANAGER'
SELECT SUM(SAL) FROM EMP WHERE JOB = 'MANAGER';

-- Count the number of rows with non-null commission and department number 20
SELECT COUNT(*) FROM EMP WHERE COMM IS NOT NULL AND DEPTNO = '20';

-- Calculate the average salary, total salary sum, count of distinct department numbers, and maximum salary in the EMP table
SELECT AVG(SAL), SUM(SAL), COUNT(DISTINCT DEPTNO), MAX(SAL) FROM EMP;

-- Calculate the average salary, total salary sum, count of distinct department numbers, and maximum salary in the EMP table for department number 20
SELECT AVG(SAL), SUM(SAL), COUNT(DISTINCT DEPTNO), MAX(SAL) FROM EMP WHERE DEPTNO = '20';

-- Calculate the average salary, total salary sum, count of distinct department numbers, and maximum salary in the EMP table for employees whose name contains 'A' and belong to department number 20
SELECT AVG(SAL), SUM(SAL), COUNT(DISTINCT DEPTNO), MAX(SAL) 
FROM EMP 
WHERE ENAME LIKE '%A%' AND DEPTNO = '20';






# SQL Group By Operations

The "GROUP BY" clause is utilized to group records in SQL. It operates on a row-by-row basis, and we can specify either a column name or an expression as an argument within the "GROUP BY" clause.

Additionally, we can incorporate group expressions along with multi-row functions in the "SELECT" clause.

A "Group By Expression" encompasses any column name or expression outlined within the "GROUP BY" clause.

Following the execution of the "GROUP BY" clause, it assembles groups according to the specified criteria. If any clause follows the "GROUP BY" clause, it will be executed subsequent to the grouping operation.

The syntax for implementing the "GROUP BY" clause is demonstrated as follows:

```sql
SELECT group_by_expression/group_function FROM table_name WHERE (filter_condition) GROUP BY column_name/expression;
```

Typically, the order of execution in SQL queries is structured as follows:

1. FROM
2. WHERE (ROW BY ROW)
3. GROUP BY (GROUP BY GROUP)
4. SELECT (including GROUP BY expressions)

## Sample Queries

1. Count the number of employees in department '30':
   ```sql
   SELECT COUNT(*) FROM EMP WHERE DEPTNO = '30';
   ```

2. Count the number of employees in each department:
   ```sql
   SELECT DEPTNO, COUNT(*) FROM EMP GROUP BY DEPTNO;
   ```

3. Count the number of employees in each department where the job is 'PRESIDENT':
   ```sql
   SELECT DEPTNO, COUNT(*) FROM EMP WHERE JOB = 'PRESIDENT' GROUP BY DEPTNO;
   ```

4. Calculate the total salary for each job:
   ```sql
   SELECT SUM(SAL), JOB FROM EMP GROUP BY JOB;
   ```

5. Count the number of employees in each department where the job is 'MANAGER':
   ```sql
   SELECT DEPTNO, COUNT(*) FROM EMP WHERE JOB = 'MANAGER' GROUP BY DEPTNO;
   ```

6. Count the number of employees, grouped by job, whose names contain 'A':
   ```sql
   SELECT EName, JOB, COUNT(*) FROM EMP WHERE ENAME LIKE '%A%' GROUP BY JOB;
   ```

7. Display the department, job, employee name, and maximum salary in each department:
   ```sql
   SELECT DEPTNO, JOB, ENAME, MAX(SAL) FROM EMP GROUP BY DEPTNO;
   ```

8. Count the number of employees, grouped by salary:
   ```sql
   SELECT COUNT(*), SAL FROM EMP GROUP BY SAL;
   ```

9. Count the number of departments, where the department has at least 2 employees:
   ```sql
   SELECT COUNT(*), DEPTNO FROM EMP GROUP BY DEPTNO HAVING COUNT(*) >= 2;
   ```
```


# HAVING Clause in SQL 📊

The "HAVING" clause is utilized to filter the groups created by the "GROUP BY" clause.

We can include multi-row function conditions in the "HAVING" clause.

It operates group by group.

If you are using the "HAVING" clause after the "GROUP BY" clause, it should be used accordingly; it cannot be used without the "GROUP BY" clause.

The syntax for using the "HAVING" clause is demonstrated as follows:

```sql
SELECT group_by_expression/group_function FROM table_name WHERE <filter_condition> GROUP BY column_name/expression HAVING <group_filter_condition>;
```

Typically, the order of execution in SQL queries is structured as follows:

1. FROM (if used)
2. WHERE (if used) (Row by Row)
3. GROUP BY (Row by Row)
4. HAVING (Group by Group)
5. SELECT (Group-By-Group)

Here's an example query to find the department number and the number of employees working in each department if there are at least 2 clerks in each department:

```sql
SELECT DEPTNO, COUNT(*) 
FROM Emp 
WHERE JOB = 'CLERK' 
GROUP BY DEPTNO 
HAVING COUNT(*) >= 2;
```

This query will return the department numbers and the count of employees for departments where there are at least 2 clerks.

## Additional Example

```sql
SELECT JOB, MIN(SAL), MAX(SAL), AVG(SAL), SUM(SAL) 
FROM EMP 
GROUP BY JOB 
HAVING MAX(SAL) < 5000 AND MIN(SAL) > 1000;
```

In this example, we retrieve job roles along with their minimum, maximum, average, and total salaries, filtering the results based on conditions applied in the HAVING clause.

## Multiple Conditions

We can pass multiple conditions in a HAVING clause by using logical operators.


# WHERE and HAVING Clauses in SQL 📝

**WHERE Clause:**

- It is used to filter the records before grouping.
- The WHERE clause executes row by row.
- It can be used without using the GROUP BY clause.
- Multiple conditions can be passed in the WHERE clause using logical operators.

**HAVING Clause:**

- It is used to filter the groups after grouping.
- The HAVING clause executes group by group.
- It cannot be used without using the GROUP BY clause.
- Multiple conditions can be passed in the HAVING clause using logical operators.
```



```sql
-- SELECT SAL 
-- FROM EMP 
-- GROUP BY SAL 
-- HAVING COUNT(*) > 1;
```
This query would return salaries that appear more than once in the `EMP` table.


# Sub-Query in SQL 🔄

**Sub-Query:**

- A query written inside another query is known as a sub-query.

**Working Procedure:**

- A sub-query consists of a minimum of 2 queries: the outer query and the inner query.
- The inner query, also known as the sub-query, executes first and generates its output.
- The output generated by the inner query is then used as input for the outer query. The outer query executes using this input.
- The result obtained from the execution of the outer query is the final result.
- Thus, we can say that the sub-query is dependent on the outer query.

**Why Sub-Query:**

- We use a sub-query when we need to utilize unknown or dynamic values in our query.

### Example Sub-Query:


SELECT ename, job
FROM emp
WHERE deptno IN (SELECT deptno
                 FROM emp
                 WHERE job = 'CLERK'
                 GROUP BY deptno
                 HAVING COUNT(*) >= 2);


This query retrieves the names (`ename`) and job titles (`job`) of employees from the `emp` table where the department number (`deptno`) is in the set of department numbers where there are at least two clerks.

### More Examples:


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



# Subqueries in SQL 🔄

In SQL, when data needs to be selected from one table based on a condition that involves data from another table, a subquery can be used. This scenario arises when the condition to filter data exists in a different table than the one from which data needs to be selected.

Here's how a subquery can be used to achieve this:

```
SELECT column1, column2, ...
FROM table1
WHERE condition_column IN (SELECT columnX FROM table2 WHERE condition);
```

## Example Queries:

```
-- Query: Retrieve department names where employee 'SCOTT' works
select DNAME 
FROM DEPT 
WHERE DEPTNO IN(select DEPTNO
   FROM EMP
   where ENAME = 'SCOTT');
```


-- Query: Retrieve employee names and salaries for departments located in 'CHICAGO'
select ENAME, SAL FROM EMP where DEPTNO IN (select DEPTNO from dept where LOC = 'CHICAGO');


```
-- Query: Retrieve employee names where salary is greater than 'SCOTT' and department is 'ACCOUNTING'
select ENAME FROM EMP WHERE SAL > (select SAL from emp where ENAME = 'SCOTT') AND DEPTNO IN (select DEPTNO from dept where DNAME = 'ACCOUNTING');
```

```
-- Query: Retrieve employee names and salaries where salary is greater than 'SCOTT' and department is 'RESEARCH'
select ENAME, SAL from emp where sal > (select sal from emp where ename = 'SCOTT') and deptno in (select deptno from dept where dname = 'RESEARCH')
```

```
-- Query: Retrieve locations of departments with non-null commissions and department number '30'
SELECT LOC FROM DEPT WHERE DEPTNO IN (SELECT DEPTNO FROM EMP WHERE COMM IS not null AND DEPTNO = '30');
```

### Additional Examples:

```
-- Query: Retrieve the maximum salary from the employee table
select MAX(SAL) from emp ;

-- Query: Retrieve the minimum salary from the employee table
select MIN(SAL) from emp;

-- Query: Retrieve employee names with the maximum salary
select ENAME from emp where SAL IN (select MAX(SAL) from emp);

-- Query: Retrieve employee names with the minimum salary
select ENAME from emp where SAL IN (select MIN(SAL) from emp)

-- Query: Retrieve employee names with the latest hire date
select ENAME from emp where HIREDATE IN (select MAX(HIREDATE) from emp)

-- Query: Retrieve employee names with the earliest hire date
select ENAME from emp where HIREDATE IN (select MIN(HIREDATE) from emp)

-- Query: Retrieve employee names and commissions with the maximum commission
select ENAME, COMM from emp where COMM IN (select MAX(COMM) from emp);

-- Query: Retrieve employee names and commissions with the minimum commission
select ENAME, COMM from emp where COMM IN (select MIN(COMM) from emp);
```



-- HOW TO FIND MAX SAL AND MIN SAL IN EMP TABLE
-- Query to find the maximum salary in the EMP table
SELECT MAX(SAL) FROM emp;

-- Query to find the minimum salary in the EMP table
SELECT MIN(SAL) FROM emp;

-- NOTE: 
-- A nested subquery refers to a query written within another query. When a subquery is placed inside another query, it's called a nested subquery. Most database systems support nesting subqueries, but there might be variations in the maximum allowed depth of nesting across different systems. WE CAN WRRIEN 255 SUB QUERYS.

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



# TYPES OF SUB QUERY

🔍 Single-row subqueries return only one row as output. They can be used with comparison operators like "=", "<", ">", etc., as well as with the IN and NOT IN operators. Here's an example of each:

1️⃣ Using "=" operator:


SELECT name
FROM animals
WHERE age = (SELECT MAX(age) FROM animals);


This query selects the names of animals whose age is equal to the maximum age in the animals table.

2️⃣ Using IN operator:


SELECT name
FROM animals
WHERE species IN (SELECT species FROM endangered_species);


This query selects the names of animals whose species are listed in the endangered_species table.

3️⃣ Using NOT IN operator:


SELECT name
FROM animals
WHERE species NOT IN (SELECT species FROM extinct_species);


This query selects the names of animals whose species are not listed in the extinct_species table.

🔄 A multi-row subquery returns more than one row as output. These subqueries often use operators like IN, ANY, or ALL to compare against multiple values. 

# Subquery Comparison Operators

🔍 **Restrictions on Subquery Usage:**

**Single-row subquery operators:**
- `=` equal
- `>` greater than
- `>=` greater than or equal
- `<` less than
- `<=` less than or equal
- `<>` or `!=` not equal

These operators require single-row subqueries, meaning the subquery must return only one row.

**Multi-row subquery operators:**
- `IN` equal to any member in a list
- `NOT IN` not equal to any member in a list
- `ANY` returns rows that match any value on a list
- `ALL` returns rows that match all the values in a list

These operators allow multi-row subqueries, meaning the subquery can return multiple rows.

These rules are important to ensure that the subquery behaves correctly in the context of the comparison being made. For instance, when using `IN`, it's logical to compare a single value against a list of values, which necessitates a multi-row subquery. Similarly, when comparing equality or inequality, it's expected to operate on single values, hence requiring a single-row subquery.

🔄 **Special Operators:**
- The ALL operator compares a value to every value returned by a subquery. It returns true if the comparison is true for all values returned by the subquery, and false otherwise. 
    - Syntax: 
    
    SELECT column_name(s)
    FROM table_name
    WHERE column_name operator ALL (SELECT column_name FROM table_name WHERE condition);


- The ANY operator compares a value to each value returned by a subquery. It returns true if the comparison is true for at least one value returned by the subquery, and false otherwise. 
    - Syntax: 
    ```sql
    SELECT column_name(s)
    FROM table_name
    WHERE column_name operator ANY (SELECT column_name FROM table_name WHERE condition);
    ```

ℹ️ Examples:

-- Selecting employees whose salary is greater than any salesmen's salary
select ENAME from EMP where SAL > any (SELECT sal FROM emp WHERE job = 'SALESMAN');

-- Selecting employees whose salary is greater than all clerks' salary
select ENAME from EMP where SAL >  ALL (SELECT sal FROM emp WHERE job = 'CLERK');


# Joins

🔗 **Introduction:**
Joins in SQL are used to retrieve data from multiple tables based on a related column between them. There are several types of joins, each serving a different purpose.

## Types of Joins:

### 1) Cartesian Join or Cross Join
### 2) Inner Join or Equi Join
### 3) Outer Join
    - Left Outer Join
    - Right Outer Join
    - Full Outer Join
### 4) Self Join
### 5) Natural Join

## 1) Cartesian Join or Cross Join:

In Cartesian Join, records from Table 1 will be merged with all the records of Table 2.

- The number of columns in the result table will be the sum of the columns present in Table 1 and Table 2.
- The number of records in the result table will be the product of records present in Table 1 and Table 2.

In this join, we may encounter duplicate records.
(However, it's recommended to avoid Cartesian joins as they can result in large result sets.)

### Example:


-- ANSI SQL Syntax:
SELECT *
FROM table1
CROSS JOIN table2;

-- Oracle SQL Syntax:
SELECT *
FROM table1, table2;

### Example Usage:

-- Performing a Cartesian Join between EMP and DEPT tables
select * from emp cross join dept;
```


-- Performing a Cartesian Join between EMP and DEPT tables (Alternative syntax)
select * from emp, dept;


💡 **Note:**
While Cartesian joins can be useful in certain scenarios, they often lead to unintended consequences, such as large result sets and performance issues. It's crucial to use them judiciously and consider alternative join types where possible.


# 🔗Inner Join

An Inner Join is used to retrieve only the matched records from multiple tables, meaning the records which have corresponding matches in both tables.

## Join Condition:
A Join Condition is a condition based on which we merge two tables to obtain only the matched records.

## Syntax:
The syntax for performing an INNER JOIN in SQL is quite similar between ANSI SQL and Oracle SQL. Here's the syntax for both:

### ANSI SQL Syntax:


SELECT *
FROM table1
INNER JOIN table2 ON table1.column_name = table2.column_name;


### Oracle SQL Syntax:


SELECT *
FROM table1
JOIN table2 ON table1.column_name = table2.column_name;


### Example Usage:


-- Retrieving matched records between EMP and DEPT tables based on department number
SELECT *
FROM emp
INNER JOIN dept ON emp.deptno = dept.deptno;

## Example Queries:


-- Example 1: Retrieving department name and employee number for employees located in New York with employee numbers 7839 and 7902
SELECT DNAME, EMPNO 
FROM EMP, DEPT 
WHERE EMPNO IN (7839, 7902) 
AND LOC = 'NEW YORK' 
AND EMP.DEPTNO = DEPT.DEPTNO;

-- Example 2: Retrieving employee name and department name for departments with department numbers 10 and 30
SELECT ENAME, DNAME 
FROM EMP, DEPT 
WHERE deptno IN (10, 30) 
AND EMP.deptno = DEPT.deptno;

-- Example 3: Retrieving employee name and department name for employees with null commission located in departments with department numbers 10 and 30
SELECT ENAME, DNAME 
FROM EMP, DEPT 
WHERE emp.deptno = dept.deptno 
AND ENAME IN  (SELECT ENAME FROM EMP WHERE COMM IS NULL AND DEPTNO IN (10, 30));


💡 **Tip:**
Always ensure that the join condition used in an Inner Join is appropriately defined to retrieve the desired matched records.


# 🔗Outer Join

In an outer join, we retrieve both the matched records and any unmatched records from the tables involved in the join. There are different types of outer joins:

- **Left Outer Join:** Retrieves all records from the left table and the matching records from the right table, along with any unmatched records from the left table.
- **Right Outer Join:** Retrieves all records from the right table and the matching records from the left table, along with any unmatched records from the right table.
- **Full Outer Join:** Retrieves all records when there is a match in either the left or right table. If there's no match, NULL values are used for the missing side.

## ANSI SQL Syntax:

### LEFT OUTER JOIN:

SELECT *
FROM table1
LEFT OUTER JOIN table2 ON table1.column_name = table2.column_name;
This query retrieves all records from table1 and matching records from table2 based on the specified join condition. It also includes any unmatched records from table1.

### RIGHT OUTER JOIN:

SELECT *
FROM table1
RIGHT OUTER JOIN table2 ON table1.column_name = table2.column_name;
This query retrieves all records from table2 and matching records from table1 based on the specified join condition. It also includes any unmatched records from table2.

### FULL OUTER JOIN:

SELECT *
FROM table1
FULL OUTER JOIN table2 ON table1.column_name = table2.column_name;
This query retrieves all records when there is a match in either table1 or table2. If there's no match, NULL values are used for the missing side.

## Oracle SQL Syntax:

### LEFT OUTER JOIN:

SELECT *
FROM table1, table2
WHERE table1.column_name(+) = table2.column_name;
This query performs a left outer join in Oracle SQL, where records from table1 are included even if they don't have matching records in table2.

### RIGHT OUTER JOIN:

SELECT *
FROM table1, table2
WHERE table1.column_name = table2.column_name(+);
This query performs a right outer join in Oracle SQL, where records from table2 are included even if they don't have matching records in table1.

### FULL OUTER JOIN:

SELECT *
FROM table1 FULL JOIN table2 ON table1.column_name = table2.column_name;
This query performs a full outer join in Oracle SQL, retrieving all records from both tables regardless of matches.

In these queries:
- `table1` and `table2` are the tables you want to join.
- `column_name` is the column in each table that you want to use as the join condition. This column should be common between both tables.
- The `(+)` symbol in Oracle SQL denotes a left outer join, where records from the table on the left side are included even if they don't have matching records in the right table.



# Self Join

🔗 **Definition:**
A self join is used to join the same table to itself. It's employed when the data to be selected and the condition to be executed are present in the same table, but in different records. A self join utilizes alias names, and it's mandatory.

## ANSI SQL Syntax:

SELECT t1.column1, t2.column2
FROM table_name t1
JOIN table_name t2 ON t1.related_column = t2.related_column;

## Oracle SQL Syntax:

SELECT t1.column1, t2.column2
FROM table_name t1, table_name t2
WHERE t1.related_column = t2.related_column;

### Example Queries:


-- Query 1: Select employee names and salaries for employees whose managers' and their own salaries are both greater than 2300.

SELECT E1.ENAME, E2.SAL 
FROM EMP E1, EMP E2 
WHERE E1.MGR = E2.EMPNO  
AND E1.SAL > 2300 
AND E2.SAL > 2300;

-- Query 2: Select names of employees and their managers hired before January 1, 1982.

SELECT E1.ENAME, E2.ENAME 
FROM EMP E1, EMP E2 
WHERE E1.MGR = E2.EMPNO  
AND E1.HIREDATE < '1982-01-01'; 

-- Query 3: Select names of employees and their commissions for salesmen in department 30.

SELECT E1.ENAME, E2.COMM 
FROM EMP E1, EMP E2 
WHERE E1.MGR = E2.EMPNO 
AND E1.JOB = 'SALESMAN' 
AND E2.DEPTNO = '30';

In these queries:
- `EMP` is the table being self-joined.
- `E1` and `E2` are alias names for the same table `EMP`.
- Conditions are applied to filter the results based on the specific requirements.


















