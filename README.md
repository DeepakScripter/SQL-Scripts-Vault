# SQL Scripts Vault


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


  --- ```📝 Syntax: SELECT [DISTINCT] column-name/expression [AS alias] FROM table-name```

  -- 🔄 Order of execution 1. From 2. Select

  -- Example query:
  -- select Ename, sal from emp;

-- 📝 Syntax: ```SELECT [DISTINCT] column-name/expression [AS alias] FROM table-name```

-- 🔄 Order of execution 1. From 2. Select


```
-- Example query:
-- select Ename, sal from emp;
```

## What is an Expression? 🤔

An expression is a statement that produces a result. It consists of two types: operands and operators. Operators can be of two types:

1. Column name (direct value)
2. Literal, which consists of three types:
    - Number literal
    - Character literal
    - Date literal

**Note:** Character literals and date literals should be enclosed within single quotes. Date formats include DD/MM/YY and DD/MON/YYYY.

## Example Expression 🚀

```
SELECT salary * 1.1 AS increased_salary
FROM employees
WHERE department = 'HR';

Example Query with Expression 📊
SELECT ename, sal*6 AS salary
FROM emp;
```

## Aliases 📝

An alias is an alternative name given to a column or expression in the result table. An alias name can be used with or without using the AS keyword. The alias name should be a single word or a string enclosed within double quotes, and it can include alphanumeric characters and underscores. While providing an alias is not mandatory, it is recommended to enhance clarity and consistency in your queries.

## Example Queries with Aliases 🚀


``` 
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

``` select sal + comm as Total_sal from emp; ```

## Handling Null Values 🚫

Null values represent the absence of a value. If any operation is performed with null, the result will be null. However, if any operation is performed with zero, a numerical result will be obtained. An empty cell simply means there is no data present.

## Note 📌

The above questions can be solved using the concept of null values.

## Query Execution Process ⚙️

A query is a condition written by following specific syntax rules to retrieve data from a database. During query execution, the process begins with the execution of the query. The FROM clause in the query searches the database table by traversing its rows. Once the appropriate table is identified, the SELECT clause executes to retrieve the desired data. The retrieved data is then displayed in the result table.

## WHERE Clause and Logical Operations 🧠

The WHERE clause is used to filter records based on specified conditions. It executes row by row after the execution of the FROM clause. Logical operations can be used to pass multiple conditions for the WHERE clause.

### Example Queries with WHERE Clause:

```
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

**Note:📌** These formats are often used in SQL queries to handle date data.

## Note 📌

It is not possible to reference aliases defined in the SELECT clause within the WHERE clause because the SELECT clause executes after the WHERE clause. Therefore, aliases are not available for use in filtering conditions within the WHERE clause.

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
```
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
```
-- SELECT * FROM orders WHERE amount BETWEEN 100 AND 500;
```

### 5. String Concatenation Operator 🔗:

The string concatenation operator combines strings into a single string. It varies across database systems:

- In most databases: `||`
- Oracle: `||`
- SQL Server (alternative): `+`

Example:
```
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

# SQL Operators 🛠️

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

```
-- Selecting employees with salary between 1250 and 3000
--SELECT ENAME, SAL FROM EMP WHERE SAL > 1250 AND SAL < 3000;
```

In addition to the commonly used operators, SQL provides several other operators for specific tasks. Let's explore them:

## BETWEEN Operator:
The BETWEEN operator is used to define a range within which the operator works. The ranges cannot overlap within an interval.
```
-- Example: Selecting employees with salaries between 1000 and 3000
SELECT * FROM EMP WHERE SAL BETWEEN 1000 AND 3000;
```

```

-- Example: Selecting employees hired between January 1, 1981, and December 31, 1981
SELECT ENAME, HIREDATE FROM EMP WHERE HIREDATE BETWEEN '1981-01-01' AND '1981-12-31';
```

## NOT BETWEEN Operator:
The NOT BETWEEN operator is similar to BETWEEN but rejects the values instead of selecting them.

```
-- Example: Selecting employees with salaries outside the range of 1000 to 3000
SELECT * FROM EMP WHERE SAL NOT BETWEEN 1000 AND 3000;
```


## IS Operator:
The IS operator is primarily used to compare values with NULL.

```
-- Example: Selecting employees with NULL job titles
SELECT ENAME FROM EMP WHERE JOB IS NULL;

-- Example: Selecting employees with non-NULL salaries
SELECT ENAME FROM EMP WHERE SAL IS NOT NULL;

-- Example: Selecting employees with non-NULL job titles
SELECT ENAME FROM EMP WHERE JOB IS NOT NULL;
```


## IS NULL Operator:
The IS NULL operator checks for NULL values.

```
-- Example: Selecting employees with NULL commissions
SELECT ENAME FROM EMP WHERE COMM IS NULL;
```
# LIKE Operator in SQL 🎯

The LIKE operator in SQL is used to match patterns within text data. It allows the use of '%' and '_' wildcard characters to represent any number of characters and any single character, respectively. WHERE expression LIKE pattern.

## Examples using the LIKE Operator:

```--- Selecting employees with job titles ending with 'CLERK'
SELECT ENAME FROM EMP WHERE JOB LIKE '%CLERK';

--- Selecting employees with job titles containing 'MAN' anywhere
SELECT ENAME FROM EMP WHERE JOB LIKE '%MAN%';

--- Selecting employees with job titles starting with 'MAN' and ending with 'GER'
SELECT ENAME FROM EMP WHERE JOB LIKE '%MAN%GER';

-- Selecting employees with job titles starting with 'CLERK'
SELECT ENAME FROM EMP WHERE JOB LIKE 'CLERK%';

--- Selecting employees with job titles containing 'CLERK'
SELECT ENAME FROM EMP WHERE JOB LIKE '%CLERK%';

--- Selecting employees with names starting with any character followed by 'A' and any characters after
SELECT ENAME FROM EMP WHERE ENAME LIKE '_A%';

--- Selecting employees with names starting with 'A' followed by any characters
SELECT ENAME FROM EMP WHERE ENAME LIKE 'A%';

--- Selecting employees with names ending with 'N'
SELECT ENAME FROM EMP WHERE ENAME LIKE '%N';
```

## Using the NOT LIKE Operator:
The NOT LIKE operator is used to reject values that match the specified pattern.

```--- Selecting employees with job titles not ending with 'CLERK'
SELECT ENAME FROM EMP WHERE JOB NOT LIKE '%CLERK';```

```-- Selecting employees with job titles not containing 'MAN' anywhere
SELECT ENAME FROM EMP WHERE JOB NOT LIKE '%MAN%';```

```-- Selecting employees hired in 1981
SELECT ENAME, HIREDATE FROM EMP WHERE HIREDATE LIKE '1981%';
```


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
# Multi-Row SQL Functions Examples

Below are examples of SQL queries demonstrating the use of multi-row functions to perform various calculations and analyses on the EMP table.

### 1. Find the Maximum Salary in the EMP table

```sql
SELECT MAX(SAL) FROM EMP;
```

### 2. Calculate the Total Salary Sum in the EMP table

```sql
SELECT SUM(SAL) FROM EMP;
```

### 3. Calculate the Average Salary in the EMP table

```sql
SELECT AVG(SAL) FROM EMP;
```

### 4. Count the Number of Rows with Non-Null Salary Values in the EMP table

```sql
SELECT COUNT(SAL) FROM EMP;
```

### 5. Count the Total Number of Rows in the EMP table

```sql
SELECT COUNT(*) FROM EMP;
```

### 6. Count the Number of Distinct Department Numbers in the EMP table

```sql
SELECT COUNT(DISTINCT DEPTNO) FROM EMP;
```

### 7. Find the Maximum Salary in the EMP table for Department Number 20

```sql
SELECT MAX(SAL) FROM EMP WHERE DEPTNO = '20';
```

### 8. Count the Number of Rows with Salary Greater Than 2000 and Department Number 20

```sql
SELECT COUNT(*) FROM EMP WHERE SAL > 2000 AND DEPTNO = '20';
```

### 9. Calculate the Total Salary Sum for Employees with the Job Title 'MANAGER'

```sql
SELECT SUM(SAL) FROM EMP WHERE JOB = 'MANAGER';
```

### 10. Count the Number of Rows with Non-Null Commission and Department Number 20

```sql
SELECT COUNT(*) FROM EMP WHERE COMM IS NOT NULL AND DEPTNO = '20';
```

### 11. Calculate the Average Salary, Total Salary Sum, Count of Distinct Department Numbers, and Maximum Salary in the EMP table

```sql
SELECT AVG(SAL), SUM(SAL), COUNT(DISTINCT DEPTNO), MAX(SAL) FROM EMP;
```

### 12. Calculate the Average Salary, Total Salary Sum, Count of Distinct Department Numbers, and Maximum Salary in the EMP table for Department Number 20

```sql
SELECT AVG(SAL), SUM(SAL), COUNT(DISTINCT DEPTNO), MAX(SAL) FROM EMP WHERE DEPTNO = '20';
```

### 13. Calculate the Average Salary, Total Salary Sum, Count of Distinct Department Numbers, and Maximum Salary in the EMP table for Employees Whose Name Contains 'A' and Belong to Department Number 20

```sql
SELECT AVG(SAL), SUM(SAL), COUNT(DISTINCT DEPTNO), MAX(SAL) 
FROM EMP 
WHERE ENAME LIKE '%A%' AND DEPTNO = '20';
```

These examples demonstrate the use of various multi-row functions to extract meaningful insights from the EMP table. Each query performs a different analysis or calculation, providing valuable information for decision-making purposes.



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

# HAVING Clause in SQL 📊

The "HAVING" clause is utilized to filter the groups created by the "GROUP BY" clause.We can include multi-row function conditions in the "HAVING" clause. It operates group by group.
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


This query would return salaries that appear more than once in the `EMP` table:-

```
-- SELECT SAL 
-- FROM EMP 
-- GROUP BY SAL 
-- HAVING COUNT(*) > 1;
```

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
```sql
SELECT ename, job
FROM emp
WHERE deptno IN (SELECT deptno
                 FROM emp
                 WHERE job = 'CLERK'
                 GROUP BY deptno
                 HAVING COUNT(*) >= 2);
```

This query retrieves the names (`ename`) and job titles (`job`) of employees from the `emp` table where the department number (`deptno`) is in the set of department numbers where there are at least two clerks.

### More Examples:

```sql
-- Retrieve employees with a salary higher than Adams
SELECT ENAME, SAL 
FROM EMP 
WHERE SAL > (SELECT SAL FROM EMP WHERE ENAME = 'ADAMS');
```

```sql
-- Retrieve employees with a salary higher than Miller and lower than Allen
SELECT ENAME, SAL 
FROM EMP 
WHERE SAL > (SELECT SAL FROM EMP where ENAME = 'MILLER') 
AND SAL < (SELECT SAL FROM EMP where ENAME = 'ALLEN');
```

```sql
-- Count employees hired after King
SELECT COUNT(*) 
FROM EMP 
WHERE HIREDATE > (SELECT HIREDATE FROM EMP where ENAME = 'KING');
```

```sql
-- Retrieve employees with the same department number as Turner, who is a clerk
SELECT * 
FROM EMP 
WHERE JOB = 'CLERK' 
AND DEPTNO = (SELECT DEPTNO FROM EMP where ENAME = 'TURNER');
```

```sql
-- Retrieve employees with a salary 12 times less than King but greater than Smith
SELECT ENAME, SAL, JOB 
FROM EMP 
WHERE SAL*12 < (SELECT SAL*12 FROM EMP where ENAME = 'KING') 
AND SAL*12 > (SELECT SAL*12 FROM EMP where ENAME = 'SMITH');
```

# Subqueries in SQL 🔄

In SQL, when data needs to be selected from one table based on a condition that involves data from another table, a subquery can be used. This scenario arises when the condition to filter data exists in a different table than the one from which data needs to be selected.

```sql
SELECT column1, column2, ...
FROM table1
WHERE condition_column IN (SELECT columnX FROM table2 WHERE condition);
```

## Example Queries:
```sql
-- Query: Retrieve department names where employee 'SCOTT' works
SELECT DNAME 
FROM DEPT 
WHERE DEPTNO IN (SELECT DEPTNO
   FROM EMP
   WHERE ENAME = 'SCOTT');

-- Query: Retrieve employee names and salaries for departments located in 'CHICAGO'
SELECT ENAME, SAL FROM EMP WHERE DEPTNO IN (SELECT DEPTNO FROM dept WHERE LOC = 'CHICAGO');
```


```sql
-- Query: Retrieve employee names where salary is greater than 'SCOTT' and department is 'ACCOUNTING'
SELECT ENAME FROM EMP WHERE SAL > (SELECT SAL FROM emp WHERE ENAME = 'SCOTT') AND DEPTNO IN (SELECT DEPTNO FROM dept WHERE DNAME = 'ACCOUNTING');
```


```sql
-- Query: Retrieve employee names and salaries where salary is greater than 'SCOTT' and department is 'RESEARCH'
SELECT ENAME, SAL FROM emp WHERE sal > (SELECT sal FROM emp WHERE ename = 'SCOTT') AND DEPTNO IN (SELECT deptno FROM dept WHERE dname = 'RESEARCH');
```

```sql
-- Query: Retrieve locations of departments with non-null commissions and department number '30'
SELECT LOC FROM DEPT WHERE DEPTNO IN (SELECT DEPTNO FROM EMP WHERE COMM IS NOT NULL AND DEPTNO = '30');
```

### Additional Examples:

```sql
-- Query: Retrieve the maximum salary from the employee table
SELECT MAX(SAL) FROM emp;
```

```sql
-- Query: Retrieve the minimum salary from the employee table
SELECT MIN(SAL) FROM emp;
```

```sql
-- Query: Retrieve employee names with the maximum salary
SELECT ENAME FROM emp WHERE SAL IN (SELECT MAX(SAL) FROM emp);
```

```sql
-- Query: Retrieve employee names with the minimum salary
SELECT ENAME FROM emp WHERE SAL IN (SELECT MIN(SAL) FROM emp);
```

```sql
-- Query: Retrieve employee names with the latest hire date
SELECT ENAME FROM emp WHERE HIREDATE IN (SELECT MAX(HIREDATE) FROM emp);
```

```sql
-- Query: Retrieve employee names with the earliest hire date
SELECT ENAME FROM emp WHERE HIREDATE IN (SELECT MIN(HIREDATE) FROM emp);
```

```sql
-- Query: Retrieve employee names and commissions with the maximum commission
SELECT ENAME, COMM FROM emp WHERE COMM IN (SELECT MAX(COMM) FROM emp);
```

```sql
-- Query: Retrieve employee names and commissions with the minimum commission
SELECT ENAME, COMM FROM emp WHERE COMM IN (SELECT MIN(COMM) FROM emp);
```

```sql
-- Query to find the maximum salary in the EMP table
SELECT MAX(SAL) FROM emp;
```

```sql
-- Query to find the minimum salary in the EMP table
SELECT MIN(SAL) FROM emp;
```

- **NOTE:** 
  - A nested subquery refers to a query written within another query. When a subquery is placed inside another query, it's called a nested subquery. Most database systems support nesting subqueries, but there might be variations in the maximum allowed depth of nesting across different systems.

```sql
-- To find the nth maximum or minimum salary using subqueries while minimizing the number of subqueries to N - 1.
-- Query to find the second maximum salary
SELECT ENAME FROM emp WHERE SAL IN (SELECT MAX(SAL) FROM emp WHERE SAL < (SELECT MAX(SAL) FROM emp));
```

```sql
-- Query to find the employee number with the second maximum salary
SELECT EMPNO FROM emp WHERE SAL IN (SELECT MAX(SAL) FROM emp WHERE SAL < (SELECT MAX(SAL) FROM emp ));
```

```sql
-- Query to find the department name where employees earn the second maximum salary
SELECT DNAME FROM DEPT WHERE DEPTNO IN (SELECT DEPTNO FROM emp WHERE SAL IN (SELECT MAX(SAL) FROM emp WHERE SAL < (SELECT MAX(SAL) FROM emp)));
```

```-- Query to find the department name and location where employees earn the second maximum salary
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
```
```-- Query to find the location and department name where employees earn the second minimum salary
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
```
```-- Query to select the names of employees who are managed by 'SCOTT'
SELECT ENAME 
FROM EMP 
WHERE EMPNO IN (
    SELECT MGR 
    FROM EMP 
    WHERE ENAME = 'SCOTT'
);
```
```-- Query to select the salary and names of employees who are managed by 'ADAMS'
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
```
```-- Query to select the department names where employees managed by 'JONES' belong
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
```

# TYPES OF SUB QUERY

🔍 **Single-row subqueries** return only one row as output. They can be used with comparison operators like "=", "<", ">", etc., as well as with the IN and NOT IN operators. Here's an example of each:

1️⃣ **Using "=" operator:**

```sql
SELECT name
FROM animals
WHERE age = (SELECT MAX(age) FROM animals);
```

This query selects the names of animals whose age is equal to the maximum age in the animals table.

2️⃣ **Using IN operator:**

```sql
SELECT name
FROM animals
WHERE species IN (SELECT species FROM endangered_species);
```

This query selects the names of animals whose species are listed in the endangered_species table.

3️⃣ **Using NOT IN operator:**

```sql
SELECT name
FROM animals
WHERE species NOT IN (SELECT species FROM extinct_species);
```

This query selects the names of animals whose species are not listed in the extinct_species table.

🔄 **A multi-row subquery** returns more than one row as output. These subqueries often use operators like IN, ANY, or ALL to compare against multiple values.

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
    ```sql
    SELECT column_name(s)
    FROM table_name
    WHERE column_name operator ALL (SELECT column_name FROM table_name WHERE condition);
    ```

- The ANY operator compares a value to each value returned by a subquery. It returns true if the comparison is true for at least one value returned by the subquery, and false otherwise. 

    - Syntax: 
    ```sql
    SELECT column_name(s)
    FROM table_name
    WHERE column_name operator ANY (SELECT column_name FROM table_name WHERE condition);
    ```

ℹ️ Examples:

```sql
-- Selecting employees whose salary is greater than any salesmen's salary
select ENAME from EMP where SAL > any (SELECT sal FROM emp WHERE job = 'SALESMAN');
```

```sql
-- Selecting employees whose salary is greater than all clerks' salary
select ENAME from EMP where SAL > ALL (SELECT sal FROM emp WHERE job = 'CLERK');
```


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

## 1) Cartesian Join or Cross Join

In a Cartesian Join, records from Table 1 are combined with all the records of Table 2.

- The number of columns in the result table will be the sum of the columns present in Table 1 and Table 2.
- The number of records in the result table will be the product of the number of records present in Table 1 and Table 2.

In this join, we may encounter duplicate records.
However, it's recommended to avoid Cartesian joins as they can result in large result sets.

### Syntax:

```sql
-- ANSI SQL Syntax:
SELECT *
FROM table1
CROSS JOIN table2;
```

```sql
-- Oracle SQL Syntax:
SELECT *
FROM table1, table2;
```

### Example Usage:

```sql
-- Performing a Cartesian Join between EMP and DEPT tables
SELECT * FROM emp CROSS JOIN dept;
```

```sql
-- Performing a Cartesian Join between EMP and DEPT tables (Alternative syntax)
SELECT * FROM emp, dept;
```

💡 **Note:**
While Cartesian joins can be useful in certain scenarios, they often lead to unintended consequences, such as large result sets and performance issues. It's crucial to use them judiciously and consider alternative join types where possible.


# 🔗 Inner Join

An Inner Join is used to retrieve only the matched records from multiple tables, meaning the records which have corresponding matches in both tables.

## Join Condition:
A Join Condition is a condition based on which we merge two tables to obtain only the matched records.

## Syntax:
The syntax for performing an INNER JOIN in SQL is quite similar between ANSI SQL and Oracle SQL. Here's the syntax for both:

### ANSI SQL Syntax:

```sql
SELECT *
FROM table1
INNER JOIN table2 ON table1.column_name = table2.column_name;
```

### Oracle SQL Syntax:

```sql
SELECT *
FROM table1
JOIN table2 ON table1.column_name = table2.column_name;
```

### Example Usage:

```sql
-- Retrieving matched records between EMP and DEPT tables based on department number
SELECT *
FROM emp
INNER JOIN dept ON emp.deptno = dept.deptno;
```

## Example Queries:

```sql
-- Example 1: Retrieving department name and employee number for employees located in New York with employee numbers 7839 and 7902
SELECT DNAME, EMPNO 
FROM EMP
INNER JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO
WHERE LOC = 'NEW YORK' 
AND EMPNO IN (7839, 7902);
```

```sql
-- Example 2: Retrieving employee name and department name for departments with department numbers 10 and 30
SELECT ENAME, DNAME 
FROM EMP
INNER JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO
WHERE DEPTNO IN (10, 30);
```

```sql
-- Example 3: Retrieving employee name and department name for employees with null commission located in departments with department numbers 10 and 30
SELECT ENAME, DNAME 
FROM EMP
INNER JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO
WHERE COMM IS NULL
AND DEPT.DEPTNO IN (10, 30);
```

💡 **Tip:**
Always ensure that the join condition used in an Inner Join is appropriately defined to retrieve the desired matched records.


# 🔗 Outer Join

In an outer join, we retrieve both the matched records and any unmatched records from the tables involved in the join. There are different types of outer joins:

- **Left Outer Join:** Retrieves all records from the left table and the matching records from the right table, along with any unmatched records from the left table.
- **Right Outer Join:** Retrieves all records from the right table and the matching records from the left table, along with any unmatched records from the right table.
- **Full Outer Join:** Retrieves all records when there is a match in either the left or right table. If there's no match, NULL values are used for the missing side.

## ANSI SQL Syntax:

### LEFT OUTER JOIN:

```sql
SELECT *
FROM table1
LEFT OUTER JOIN table2 ON table1.column_name = table2.column_name;
```
This query retrieves all records from table1 and matching records from table2 based on the specified join condition. It also includes any unmatched records from table1.

### RIGHT OUTER JOIN:

```sql
SELECT *
FROM table1
RIGHT OUTER JOIN table2 ON table1.column_name = table2.column_name;
```
This query retrieves all records from table2 and matching records from table1 based on the specified join condition. It also includes any unmatched records from table2.

### FULL OUTER JOIN:

```sql
SELECT *
FROM table1
FULL OUTER JOIN table2 ON table1.column_name = table2.column_name;
```
This query retrieves all records when there is a match in either table1 or table2. If there's no match, NULL values are used for the missing side.

## Oracle SQL Syntax:

### LEFT OUTER JOIN:

```sql
SELECT *
FROM table1, table2
WHERE table1.column_name(+) = table2.column_name;
```
This query performs a left outer join in Oracle SQL, where records from table1 are included even if they don't have matching records in table2.

### RIGHT OUTER JOIN:

```sql
SELECT *
FROM table1, table2
WHERE table1.column_name = table2.column_name(+);
```
This query performs a right outer join in Oracle SQL, where records from table2 are included even if they don't have matching records in table1.

### FULL OUTER JOIN:

```sql
SELECT *
FROM table1 FULL JOIN table2 ON table1.column_name = table2.column_name;
```
This query performs a full outer join in Oracle SQL, retrieving all records from both tables regardless of matches.

In these queries:
- `table1` and `table2` are the tables you want to join.
- `column_name` is the column in each table that you want to use as the join condition. This column should be common between both tables.
- The `(+)` symbol in Oracle SQL denotes a left outer join, where records from the table on the left side are included even if they don't have matching records in the right table.

# Self Join

🔗 **Definition:**
A self join is used to join the same table to itself. It's employed when the data to be selected and the condition to be executed are present in the same table, but in different records. A self join utilizes alias names, and it's mandatory.

## ANSI SQL Syntax:

```sql
SELECT t1.column1, t2.column2
FROM table_name t1
JOIN table_name t2 ON t1.related_column = t2.related_column;
```

## Oracle SQL Syntax:

```sql
SELECT t1.column1, t2.column2
FROM table_name t1, table_name t2
WHERE t1.related_column = t2.related_column;
```

### Example Queries:


```sql
-- Query 1: Select employee names and salaries for employees whose managers' and their own salaries are both greater than 2300.
SELECT E1.ENAME, E2.SAL 
FROM EMP E1, EMP E2 
WHERE E1.MGR = E2.EMPNO  
AND E1.SAL > 2300 
AND E2.SAL > 2300;
```

```sql
-- Query 2: Select names of employees and their managers hired before January 1, 1982.
SELECT E1.ENAME, E2.ENAME 
FROM EMP E1, EMP E2 
WHERE E1.MGR = E2.EMPNO  
AND E1.HIREDATE < '1982-01-01';
```

```sql
-- Query 3: Select names of employees and their commissions for salesmen in department 30.
SELECT E1.ENAME, E2.COMM 
FROM EMP E1, EMP E2 
WHERE E1.MGR = E2.EMPNO 
AND E1.JOB = 'SALESMAN' 
AND E2.DEPTNO = '30';
```

In these queries:
- `EMP` is the table being self-joined.
- `E1` and `E2` are alias names for the same table `EMP`.
- Conditions are applied to filter the results based on the specific requirements.


# Inner Join and Self Join Question 🔍 
When using INNER JOIN to join N number of tables, we need N minus one join conditions to connect each table together. There's no strict limit on the number of tables we can join using INNER JOIN; however, joining a large number of tables can affect performance and query readability.

## Example Queries:


```sql
-- Query 1: Select employee names, their managers' names, and department names.
SELECT E1.ENAME, E2.ENAME, D1.DNAME, D2.DNAME 
FROM EMP E1, EMP E2, DEPT D1, DEPT D2 
WHERE E1.MGR = E2.EMPNO 
AND E1.DEPTNO = D1.DEPTNO 
AND E2.DEPTNO = D2.DEPTNO;
```

```sql
-- Query 2: Select employee names, their managers' names, and department names where employee salary is greater than 2000 and department number is 20.
SELECT E1.ENAME, E2.ENAME, D1.DNAME, D2.DNAME 
FROM EMP E1, EMP E2, DEPT D1, DEPT D2 
WHERE E1.MGR = E2.EMPNO 
AND E1.DEPTNO = D1.DEPTNO 
AND E2.DEPTNO = D2.DEPTNO 
AND E1.SAL > 2000 
AND E2.DEPTNO = 20;
```

```sql
-- Query 3: Select employee names, their department locations, manager names, and manager department locations for employees in departments 10 or 30, whose salary is greater than that of employee 'FROD', and department location is either 'NEWYORK' or 'CHICAGO'.
SELECT E1.ENAME, D1.LOC, E2.ENAME, D2.LOC 
FROM EMP E1, EMP E2, DEPT D1, DEPT D2 
WHERE E1.MGR = E2.EMPNO 
AND E1.DEPTNO = D1.DEPTNO 
AND E2.DEPTNO = D2.DEPTNO 
AND E1.DEPTNO IN (10, 30) 
AND E2.SAL > (SELECT SAL FROM EMP WHERE ENAME = 'FROD') 
AND D1.LOC IN ('NEWYORK', 'CHICAGO');
```

```sql
-- Query 4: Select employee names, their manager names, and department locations for employees hired before September 28, 1981, in departments 10 or 40, whose salary is greater than that of employee 'SMITH'.
SELECT E1.ENAME, E2.ENAME, D1.LOC, D2.LOC 
FROM EMP E1, EMP E2, DEPT D1, DEPT D2 
WHERE E1.MGR = E2.EMPNO 
AND E1.HIREDATE < '1981-09-28' 
AND (E2.DEPTNO = 10 OR E2.DEPTNO = 40) 
AND E2.SAL > (SELECT SAL FROM EMP WHERE ENAME = 'SMITH');
```



# Natural Join 🔗 
In a natural join, there's no need to write any join condition explicitly. If the tables contain similar columns, the natural join will output the result similar to an inner join. However, if the tables don't have similar columns, the natural join will behave like a Cartesian join.

We use a natural join when we want to join tables based on the columns that are present in their table structures. It simplifies the join process by automatically matching columns with the same names from the tables being joined.

## ANSI SQL Syntax:
```sql
-- Query 1: Perform a natural join between table1 and table2.
SELECT *
FROM table1
NATURAL JOIN table2;
```

## Oracle SQL Syntax:
```sql
-- Query 2: Perform a natural join between EMP and DEPT tables.
SELECT *
FROM EMP
NATURAL JOIN DEPT;
```

# Single-Row Functions


Single-row functions in SQL are used to perform operations on individual rows and return a single result for each row processed. These functions can manipulate character strings, dates, numbers, and other data types. Here are some commonly used single-row functions:

1. `DUAL`: A special one-row table in Oracle used for testing SQL expressions or functions without accessing any data.

2. `UPPER`: Converts a character string to uppercase.

3. `LOWER`: Converts a character string to lowercase.

4. `INITCAP`: Capitalizes the first letter of each word in a string.

5. `LENGTH`: Returns the length of a string in characters.

6. `REVERSE`: Reverses the characters in a string.

7. `SUBSTR`: Returns a substring from a string.

8. `MOD`: Returns the remainder of a division operation.

9. `TO_CHAR`: Converts a datetime or number value to a character string.

10. `SYSDATE`: Returns the current date and time from the database server.

11. `TO_DATE`: Converts a character string to a date.

12. `NVL`: Returns a specified value if a given expression is null; otherwise, returns the expression itself.

These functions play a crucial role in SQL queries, enabling data manipulation, formatting, and calculation operations on database records.


# Numeric Functions:

1. **ABS**: Returns the absolute value of a number.
   
   ```
   SELECT ABS(-10) AS absolute_value FROM DUAL;
   -- Output: absolute_value
   --         10
   ```

2. **POWER**: Raises a number to a specified power.
   
   ```
   SELECT POWER(2, 3) AS result FROM DUAL;
   -- Output: result
   --         8
   ```

# Character Functions:

3. **UPPER**: Converts a string to uppercase.
   
   ```sql
   SELECT UPPER('hello') AS uppercase_string FROM DUAL;
   -- Output: uppercase_string
   --         HELLO
   ```

4. **INITCAP**: Capitalizes the first letter of each word in a string.
   
   ```
   SELECT INITCAP('hello world') AS initcap_string FROM DUAL;
   -- Output: initcap_string
   --         Hello World
   ```

# Date Functions:

5. **SYSDATE**: Returns the current date and time.
   
   ```
   SELECT SYSDATE FROM DUAL;
   -- Output: SYSDATE
   --         (current date and time)
   ```

6. **MONTHS_BETWEEN**: Returns the number of months between two dates.
   
   ```
   SELECT MONTHS_BETWEEN('01-JAN-2022', '01-JAN-2020') AS months_diff FROM DUAL;
   -- Output: months_diff
   --         24
   ```

# Conversion Functions:

7. **TO_CHAR**: Converts a datetime or number to a character string.
   
   ```
   SELECT TO_CHAR(SYSDATE, 'DD-MON-YYYY HH24:MI:SS') AS formatted_date FROM DUAL;
   -- Output: formatted_date
   --         (current date and time in the specified format)
   ```

8. **TO_NUMBER**: Converts a character string to a number.
   
   ```
   SELECT TO_NUMBER('123.45') AS num_value FROM DUAL;
   -- Output: num_value
   --         123.45
   ```

   
# Datatypes

Datatypes are used to determine what type of data or kind of data will be stored in a particular memory location.

## Datatypes in SQL:

1. **CHAR:**  
   - Stores fixed-length character data.
   - Examples: 'A', 'B', 'C'.

2. **VARCHAR/VARCHAR2:**  
   - Stores variable-length character data.
   - Examples: 'OpenAI', 'SQL'.

3. **NUMBER:**  
   - Stores numeric data.
   - Examples: 123, 45.67.

4. **DATE:**  
   - Stores date and time data.
   - Examples: '2022-03-15', '10:30:00'.

5. **LARGE OBJECT:**
   - Generic term for data types capable of storing large amounts of data.
   - Includes CLOB, BLOB.

   - **Character Large Object (CLOB):**
     - Stores large blocks of character data.
     - Examples: Long text documents, articles.

   - **Binary Large Object (BLOB):**
     - Stores large blocks of binary data.
     - Examples: Images, multimedia files.

### CHAR Datatype:

- CHAR datatype can accept characters such as:
  - 'A' to 'Z'
  - '0' to '9'
  - Special Characters ('!', '*', '^', '-', '_')
  - ASCII (American Standard Code for Information Interchange):
    - A - 65
    - Z - 90
    - a - 97
    - z - 122

#### SYNTAX:


```Char (SIZE)```

- SIZE: It is used to determine the number of characters that can be stored.
- The maximum size that we can store is 2000.
- It is a type of "fixed-length memory allocation". The major drawback of CHAR is its suboptimal usage of memory.



## Differences between CHAR and VARCHAR:

### CHAR:

- CHAR is a fixed-length datatype.
- It allocates storage space for the maximum specified length regardless of the actual data length.
- Trailing spaces are padded to fill the fixed length.
- Ideal for storing data where the length is consistent across all entries.
- The storage space for a CHAR column is always equal to its defined length multiplied by the number of rows.

### VARCHAR:

- VARCHAR is a variable-length datatype.
- It only allocates storage space for the actual data length plus two bytes.
- No padding of spaces is performed.
- Suitable for storing data with varying lengths.
- The storage space for a VARCHAR column is equal to the actual data length plus one byte for the length indicator.

## Example:

Suppose you have a CHAR(10) column and a VARCHAR(10) column.
- If you insert 'hello' into both columns, CHAR will store 'hello ' (padded with spaces to reach 10 characters), while VARCHAR will store 'hello' (without any padding).
- If you insert 'hi' into both columns, both CHAR and VARCHAR will store 'hi', but CHAR will still allocate space for 10 characters, while VARCHAR will only allocate space for 2 characters plus two bytes for length information.

## Summary:

- CHAR is fixed-length and always uses the specified length.
- VARCHAR is variable-length and only uses as much storage as needed for the actual data.

# Differences between VARCHAR and VARCHAR2

## VARCHAR:

- VARCHAR is a variable-length character string datatype.
- It stores variable-length character data.
- In some databases, VARCHAR may have a limit on the maximum length that can be stored.
- Trailing spaces are not removed or padded automatically.
- It is not standardized across all databases, and its behavior may vary. 🔄

## VARCHAR2:

- VARCHAR2 is also a variable-length character string datatype.
- It is specifically used in Oracle databases.
- VARCHAR2 is an extension of the VARCHAR datatype, introduced to overcome the limitations of VARCHAR.
- It stores variable-length character data.
- VARCHAR2 does not have a maximum length limit in Oracle databases.
- Trailing spaces are not removed or padded automatically.
- It is standardized within Oracle databases and provides better performance and flexibility compared to VARCHAR. 💪

## Summary:

While both VARCHAR and VARCHAR2 are used to store variable-length character data, VARCHAR2 is specifically used in Oracle databases and offers better performance and flexibility compared to VARCHAR. Additionally, VARCHAR2 does not have a maximum length limit and is standardized within Oracle databases.


# Number 🔢

This datatype is used to store numeric values.
It can accept two arguments:
- Precision
- Scale

`Number(Precision, Scale)`

**Precision:**

It determines the total number of digits that can be stored, including both integer and decimal digits.

**Scale:**

It determines the number of digits that can be stored after the decimal point within the precision.

The maximum precision that can be specified is 38. The maximum scale that can be specified is 127.

**Example:**

- `Number(10, 2)` can store values with up to 10 digits in total, with 2 digits after the decimal point.
- `Number(5, 0)` can store values with up to 5 digits in total, with no digits after the decimal point.
- `Number(10, 3)` can store values with up to 10 digits in total, with 3 digits after the decimal point.

**Note:**

- The default value for the scale parameter in the Number datatype is zero.
- This means that if the scale is not explicitly specified, the number will be considered as a whole number without any decimal places.
- When converting a character to a numeric datatype using automatic type conversion in a computer database system, it's essential to be aware of the default behavior to ensure accurate data representation and calculations.
---

**Date 📅:**

In Oracle, the syntax for representing a date is 'DD-Mon-YY'. For example, '15-Mar-24' represents the date March 15th, 2024.

There are two commonly used Oracle date formats:

- 'DD-Mon-YY'
- 'DD-Mon-YYYY'

When specifying dates in SQL queries or statements, they should always be enclosed in single quotes.

---

**Large Objects 💾:**

In Oracle databases, there are two types of large object datatypes used for storing images, videos, and other binary data:

**CLOB (Character Large Object):**

- Used to store character data with a maximum size of up to 4GB.
- Suitable for storing large amounts of text data.

**BLOB (Binary Large Object):**

- Used to store binary data such as images, videos, audio files, etc.
- Also capable of storing up to 4GB of data.

Both CLOB and BLOB are essential for handling large volumes of data, with BLOB being specifically designed for binary data storage.


# Constraints 🛡️

Constraints are conditions applied to columns in a database to ensure data integrity.

## Types of Constraints:

### Unique Constraint:

- Ensures that a column or combination of columns contains unique values.
- Prevents the insertion of duplicate or repeated values.

### Not Null Constraint:

- Requires a column to have a value, i.e., it cannot be NULL.

### Check Constraint:

- Validates data based on a specified condition for a column.
- Allows defining custom validation rules for data integrity.

### Primary Key Constraint:

- Identifies a column or combination of columns that uniquely identify each row in a table.
- Prevents duplicate values and NULL entries in the specified column(s).
- Each table can have only one primary key.

### Foreign Key Constraint:

- Establishes a relationship between two tables based on a column or combination of columns.
- Enforces referential integrity by ensuring that values in the foreign key column(s) match values in the referenced primary key column(s) of another table.
- Can have multiple foreign key constraints in a table.

## Characteristics of Foreign Key Constraint:

- Multiple foreign keys can exist in a table.
- Allows repeated or duplicate values.
- Allows NULL values.
- Not a combination of Unique and Not Null constraints.
- Belongs to the child table but references the parent table.
- Also referred to as a referential integrity constraint.

## Note:

Only primary keys can become foreign keys in another table, establishing a relationship between tables. When transferred, a primary key becomes a foreign key in another table.

# Differences Between Primary Key and Foreign Key 🗝️

## Definition:

**Primary Key (PK):** 
A primary key is a column or a set of columns that uniquely identifies each row in a table. It ensures the uniqueness and integrity of the data within the table.

**Foreign Key (FK):** 
A foreign key is a column or a set of columns in one table that refers to the primary key in another table. It establishes a relationship between the two tables, enforcing referential integrity.

## Purpose:

**Primary Key (PK):** 
The primary key is used to uniquely identify each row in the table and ensure data integrity. It is typically used as a unique identifier for records.

**Foreign Key (FK):** 
The foreign key is used to establish relationships between tables. It ensures that the values in the referencing column(s) of one table match the values in the referenced column(s) of another table.

## Uniqueness:

**Primary Key (PK):** 
Primary key values must be unique within the table. No two rows can have the same primary key value.

**Foreign Key (FK):** 
Foreign key values in one table can have duplicates, but they must match existing primary key values in the referenced table.

## Constraint Type:

**Primary Key (PK):** 
Primary key constraints enforce uniqueness and non-nullability. They ensure that the primary key column(s) contain unique and non-null values.

**Foreign Key (FK):** 
Foreign key constraints enforce referential integrity. They ensure that values in the foreign key column(s) match values in the primary key column(s) of the referenced table or are null if allowed.

## Number of Keys:

**Primary Key (PK):** 
Each table can have only one primary key constraint.

**Foreign Key (FK):** 
A table can have multiple foreign key constraints, each referencing different tables.

## Location:

**Primary Key (PK):** 
Primary key constraints are defined within the table where the unique identifier resides.

**Foreign Key (FK):** 
Foreign key constraints are defined in the table that contains the referencing column(s), pointing to the primary key column(s) of another table.

## Role in Relationships:

**Primary Key (PK):** 
Primary keys establish the identity of records within a table.

**Foreign Key (FK):** 
Foreign keys establish relationships between tables, representing dependencies or associations between related data.


# Difference between Primary Key and Unique Key 🔑

## Purpose:

**Primary Key:** 
The primary key uniquely identifies each record in a table and serves as the main method of identifying records. It must be unique and not null.

**Unique Key:** 
A unique key constraint ensures that all values in a column or combination of columns are distinct from one another. While similar to a primary key, a unique key constraint can allow null values, and a table can have multiple unique key constraints.

## Null Values:

**Primary Key:** 
Does not allow null values in the key columns. Every record must have a unique value in the primary key column(s).

**Unique Key:** 
Allows null values in the key columns. While the key values must be unique, a unique key constraint can include null values.

## Number of Keys:

**Primary Key:** 
Each table can have only one primary key. It uniquely identifies each record and is used as a reference for foreign key constraints in related tables.

**Unique Key:** 
A table can have multiple unique key constraints. Each unique key constraint enforces uniqueness within its own set of columns but does not have the same significance as the primary key in terms of identifying records.

## Automatic Indexing:

**Primary Key:** 
Typically automatically creates a clustered index (or a unique non-clustered index in some database systems) on the primary key column(s) to optimize data retrieval and enforce uniqueness.

**Unique Key:** 
May or may not automatically create an index on the unique key column(s), depending on the database system. The creation of an index is often left to the discretion of the database administrator.

## Referential Integrity:

**Primary Key:** 
Establishes referential integrity between tables by defining relationships with foreign keys. Foreign keys in related tables reference the primary key of the parent table.

**Unique Key:** 
While a unique key constraint ensures data integrity within a single table, it does not establish relationships with foreign keys in other tables.

## Use Cases:

**Primary Key:** 
Used to uniquely identify records and establish relationships between tables. It is critical for data integrity and normalization.

**Unique Key:** 
Used to enforce uniqueness within a table on one or more columns. It can be used for fields that require uniqueness but are not intended to be primary identifiers.



# DDL (Data Definition Language) 🛠️

DDL (Data Definition Language) is a set of SQL commands used to define, modify, and manage database objects such as tables, views, indexes, etc. It allows users to perform various operations related to the structure of the database. DDL statement deals with the table.

## Main DDL Statements:

### CREATE:

The CREATE statement is used to create new database objects such as tables, views, indexes, etc.

```
--Syntax example:
CREATE TABLE table_name (
    column1 datatype constraints,
    column2 datatype constraints,
    ...
); 
```

**Example:**

```
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    description TEXT,
    category_id INT,
    price DECIMAL(10, 2),
    stock_quantity INT DEFAULT 0,
    creation_date DATE DEFAULT CURRENT_DATE,
    CONSTRAINT fk_category_id FOREIGN KEY (category_id) REFERENCES categories(category_id),
    CONSTRAINT chk_price CHECK (price >= 0),
    CONSTRAINT chk_stock_quantity CHECK (stock_quantity >= 0)
);
```


# SQL ALTER Statement

The ALTER statement is used to modify the structure of existing database objects. It allows you to add, modify, or drop columns, constraints, or other properties of a table without needing to drop and recreate them. 🛠️

## Syntax

The syntax for the `ALTER` statement varies depending on the specific object you want to modify. Here are some common examples:

1. **Alter Table:**
   ```sql
   ALTER TABLE table_name
   action;
   ```

2. **Alter View:**
   ```sql
   ALTER VIEW view_name
   action;
   ```

3. **Alter Index:**
   ```sql
   ALTER INDEX index_name
   action;
   ```

4. **Alter Sequence:**
   ```sql
   ALTER SEQUENCE sequence_name
   action;
   ```

5. **Alter Trigger:**
   ```sql
   ALTER TRIGGER trigger_name
   action;
   ```

6. **Alter User:**
   ```sql
   ALTER USER username
   action;
   ```

7. **Alter Database:**
   ```sql
   ALTER DATABASE database_name
   action;
   ```

## Actions

The `action` part of the syntax specifies the changes you want to make to the object. Some common actions include:

- **Add a Column:** Adds a new column to a table.
- **Modify a Column:** Modifies the properties of an existing column.
- **Drop a Column:** Removes a column from a table.
- **Rename a Column:** Changes the name of a column.
- **Add or Modify Constraints:** Adds or modifies constraints like primary key, foreign key, check constraint, etc.
- **Rename Object:** Changes the name of the object.
- **Enable or Disable Triggers:** Activates or deactivates triggers associated with a table.
- **Enable or Disable Constraints:** Activates or deactivates constraints on a table.
- **Change Tablespace:** Moves the table to a different tablespace.

## Examples

Here are some examples of using the `ALTER` statement:

1. **Add a Column:**
   ```sql
   ALTER TABLE employees
   ADD COLUMN email VARCHAR(100);
   ```

2. **Modify a Column:**
   ```sql
   ALTER TABLE employees
   MODIFY COLUMN salary NUMBER(10, 2);
   ```

3. **Drop a Column:**
   ```sql
   ALTER TABLE employees
   DROP COLUMN address;
   ```

4. **Rename a Column:**
   ```sql
   ALTER TABLE employees
   RENAME COLUMN emp_id TO employee_id;
   ```

5. **Add a Constraint:**
   ```sql
   ALTER TABLE employees
   ADD CONSTRAINT fk_dept_id
   FOREIGN KEY (department_id) REFERENCES departments(department_id);
   ```

## Considerations

- The specific actions available with `ALTER` depend on the database system you are using (e.g., MySQL, PostgreSQL, Oracle, etc.).
- Some actions may require specific permissions or privileges.
- Always be cautious when using `ALTER` statements, especially in production environments, as they can have significant impacts on your database schema and data.

The DROP statement is used to delete an object, typically a table, from the database along with its table structure.

To recover a dropped table (only in Oracle):
```sql
FLASHBACK TABLE table_name TO BEFORE DROP;
```

To drop a table from the recycle bin (only in Oracle):
```sql
PURGE TABLE table_name;
```

To show the contents of the recycle bin (only in Oracle):
```sql
SHOW RECYCLEBIN;
```

To show the names of all tables in the database:
```sql
SHOW TABLES;
```

Example:
```sql
DROP TABLE employees;
```

Note: The commands to recover from the recycle bin and show the recycle bin or table names are specific to Oracle. Other database management systems may have different methods or features for similar functionality.

## RENAME Statement

The RENAME statement is used to rename an existing database object.

Syntax example:
```sql
RENAME old_table_name TO new_table_name;
```

## TRUNCATE Statement

The TRUNCATE statement is used to delete all rows from a table, effectively resetting the table to its initial state. Unlike the DROP statement, TRUNCATE retains the table structure.

Syntax example:
```sql
TRUNCATE TABLE table_name;
```

These DDL statements are fundamental for defining and managing the structure of a database, enabling users to create, modify, and delete database objects as needed.

## Note

### DESC Command

The DESC command is a SQL*Plus command used to describe the structure of a table, view, or synonym. It provides information about the columns, data types, and constraints of the specified database object. It is commonly used to inspect the structure of database objects, especially when working in a command-line interface like SQL*Plus or SQLcl.

Syntax:
```sql
DESC table_name;
```



# SQL DML (Data Manipulation Language)

DML (Data Manipulation Language) is used to insert, update, or delete records from a table. There are three main statements in DML:

## Insert

This statement is used to insert records into a table.

### Syntax:

```sql
INSERT INTO table_name VALUES (value1, value2, ...);
```

or

```sql
INSERT INTO table_name (column1, column2, ...) VALUES (value1, value2, ...);
```

or

```sql
INSERT INTO table_name (column1, column2, ...) SELECT column1, column2, ... FROM another_table;
```

For example:

```sql
INSERT INTO PROD VALUES (1, 'Beer', 180, 10);
```

When we only know the column names but not their order, we use the second syntax:

```sql
INSERT INTO PROD (PName, PID, DISCONT, PRICE) VALUES ('Liptict', 3, 10, 500);
```

For inserting multiple records into a table, we use the third syntax.

## Update

This statement is used to update records in the table.

### Syntax:

```sql
UPDATE table_name SET column1 = value1, column2 = value2, ... WHERE condition;
```

For example:

```sql
UPDATE PROD SET PName = 'HoRlett', Price = 250 WHERE PID = 2;
```

## Delete

This statement is used to delete a particular record from the table.

### Syntax:

```sql
DELETE FROM table_name WHERE condition;
```

For example:

```sql
DELETE FROM Pron WHERE PID IN (3, 4, 5, 6);
```

DML statements are essential for manipulating data within tables, allowing users to insert, update, or delete records as needed.


# Differences between DDL and DML in SQL

1. **DDL (Data Definition Language)**:
   - DDL statements are used to define, modify, and manage database objects such as tables, views, indexes, etc.
   - Examples of DDL statements include `CREATE`, `ALTER`, `DROP`, `TRUNCATE`, `RENAME`, etc.
   - These statements do not directly deal with the data within the tables but rather with the structure of the database itself.

2. **DML (Data Manipulation Language)**:
   - DML statements are used to manipulate data within the database tables.
   - Examples of DML statements include `INSERT`, `UPDATE`, `DELETE`, `SELECT`, etc.
   - These statements are focused on adding, modifying, retrieving, and removing data from the tables.

### Comparison:

- **Purpose**: DDL is for defining database structure; DML is for manipulating data within the database.
- **Actions**: DDL creates, alters, or removes database objects; DML adds, modifies, or deletes data in the tables.
- **Examples**: `CREATE TABLE` is DDL; `INSERT INTO`, `UPDATE`, `DELETE FROM` are DML.
- **Impact**: DDL changes the database schema; DML changes the data stored in the database.
- **Transaction Management**: DDL statements are typically auto-committed; DML statements can be part of explicit transactions.

In summary, DDL statements are used for managing the structure of the database, while DML statements are used for managing the data within the database tables.



# TRUNCATE, DROP, and DELETE Commands in SQL

## TRUNCATE:

- **Functionality**: The TRUNCATE command is used to quickly remove all records from a table. 🗑️
- **Effects**:
  - Removes all rows from the table.
  - Resets any auto-increment counters or sequences associated with the table.
  - Releases the storage space allocated to the table, but not the table structure itself.
- **Syntax**:
  ```sql
  TRUNCATE TABLE table_name;
  ```
- **Usage**:
  Suitable for quickly removing all data from a table when you want to retain the table structure and reset any associated sequences or auto-increment values.

## DROP:

- **Functionality**: The DROP command is used to completely remove a table from the database, including its structure and all data. ❌
- **Effects**:
  - Removes the table structure and all data contained within the table.
  - Releases the storage space allocated to the table.
- **Syntax**:
  ```sql
  DROP TABLE table_name;
  ```
- **Usage**:
  Use when you want to completely remove a table and do not need any of its data or structure anymore.

## DELETE:

- **Functionality**: The DELETE command is used to remove one or more rows from a table based on specified conditions. 🚫
- **Effects**:
  - Removes specific rows from the table based on the WHERE clause condition.
  - Does not remove the table structure or release storage space.
- **Syntax**:
  ```sql
  DELETE FROM table_name WHERE condition;
  ```
- **Usage**:
  Use when you want to remove specific rows from the table while retaining the table structure and other data.

## Summary:

- **TRUNCATE**: Removes all rows from a table quickly and resets associated sequences, but retains the table structure.
- **DROP**: Completely removes a table, including its structure and all data.
- **DELETE**: Removes specific rows from a table based on conditions while retaining the table structure.


# Transaction Control Language (TCL) 💾

## COMMIT:

- **Syntax**: `COMMIT;`
- **Functionality**: This statement is used to save the transaction to the database.
- **Usage**: After executing this statement, all the changes made by the transaction become permanent.

## SAVEPOINT:

- **Syntax**: `SAVEPOINT savepoint_name;`
- **Functionality**: This statement is used to mark a specific point in the transaction. 🚩
- **Usage**: It allows you to rollback to this point later if needed, without rolling back the entire transaction.

## ROLLBACK:

- **Syntax**: `ROLLBACK TO savepoint_name;`
- **Functionality**: This statement is used to undo changes up to a specified savepoint. ↩️
- **Usage**: It rolls back the transaction to the specified savepoint, reverting any changes made after that savepoint.
- **Example**:
  ```sql
  BEGIN TRANSACTION;

  INSERT INTO Prod VALUES (1, 'CHAR', 500, 101);
  SAVEPOINT R1;

  INSERT INTO Prod VALUES (2, 'PEN', 2000);
  SAVEPOINT R2;

  ROLLBACK TO R1;
  ```
  In this example, the `ROLLBACK TO R1` statement will undo the changes made after the `R1` savepoint, effectively removing the record inserted with the value 'PEN'.


# Data Control Language (DCL) 🔓

## GRANT:

- **Syntax**: `GRANT permission ON table_name TO user_name;`
- **Functionality**: This statement is used to give permissions to another user. 
- **Example**: `GRANT SELECT ON Employees TO Scott;`

## REVOKE:

- **Syntax**: `REVOKE permission ON table_name FROM user_name;`
- **Functionality**: This statement is used to revoke permissions from another user. 🔒
- **Example**: `REVOKE DELETE ON Employees FROM Scott;`
- **Usage**: The `GRANT` statement gives the user Scott permission to select from the Employees table, while the `REVOKE` statement takes back the permission for Scott to delete from the Employees table.

# Pseudo Columns

Pseudo columns are virtual columns present in each and every table but need to be explicitly called or referenced in SQL queries. These columns cannot be seen without explicitly calling them. 🎭

## Types of Pseudo Columns

### Rowid

- **Description**: Rowid is an 18-digit hexadecimal address that uniquely identifies each row in a table. It represents the physical address of a row in the database. 🏷️
- **Example Usage**: `SELECT Rowid, Emp.* FROM Emp;` 🚀
- **Key Points**:
  - Rowid is unique for each record.
  - It is automatically generated by the database system upon insertion of records.
  - Rowid cannot be directly inserted, updated, or deleted by users.
  - It is static in nature and remains constant unless the row is physically moved.
  - Rowid can be used to identify a record uniquely when there is no primary key or key attribute defined. 🔑

### Note

- Rowid is a useful way to delete records. 🗑️
- Rowid is unique and present for every record.
- Empty tables do not have Rowid.
- Rowid can be utilized to uniquely identify a record when there is no primary key or key attribute present in the table. 🌟


### Rownum

- **Description**: Rownum acts as a sequential number assigned to each row in the result set. 🚦
- **Example Usage**: 
  ```sql
  SELECT Rownum, Emp.* FROM Emp;```
Note:
Rownum is used for numbering the records in the resulting table.
It is dynamic in nature, meaning it changes with each execution.
Rownum is generated at the time of execution.
Rownum always starts with 1.
Rownum values cannot be duplicated.
Rownum gets incremented for each row it is assigned to. 🔢




# ROWID Usage

## Selecting Rows by ROWID

### Query 1: Selecting a Specific ROWID
```sql
-- Selecting a specific ROWID
SELECT ROWID, EMP.* FROM emp WHERE ROWID = '3';
```

### Query 2: Selecting ROWIDs Less Than or Equal to 10
```sql
-- Selecting ROWIDs less than or equal to 10
SELECT * FROM emp WHERE ROWID <= '10';
```

### Query 3: Selecting ROWIDs Greater Than 10
```sql
-- Selecting ROWIDs greater than 10
SELECT * FROM emp WHERE ROWID > '10';
```

### Query 4: Selecting a ROWID that Does Not Exist
```sql
-- SQL PLUS IN THIS QUERY OUTPUT IS NO ROW SELECTED
SELECT * FROM emp WHERE ROWID = '3';
```

## Making ROWNUM Static

### Query: Making ROWNUM Static and Aliasing as SLno
```sql
-- Making ROWNUM static and aliasing as SLno
SELECT 
    ROWNUM AS SLno, 
    emp.* 
FROM 
    (
        SELECT 
            empno, 
            ename, 
            job, 
            mgr, 
            hiredate, 
            sal, 
            comm, 
            deptno
        FROM 
            emp
        -- Add any conditions or sorting if needed
    ) emp;
```

### Note:
- The inner query retrieves the columns from the emp table.
- The ROWNUM pseudocolumn is aliased as SLno.
- Then, in the outer query, the columns from the inner query along with the aliased SLno column are selected.
- Now, you can use SLno as a separate static column name instead of ROWNUM. Make sure to adjust the query according to your specific requirements and add any conditions or sorting if needed.

## Using ROWID Instead of ROWNUM

### Query: Using ROWID as SLNO and Selecting Specific ROWIDs
```sql
-- Using ROWID instead of ROWNUM and selecting specific ROWIDs
SELECT * FROM (SELECT ROWID SLNO, EMP.* FROM EMP) WHERE SLNO = '3';
```

### Query: Using ROWID Instead of ROWNUM and Selecting Multiple ROWIDs
```sql
-- Using ROWID instead of ROWNUM and selecting multiple ROWIDs
SELECT * FROM (SELECT ROWID SLNO, EMP.* FROM EMP) WHERE SLNO IN (1,2,3,4,5,6,7,8,9,10);
```

# ORDER BY Clause

The ORDER BY clause is used to sort the result set in ascending or descending order based on one or more columns. Here's an explanation of how ORDER BY works:

- The ORDER BY clause is placed after the SELECT statement and before the optional LIMIT or OFFSET clauses.
- By default, ORDER BY sorts the result set in ascending order.
- You can specify the column name or expression along with the ASC (ascending) or DESC (descending) keyword in the ORDER BY clause.
- If ASC or DESC is not specified, ASC (ascending order) is assumed.
- The ORDER BY clause executes after the SELECT clause.
- It is typically used after the WHERE clause, GROUP BY clause (if used), and before the LIMIT or OFFSET clauses.
- The execution order of SQL statements is as follows: FROM, WHERE, GROUP BY, HAVING, SELECT, ORDER BY.
- We can pass column names or expressions as arguments in the ORDER BY clause.

## Syntax:

```sql
SELECT column1, column2
FROM table_name
WHERE condition
ORDER BY column1 ASC, column2 DESC;
```

   OR 

```sql
SELECT column1, column2 + column3 AS expression_result
FROM table_name
ORDER BY column1 DESC, expression_result ASC;
```

## Examples:

### Sorting by Employee Name in Ascending Order
```sql
SELECT ENAME FROM EMP ORDER BY ENAME ASC; -- Order the employee names in ascending order.
```

### Sorting by Employee Name in Descending Order
```sql
SELECT ENAME FROM EMP ORDER BY ENAME DESC; -- Order the employee names in descending order.
```

### Selecting Top 3 Rows in Descending Order
```sql
SELECT * FROM (SELECT ROWNUM, EMP.* FROM EMP ORDER BY ROWNUM DESC) WHERE ROWNUM < 4; -- Select the top 3 rows in descending order.
```

### Finding Maximum Salary
```sql
SELECT MAX(SAL) FROM EMP; -- Find the maximum salary.
```

### Finding Maximum Salary Less Than Maximum Salary
```sql
SELECT MAX(SAL) FROM EMP WHERE SAL < (SELECT MAX(SAL) FROM EMP); -- Find the maximum salary less than the overall maximum salary.
```

### Finding Maximum Salary Less Than Second Maximum Salary
```sql
SELECT MAX(SAL) FROM EMP WHERE SAL < (SELECT MAX(SAL) FROM EMP WHERE SAL < (SELECT MAX(SAL) FROM EMP)); -- Find the maximum salary less than the second maximum salary.
```

### Finding nth Maximum and Minimum Salary using ROWNUM Concept
```sql
SELECT SAL FROM (SELECT ROWNUM SLNO, SAL FROM (SELECT DISTINCT SAL FROM EMP ORDER BY SAL ASC)) WHERE SLNO = n; -- Find the nth maximum and minimum salary using the ROWNUM concept.
SELECT SAL FROM (SELECT ROWNUM SLNO, SAL FROM (SELECT DISTINCT SAL FROM EMP ORDER BY SAL DESC)) WHERE SLNO = 12; -- Find the nth maximum and minimum salary using the ROWNUM concept.
```

### Selecting Specific Rows using ROWNUM Concept
```sql
SELECT SAL FROM (SELECT ROWNUM SLNO, SAL FROM (SELECT DISTINCT SAL FROM EMP ORDER BY SAL DESC)) WHERE SLNO IN (1, 2, 3); -- Select specific rows using the ROWNUM concept.
SELECT SAL FROM (SELECT ROWNUM SLNO, SAL FROM (SELECT DISTINCT SAL FROM EMP ORDER BY SAL DESC)) WHERE SLNO IN (5, 3); -- Select specific rows using the ROWNUM concept.
```

### Selecting Salary Based on nth Record
```sql
SELECT *
FROM EMP
WHERE SAL IN (
    SELECT SAL
    FROM (
        SELECT ROWNUM SLNO, SAL
        FROM (
            SELECT DISTINCT SAL
            FROM EMP
            ORDER BY SAL DESC
        )
    )
    WHERE SLNO = 10
); -- Select the salary based on the nth record.
```

### Nested Subqueries for Complex Selection
```sql
SELECT DNAME
FROM DEPT
WHERE DEPTNO IN (
    SELECT DEPTNO
    FROM (
        SELECT DEPTNO
        FROM EMP
        WHERE SAL IN (
            SELECT SAL
            FROM (
                SELECT ROWNUM DINO, SAL
                FROM (
                    SELECT DISTINCT SAL
                    FROM EMP
                    ORDER BY SAL ASC
                )
            )
            WHERE DINO = 7
        )
    )
); -- Nested subqueries for complex selection.
```

### Nested Subqueries for More Complex Selection
```sql
SELECT LOC
FROM DEPT
WHERE DEPTNO IN (
    SELECT DEPTNO
    FROM EMP
    WHERE COMM IN (
        SELECT SAL
        FROM (
            SELECT ROWNUM SINO, SAL
            FROM (
                SELECT DISTINCT SAL
                FROM EMP
                ORDER BY SAL DESC
            )
        )
        WHERE SINO = 5
    )
); -- Nested subqueries for more complex selection.
```

# Attributes 🔑

## Key Attributes:

Key Attributes are used to uniquely identify a record within a table.

## Non-Key Attributes:

All attributes other than Key Attributes are referred to as Non-Key Attributes.

## Primary Key Attributes:

Among the Key Attributes, one is chosen as the Primary Key Attribute, which uniquely identifies records within the table.

## Non-Prime Key Attributes:

All Key Attributes except the Primary Key Attribute are referred to as Non-Prime Key Attributes.

## Composite Key Attributes:

A Composite Key is a combination of two or more attributes, which together uniquely identify records within the table.

## Super Key Attributes:

A Super Key is a set of attributes that uniquely identifies a record within a table.

## Foreign Key Attributes:

Foreign Key Attributes are attributes in one entity that reference the Primary Key of another entity, establishing a relationship between them.

## Properties of Attributes:

- Name
- Age
- Height
- Weight
- Date of Birth (DoB)
- Antibuse Level
- Gender
- Address
- Profession
- Aadhar Number
- PAN (Permanent Account Number)
- Voter ID
- Passport
- Contact Number
- Email ID
- Bank Account Number

### Primary Key Attributes:

- Aadhar Number
- PAN
- Voter ID

### Non-Primary Key Attributes:

- Name
- Age
- Height
- Weight
- Date of Birth (DoB)
- Antibuse Level
- Gender
- Address
- Profession
- Passport
- Contact Number
- Email ID
- Bank Account Number

### Composite Key Attributes:

A Composite Key is formed by combining multiple attributes to uniquely identify a record. For example, a combination of Name and Date of Birth might form a Composite Key.

### Group of Key Attributes forming a Super Key:

All Key Attributes, such as Aadhar Number, PAN, and Voter ID, form the Super Key Attributes.

# Functional Dependency 🔄

In a relation 'R' with two attributes 'X' and 'Y', if attribute 'X' determines attribute 'Y', then there exists a functional dependency where 'Y' is dependent on 'X'.

## Example:

Consider a relation with attributes SID, Name, Branch, and Percentage. If the attribute Name is determined by SID, then there exists a functional dependency: SID -> Name.

## Types of Functional Dependency:

### Total Functional Dependency:

If all attributes in a relation are determined by a single attribute which is a key attribute, then there exists total functional dependency. In total functional dependency, there are no anomalies or redundancies.

### Partial Functional Dependency:

For a partial functional dependency to exist, there must be composite key attributes. In partial functional dependency, there is redundancy and anomalies.

#### Example:

Consider a relation 'R' with attributes A, B, C, and D, where A and B are composite key attributes. If A determines C separately, then there exists partial functional dependency: A -> C.

### Transitive Functional Dependency:

If an attribute is determined by a non-key attribute, which in turn is determined by a key attribute, then there exists a transitive functional dependency. In transitive functional dependency, there is redundancy and anomalies.

#### Example:

Consider a relation with attributes A, B, C, and D, where A is a key attribute. If B determines C, and C determines D, then there exists a transitive functional dependency: B -> C -> D.



# Normalization 🔍

Normalization is the process of organizing a database into smaller, manageable tables to reduce redundancy and eliminate anomalies by identifying their functional dependencies.

## Normal Form:

A table without redundancy and anomalies is said to be in normal form.

## Levels of Normal Form:

### First Normal Form (1NF):
A table is in first normal form if it satisfies the following conditions:
- It should not contain multi-valued data.
- Each table entry should not have duplicate or repeated values.

#### Example:

```
SID | Name   | Skills
----|--------|-------
1   | Stella | Python, Java
2   | David  | Python, Java
3   | Lara   | Java
```

### Second Normal Form (2NF):
A table is in second normal form if it is already in 1NF and does not have partial functional dependencies.
If there are partial functional dependencies, attributes responsible for them should be removed from the table.

#### Example:

```
StdID | Name   | SubjectID | Subject | Teacher
------|--------|-----------|---------|--------
910   | Stella | A         | Python  | Mr. A
910   | Stella | B         | Java    | Mr. B
```

### Third Normal Form (3NF):
A table is in third normal form if it is already in 2NF and does not have transitive functional dependencies.
If there are transitive functional dependencies, the attributes causing them should be removed from the table.

#### Example:

```
EmpNo | EmpName | Salary | DepartmentID | Pincode | State
------|---------|--------|--------------|---------|------
1     | Alice   | 5000   | HR           | 12345   | CA
2     | Bob     | 6000   | IT           | 23456   | NY
```

### Boyce-Codd Normal Form (BCNF):
It's an updated version of 3NF, also known as 3.5 NF.


# 📚 **SQL Normalization: A Comprehensive Guide**

## 🧠 **1. Introduction to Normalization**
- **Normalization** is the process of organizing data to minimize redundancy. It ensures that data is structured efficiently, reducing the likelihood of anomalies and improving database performance.

## ⚠️ **2. Disadvantages of Data Redundancy**
- **Disk Space Waste:** Storing duplicate data wastes valuable disk space.
- **Data Inconsistency:** Redundant data can lead to inconsistencies, making it difficult to ensure data accuracy.
- **Slower DML Queries:** Insert, Update, and Delete operations can become slow due to data redundancy.

## 🧩 **3. Understanding the Normal Forms**
- **First Normal Form (1NF):**
  - Ensure that each column contains atomic (indivisible) values.
  - Avoid having multiple values separated by commas in a single cell.
  - Avoid repeating groups of columns.

- **Second Normal Form (2NF):**
  - A table is in 2NF if it is in 1NF and all non-key attributes are fully functionally dependent on the primary key.
  - Eliminate partial dependencies by creating separate tables for different sets of related data.

- **Third Normal Form (3NF):**
  - A table is in 3NF if it is in 2NF and all its attributes are not only dependent on the primary key but also non-transitively dependent.
  - Remove transitive dependencies by ensuring that non-key attributes are dependent on only the primary key.


# SQL Server Bulk Insert  🎓



## 🌟 Overview
If you ever need to insert a massive dataset, such as thousands or even millions of records from a CSV or Excel file into a SQL Server table, **Bulk Insert** is your go-to method. This technique is not only efficient but also crucial for practical tests and interviews.


### Bulk Insert Definition
The Bulk Insert statement allows you to import data from a file into a table or view in SQL Server. This is especially useful when dealing with large datasets.

### Bulk Insert Basic Syntax
```sql
BULK INSERT [TableName]
FROM '[FilePath]'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);
```

### Example
Let's say you have a file `Employees.csv` stored in the `D:\Data\` directory. The file contains thousands of records that you want to insert into the `Employees` table.

```sql
BULK INSERT Employees
FROM 'D:\Data\Employees.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);
```

### Key Points to Remember
- **Table Name**: The table where data will be inserted.
- **File Path**: The full path to your data file.
- **Field Terminator**: The character that separates fields in your file (e.g., comma `,`).
- **Row Terminator**: The character that signifies the end of a row (`\n` for newline).
- **First Row**: Start from the second row if the first row contains headers.

## 🛠 Practical Example
Follow along as I demonstrate this process in SQL Server Management Studio (SSMS). We'll create a table, define its structure, and use Bulk Insert to populate it with data from a CSV file.

1. **Create the Table**
    ```sql
    CREATE TABLE Employees (
        EmployeeID INT,
        FirstName NVARCHAR(50),
        LastName NVARCHAR(50),
        Email NVARCHAR(100),
        Salary FLOAT
    );
    ```

2. **Perform the Bulk Insert**
    ```sql
    BULK INSERT Employees
    FROM 'D:\Data\Employees.csv'
    WITH (
        FIELDTERMINATOR = ',',
        ROWTERMINATOR = '\n',
        FIRSTROW = 2
    );
    ```

3. **Verify the Data**
    ```sql
    SELECT * FROM Employees;
    ```

## 📚 Additional Tips
- If your `\n` (newline) doesn't work as expected, consider using the hexadecimal value for a line break.
- Always start from the second row (`FIRSTROW = 2`) if your file contains headers.
- Use views if you prefer not to insert data directly into tables.





## 🔍 **Understanding the Query Execution Order**
When you execute a query in SQL Server, the execution order isn't the same as the order in which you write the statements. Instead, SQL Server follows a specific order to optimize and execute the query. 🛠️

Here’s the correct execution order:
1. **FROM** 🛢️
2. **WHERE** 🔍
3. **GROUP BY** 📊
4. **HAVING** 📝
5. **SELECT** 🗂️
6. **ORDER BY** 🏷️

## 🧪 **Practical Example**
Let’s say we have the following SQL query:

```sql
SELECT City, SUM(Salary) 
FROM Employees 
WHERE City NOT IN ('Sakhar') 
GROUP BY City 
HAVING SUM(Salary) > 50000 
ORDER BY SUM(Salary) DESC;
```

### Execution Order:
1. **FROM** 🛢️: The table is identified.
2. **WHERE** 🔍: Rows that don’t meet the `WHERE` condition are filtered out.
3. **GROUP BY** 📊: The remaining data is grouped by the specified columns.
4. **HAVING** 📝: Groups that don’t meet the `HAVING` condition are filtered.
5. **SELECT** 🗂️: Only the specified columns are selected.
6. **ORDER BY** 🏷️: The results are sorted as per the order specified.






# 🚀 Subquery in SQL: The Essential Guide



## 📌 Key Points

- **What is a Subquery?**  
  A Subquery is a query nested within another SQL query, typically embedded within the `WHERE` clause. It functions as a condition and helps refine your main query's results.

- **Types of Subqueries:**
  - **Single Row Subquery**: Returns only one row.
  - **Multiple Row Subquery**: Returns multiple rows.
  - **Correlated Subquery**: Depends on the outer query for its value.

- **Usage of Subqueries:**  
  Subqueries can be used in:
  - `SELECT`
  - `UPDATE`
  - `DELETE`
  - `INSERT`
  
  They are powerful tools for filtering data based on complex conditions.

- **Example:**  
  ```sql
  SELECT * FROM employees
  WHERE employee_id IN (
    SELECT employee_id FROM salaries
    WHERE salary > 30000
  );
  ```
  - This query selects employees whose salary is greater than 30,000.

## 🎯 Why Subqueries are Important?
- **Refined Data Selection**: Allows you to narrow down results using conditions within conditions.
- **Interview Essential**: Understanding Subqueries is critical for performing well in SQL-related job interviews.

## 🚨 Important Notes
- Ensure your subquery returns a compatible data type for the main query.
- Subqueries should be optimized to avoid performance issues.





# 🚀 SQL Server Joins Guide



## 🎯 Key Concepts
- **SQL Joins** are used to combine data from two or more tables based on a related column.
- **Types of Joins**:
  - 🔗 **Inner Join**: Retrieves records with matching values in both tables.
  - ➡️ **Left Join**: Retrieves all records from the left table and matching records from the right table.
  - ⬅️ **Right Join**: Retrieves all records from the right table and matching records from the left table.
  - 🔄 **Full Outer Join**: Retrieves all records when there is a match in either left or right table.

## ⚙️ Example
Consider two tables:
- **Employee Table**: Contains details like `EmployeeID`, `EmployeeName`, etc.
- **Department Table**: Contains `DepartmentID`, `DepartmentName`, `EmployeeID`, etc.

We can join these tables using `EmployeeID` to combine data effectively.

## 🚀 How to Use
1. **Create Tables**: Use SQL queries to create your `Employee` and `Department` tables.
2. **Insert Data**: Populate the tables with relevant data.
3. **Execute Joins**: Perform various types of joins to retrieve combined data as per your requirement.






# 📚 Understanding Primary Key & Foreign Key in SQL Server



## 🎯 Key Points

### 🗝️ Primary Key
- **Definition**: A primary key uniquely identifies each record in a table. 
- **Properties**:
  - Must be **unique**.
  - Cannot be **NULL**.
- **Usage**: Ensures that each record can be uniquely identified within a table.

### 🔗 Foreign Key
- **Definition**: A foreign key is a column (or a set of columns) in one table that refers to the primary key in another table.
- **Usage**: Creates a relationship between two tables, ensuring data integrity.
- **Important**: The foreign key value must match a primary key value in the referenced table or be NULL.

## 📊 Example Scenario

Let's illustrate with a simple example:

### Tables
1. **Customer Table**:
   - `CustomerID` (Primary Key)
   - `CustomerName`
   - `Address`
   - `City`

2. **Order Table**:
   - `OrderID` (Primary Key)
   - `OrderItem`
   - `Quantity`
   - `PricePerItem`
   - `CustomerID` (Foreign Key)

### Relationship
- **Customer Table** has a primary key (`CustomerID`).
- **Order Table** includes a foreign key (`CustomerID`) that references the primary key in the Customer Table.

### Practical Application
1. **Adding Data**:
   - Insert a new customer into the **Customer Table**.
   - Use the `CustomerID` to create orders in the **Order Table**.

2. **Data Integrity**:
   - **Order Table** will not allow entries if the `CustomerID` does not exist in the **Customer Table**.
   - You cannot delete a customer from the **Customer Table** if there are related orders in the **Order Table**.

## 🛠️ SQL Commands

### Create Tables
```sql
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    CustomerName NVARCHAR(MAX),
    Address NVARCHAR(MAX),
    City NVARCHAR(100)
);

CREATE TABLE Order (
    OrderID INT PRIMARY KEY,
    OrderItem NVARCHAR(MAX),
    Quantity INT,
    PricePerItem DECIMAL(10, 2),
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);
```

### Insert Data
```sql
-- Insert into Customer Table
INSERT INTO Customer (CustomerID, CustomerName, Address, City)
VALUES (1, 'John Doe', '123 Elm Street', 'Springfield');

-- Insert into Order Table
INSERT INTO Order (OrderID, OrderItem, Quantity, PricePerItem, CustomerID)
VALUES (101, 'Laptop', 1, 1200.00, 1);
```

### Error Handling
- **Foreign Key Violation**: Attempting to insert an order with a non-existent `CustomerID` will result in an error.
- **Delete Restriction**: Deleting a customer with existing orders will not be allowed.



## 📚 **Understanding Primary Key vs Unique Key in SQL Server** 🚀


### 🔑 **Primary Key vs Unique Key: Key Points** 

#### **Syntax Overview** 💻
- **Primary Key**: `PRIMARY KEY`
- **Unique Key**: `UNIQUE`

#### **Similarities** 🤝
1. **No Duplicate Values** 🚫  
   Both **Primary Key** and **Unique Key** ensure that no duplicate values exist in the column where they are applied.

2. **Automatic Indexing** 📈  
   Both **Primary Key** and **Unique Key** automatically create an index on the column for faster retrieval.

#### **Differences** ⚖️
1. **Null Values** ❌  
   - **Primary Key**: Cannot accept null values.
   - **Unique Key**: Can accept multiple null values.

2. **Number of Keys** 🔢  
   - **Primary Key**: Only one per table.
   - **Unique Key**: Multiple unique keys can be applied to a single table.

### 🛠️ **Practical Example**

1. **Creating a Table** 🏗️
   ```sql
   CREATE TABLE Person (
       ID INT PRIMARY KEY,
       FirstName NVARCHAR(50),
       LastName NVARCHAR(50),
       Age INT,
       Email NVARCHAR(100) UNIQUE,
       CountryID INT UNIQUE
   );
   ```

2. **Inserting Data** 💾
   ```sql
   INSERT INTO Person (ID, FirstName, LastName, Age, Email, CountryID)
   VALUES (1, 'Adil', 'Ansari', 25, 'adil@example.com', 66);
   ```

3. **Handling Errors** 🚫
   - **Primary Key Error**: Duplicate ID.
   - **Unique Key Error**: Duplicate Email.

### 💡 **Key Takeaways**
- **Primary Key**: Unique identifier for each row, no nulls allowed.
- **Unique Key**: Ensures uniqueness but allows multiple nulls.





## 🆚 **CHAR vs. NCHAR**

**1. Storage:**

- **CHAR**: 
  - Use when you want to store English characters only. 
  - **Example**: If you want to store English letters and numbers (e.g., 'A', '1'), use `CHAR`.
  - **Size**: 1 CHAR = 1 byte. 

- **NCHAR**: 
  - Use when you need to store multilingual or Unicode characters. 
  - **Example**: If you need to store languages like Chinese, Japanese, Hindi, or Urdu, use `NCHAR`.
  - **Size**: 1 NCHAR = 2 bytes.

**2. Use Case:**

- **CHAR**: Best for fixed-length, English-only data.
- **NCHAR**: Ideal for fixed-length data that includes Unicode characters.

**3. Performance:**

- **CHAR**: Efficient for English text, uses less memory.
- **NCHAR**: Suitable for multilingual data but uses more memory (2 bytes per character), which may affect performance for large datasets.

---

## 📝 **Summary**

- **CHAR**: Fixed length, English-only, 1 byte per character.
- **NCHAR**: Fixed length, supports Unicode (multilingual), 2 bytes per character.

Remember, if you only need to store English characters, `CHAR` or `VARCHAR` (for variable length) is typically sufficient and more efficient. Use `NCHAR` or `NVARCHAR` when dealing with Unicode data.






# 📚 Ultimate Guide to SQL Server Stored Procedures 🛠️



## 📌 What is a Stored Procedure?

A Stored Procedure is a set of SQL statements that you can save and reuse. It’s like a **function** in programming that performs a specific task. Here’s what you need to know:

- **Definition**: A Stored Procedure is a set of SQL statements stored in a database.
- **Name**: Each Stored Procedure has a name and is stored in a Relational Database Management System (RDBMS).
- **Reuse**: Once created, it can be reused and shared by multiple programs.

## 📝 Types of Stored Procedures

1. **System Stored Procedures**: Predefined by the system.
2. **User-Defined Stored Procedures**: Created by users.

## 🚀 How to Create a Stored Procedure?

### Example 1: Basic Stored Procedure

```sql
CREATE PROCEDURE sp_GetEmployee
AS
BEGIN
    SELECT Name, Gender FROM EmployeeDetails;
END;
```

**Execution Methods**:
1. Directly execute using `EXEC sp_GetEmployee;`.
2. Execute by writing the procedure name directly.
3. Use `EXEC` command for shorter syntax.

### Example 2: Stored Procedure with a Single Parameter

```sql
CREATE PROCEDURE sp_GetEmployeeByID
    @ID INT
AS
BEGIN
    SELECT * FROM EmployeeDetails WHERE ID = @ID;
END;
```

**Execution**:
```sql
EXEC sp_GetEmployeeByID @ID = 2;
```

### Example 3: Stored Procedure with Multiple Parameters

```sql
CREATE PROCEDURE sp_GetEmployeeByIDAndName
    @ID INT,
    @Name NVARCHAR(50)
AS
BEGIN
    SELECT * FROM EmployeeDetails WHERE ID = @ID AND Name = @Name;
END;
```

**Execution**:
```sql
EXEC sp_GetEmployeeByIDAndName @ID = 2, @Name = 'John Doe';
```

## 📝 Key Points

- **Stored Procedures** are reusable and efficient.
- **System vs. User-Defined**: Know the difference.
- **Parameters**: Can be single or multiple.
- **Execution**: Use `EXEC` command or procedure name directly.





# 📚 SQL Functions vs Stored Procedures: Key Points





## 💡 Key Points

### Stored Procedures 🛠️
- **Definition**: A stored procedure is like a mini-program or a batch of SQL statements that perform actions on the database. It’s a set of SQL statements stored in the database.
- **Database Environment**: Can change the database environment permanently (e.g., insert, update, delete data).
- **Allowed Statements**: Supports `SELECT`, `INSERT`, `UPDATE`, and `DELETE` statements.
- **Execution**: Cannot be executed directly with `SELECT` or `WHERE` clauses.
- **Outputs**: Can return single or multiple outputs.
- **Transaction Handling**: Supports transactions using `BEGIN`, `COMMIT`, and `ROLLBACK`.
- **Error Handling**: Can use `TRY-CATCH` for error handling.

### Functions 🔢
- **Definition**: Functions are also sets of SQL statements but are used primarily for computations and returning computed values.
- **Database Environment**: Cannot change the database environment permanently.
- **Allowed Statements**: Only `SELECT` statements are allowed; `INSERT`, `UPDATE`, and `DELETE` are not allowed.
- **Execution**: Can be called from `SELECT`, `WHERE`, and used within Stored Procedures.
- **Outputs**: Generally returns a single scalar value (computed value).
- **Transaction Handling**: Transactions are not supported.
- **Error Handling**: `TRY-CATCH` is not supported for error handling.

## 🔍 Detailed Differences

- **Execution Context**:
  - **Stored Procedures**: Can execute with `SELECT`, `INSERT`, `UPDATE`, and `DELETE`.
  - **Functions**: Only `SELECT` can be used. Cannot perform data manipulation operations.
  
- **Output**:
  - **Stored Procedures**: Can return multiple outputs.
  - **Functions**: Typically return a single scalar value.

- **Usage**:
  - **Stored Procedures**: Can be used to perform complex operations and changes in the database.
  - **Functions**: Ideal for computations and retrieving single values.

- **Error Handling**:
  - **Stored Procedures**: Supports `TRY-CATCH` blocks for error handling.
  - **Functions**: Does not support `TRY-CATCH` blocks for error handling.

- **Transactions**:
  - **Stored Procedures**: Can handle transactions.
  - **Functions**: Cannot handle transactions.










# 📚 SQL Indexes - Boost Your Query Performance!


## 📌 What You Will Learn:

1. **Introduction to SQL Indexes:**
   - SQL Indexes facilitate quick retrieval of data from a database. This is especially useful when dealing with large tables with millions of records. ⚡
   - SQL Server 2012 introduced the indexing feature, allowing developers to efficiently locate specific data without scanning the entire table.

2. **How Indexes Work:**
   - An index in SQL Server 2012 contains information that allows you to find specific data without scanning through the entire table, improving query performance significantly. 🚀
   - Indexes can be created on both tables and views, similar to how a book's index works. Instead of searching through each page, you can quickly jump to the desired chapter. 📖

3. **Performance Impact of Indexes:**
   - If an index is not present, the query engine has to scan every row in the table (known as a "Table Scan"), which can be time-consuming and affect performance. 🕒
   - The right indexes in the right places can significantly improve the performance of your queries by reducing the time it takes to find the necessary data. 📈

4. **Practical Example:**
   - Imagine you have a table with thousands of rows and you want to retrieve data where the salary is between 10,000 and 22,000. Without an index, SQL Server will have to check each row one by one. But with an index on the salary column, the engine can jump directly to the relevant rows. 🧠

5. **Best Practices:**
   - Always use indexes on large tables where frequent data retrieval is necessary. 📊
   - Indexes should be created based on the specific queries you frequently run to maximize performance. 🛠️
   - Remember, while indexes improve read performance, they can slightly slow down write operations, so use them wisely. 📝


# 📊 **Ultimate Guide To SQL Indexes** 📊



## 🔍 **What Are Indexes?**
Indexes help increase search and select performance in SQL Server. 🌟 They speed up data retrieval in large databases, which can otherwise be slow and inefficient. 🚀

### **Key Points:**
- **Purpose:** Boost search and select performance. 📈
- **Concept:** Use of Balanced Tree Structure (B-Tree) for efficient searching. 🌳
- **Performance Impact:** Significantly reduces query execution time by optimizing data access. ⏱️

## 🛠️ **How Do Indexes Work?**
Indexes use a B-Tree structure to organize data efficiently. Here's a simplified explanation:

1. **Without Indexes:**
   - **Sequential Search:** Scans records one by one, which can be very slow for large datasets. 📉

2. **With Indexes:**
   - **B-Tree Structure:** Uses nodes and branches to quickly locate data. 🌲
   - **Efficient Search:** Reduces the number of records scanned, improving performance. 🏃‍♂️

### **Example:**
- Searching for record 99 in a table of 100 records:
  - **Without Index:** Sequential search checks each record. 🕵️‍♂️
  - **With Index:** B-Tree structure skips irrelevant nodes, quickly locating the desired record. 🎯

## 🚀 **Benefits of Using Indexes**
- **Faster Queries:** Reduces search time significantly. ⚡
- **Efficient Data Retrieval:** Helps in handling large datasets effectively. 📊


# 📚 **Types of Indexes in SQL** 📚


## **🔍 What Are Indexes?**
Indexes are used to speed up query performance by allowing fast retrieval of records from a database table.

## **📊 Types of Indexes in SQL**

### **1. Clustered Index**
- **Definition**: A clustered index determines the physical order of data in a table. There can be only one clustered index per table.
- **Example**: Typically created on the primary key column.
- **Characteristics**:
  - Only one per table.
  - Reorganizes the table data.
  - Fastest for range queries.
  
### **2. Non-Clustered Index**
- **Definition**: A non-clustered index creates a separate structure from the data table that points to the data's location. Multiple non-clustered indexes can be created on a table.
- **Example**: Useful for columns that are often queried but not suitable for clustering.
- **Characteristics**:
  - Multiple non-clustered indexes can exist per table.
  - Does not alter the table data's physical order.
  - Slower for range queries compared to clustered indexes.

## **📝 Key Points**
- **Both indexes use B-Tree structure** to facilitate fast searches. 🌳
- **Clustered Index**: Directly affects the table's physical data storage. 📦
- **Non-Clustered Index**: Points to the data through the clustered index. 🗂️

### **🔑 Important Details**
- **One clustered index** per table vs. **multiple non-clustered indexes**. 
- Clustered index leaf nodes point to actual data rows, while non-clustered index leaf nodes point to clustered index nodes.

## **🔗 Real-Life Analogy**
Imagine a book with an index page that helps you locate specific chapters. Similarly, SQL indexes help quickly locate data within a database table. 📖




# 📊 SQL Server Views Guide

## 📌 What is a View?
A **View** in SQL Server is essentially a saved SQL query. Think of it as a virtual table created by saving a query that you frequently use. 

- **Virtual Table**: A view can be considered as a virtual table. It doesn't physically store data but presents it from one or more tables. 🗂️
- **Security**: Views help in implementing row and column-level security. For example, you can create a view to limit the data that users can see or hide sensitive columns like salary. 🔒

## 🛠️ Creating a View
Here's a basic syntax to create a view:

```sql
CREATE VIEW [ViewName] AS
SELECT [Column1], [Column2]
FROM [TableName]
WHERE [Condition];
```

### Example
Suppose we have two tables: `Employees` and `Departments`. We can create a view to show employee details along with their department names:

```sql
CREATE VIEW dbo.EmployeeView AS
SELECT e.EmployeeID, e.EmployeeName, d.DepartmentName
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID;
```

## 🛠️ Modifying a View
You can alter an existing view to change its structure or the data it retrieves:

```sql
ALTER VIEW dbo.EmployeeView AS
SELECT e.EmployeeID, e.EmployeeName, d.DepartmentName, e.City
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID;
```

## 🛠️ Using Views for Security
To implement column-level security, you can exclude sensitive columns from the view:

```sql
CREATE VIEW dbo.EmployeeViewSecure AS
SELECT EmployeeID, EmployeeName, Gender, City, DepartmentID
FROM Employees;
```

In this example, the `Salary` column is not included in the view, ensuring it's not visible to users accessing this view.

## 🎯 Summary
- **Views** are saved queries that act as virtual tables.
- They are useful for data abstraction, security, and simplifying complex queries.
- Views can be modified or used to enforce security by hiding sensitive data.





# 📚 Ultimate Guide to SQL Triggers


## 📖 What are Triggers?

A **Trigger** is a special kind of stored procedure that automatically executes when a specific event occurs in the database server. 🧩

### ❓ What are Triggers and Why Do We Need Them?

- **Definition**: Triggers are a piece of logic or a set of SQL statements that automatically execute in response to certain events such as INSERT, UPDATE, or DELETE operations.
- **Automatic Execution**: Triggers execute automatically when specified events occur in the database.
- **Types of Events**: Common events include INSERT, UPDATE, and DELETE.
- **Difference from Stored Procedures**: Unlike stored procedures, triggers are not manually invoked but are tied to specific database operations.

### Types of Triggers

1. **DML Triggers**: Fired in response to Data Manipulation Language (DML) events like `INSERT`, `UPDATE`, and `DELETE`. 🔄
2. **DDL Triggers**: Triggered by Data Definition Language events (e.g., creating or altering a table). 📊
3. **Logon Triggers**: Executed when a user logs into the database. 🔐

### DML Triggers Explained

**DML Triggers** respond to events like:

- **INSERT**: Adds new data.
- **UPDATE**: Modifies existing data.
- **DELETE**: Removes data.

#### How to Use

1. **Create Trigger**: Define your trigger using `CREATE TRIGGER`.
2. **Specify Table**: Apply it to the relevant table.
3. **Define Trigger Type**: Choose the event (e.g., `AFTER INSERT`).
4. **Write Trigger Logic**: Specify what should happen when the trigger fires.

For instance, if you want a trigger to execute after inserting a row into a table, you would create an `AFTER INSERT` trigger. Here’s a basic example:

```sql
CREATE TRIGGER TR_Student_After_Insert
ON Tbl_Student
AFTER INSERT
AS
BEGIN
    PRINT 'Something happened to the Student table'
END;
```

### Practical Example

Suppose we have a table named `Tbl_Student` with columns like `ID`, `Name`, `Gender`, `Class`, and `Fees`. If you insert a new row, a trigger could print a message:

```sql
CREATE TRIGGER TR_Student_After_Insert
ON Tbl_Student
AFTER INSERT
AS
BEGIN
    PRINT 'New row inserted into Tbl_Student'
END;
```

**For `DELETE` Events**: Similarly, you can create a trigger for `AFTER DELETE` to handle post-deletion actions.

```sql
CREATE TRIGGER TR_Student_After_Delete
ON Tbl_Student
AFTER DELETE
AS
BEGIN
    PRINT 'A row has been deleted from Tbl_Student'
END;
```

### Magical Tables

- **Inserted Table**: Holds newly inserted rows during an `INSERT` trigger.
- **Deleted Table**: Contains rows that are deleted during a `DELETE` trigger.

You can query these tables to get the data that triggered the event:

```sql
SELECT * FROM Inserted;
SELECT * FROM Deleted;
```

### What are the Types of Triggers in SQL?

1. **AFTER Triggers** (also known as FOR Triggers)
   - **Definition**: AFTER triggers are executed after the specified event (INSERT, UPDATE, DELETE) has occurred.
   - **Behavior**: They perform actions after the database operation is completed.
   - **Example**: An `AFTER INSERT` Trigger executes after a new row is inserted into a table, such as updating related records or logging changes.

2. **INSTEAD OF Triggers**
   - **Definition**: INSTEAD OF triggers replace the action of the specified event. Instead of performing the default action, they execute their own logic.
   - **Behavior**: They intercept the event and replace the default action with custom operations.
   - **Example**: An `INSTEAD OF DELETE` Trigger executes instead of the default DELETE operation, which can be used to perform custom deletion logic or prevent deletion.






# 📚 DML vs DDL Triggers


## 🔍 What You’ll Learn

- **DML Triggers**: 
  - **What Are They?** 🧩
    - Triggered by **INSERT, UPDATE, DELETE** operations on a table.
  - **Execution Timing** ⏰
    - Can be executed **before** or **after** the DML operation.
  - **Usage** 🛠️
    - Enforces business rules when data is modified in tables and views.

- **DDL Triggers**:
  - **What Are They?** 🧩
    - Triggered by **CREATE, ALTER, DROP** operations on database objects (e.g., tables, views, procedures).
  - **Execution Timing** ⏰
    - Executed **after** the DDL operation. **Cannot** be executed before.
  - **Usage** 🛠️
    - Used to check and control database operations, ensuring consistency and integrity.

## 📊 Key Differences

- **Full Forms** 📜
  - DML: **Data Manipulation Language**
  - DDL: **Data Definition Language**

- **Events** ⚙️
  - **DML**: INSERT, UPDATE, DELETE
  - **DDL**: CREATE, ALTER, DROP

- **Trigger Scope** 🌐
  - **DML Triggers**: Defined at the table level.
  - **DDL Triggers**: Defined at either the database or server level.

- **Execution** 🔄
  - **DML Triggers**: Can be executed before or after the DML event.
  - **DDL Triggers**: Always executed after the DDL event.

## 📝 Example Usage

- **DML Trigger Example**:
  - **Use Case**: Automatically log changes when a record is updated.
  
- **DDL Trigger Example**:
  - **Use Case**: Send a notification when a new table is created.



# 📚 Database Backup & Restore Guide



## 🚀 Backup Process
1. **Open SQL Server Management Studio (SSMS)**
   - Navigate to the **Databases** folder. 🔍
   - Right-click on the database you want to back up. ➡️
   - Select **Tasks** → **Back Up**. 💾

2. **Configure Backup Settings**
   - **General Tab**:
     - Choose the **Full** recovery model. 📂
     - Ensure **Backup Component** is set to **Database**.
   - **Destination**:
     - Add a backup location using the **Add** button. 📁
     - Choose a folder (e.g., `D:\SQL_DB_Backup`) and name your backup file. 🎨
     - Optionally, include the date in the filename (e.g., `DB_Backup_2024-08-28`).

3. **Finalize Backup**
   - Click **OK** to start the backup. ✅
   - Verify the backup file is created in your selected folder. 🗂️

## 🔄 Restore Process
1. **Open SSMS and Select Restore**
   - Right-click on the **Databases** folder. ➡️
   - Select **Restore Database**. 🔄

2. **Configure Restore Settings**
   - **General Tab**:
     - Choose **Device** and add the backup file from your storage location. 📂
   - **Files Tab**:
     - Check the **Relocate All Files** option.
     - Adjust file locations if needed.

3. **Complete Restore**
   - Rename the database if necessary (e.g., `DB_Restore`). ✏️
   - Click **OK** to restore the database. ✅
   - Confirm that the restore is successful by checking your databases. 🗂️


























# 📚 SQL Interview Questions & Answers 🚀


## 📊 Table Structure

Here’s a glimpse of the table we’re working with:

| Candidate ID | Skills                |
|--------------|------------------------|
| 1001         | Python, JavaScript     |
| 1002         | ASP.NET, SQL, JavaScript |
| 1003         | ASP.NET, JavaScript    |
| 1004         | React, JavaScript      |
| 1005         | ASP.NET, SQL, JavaScript |

We need to retrieve candidates who have all three required skills: ASP.NET, SQL, and JavaScript. 🔍

## 📝 SQL Query

Here’s how to write the SQL query to achieve this:

```sql
SELECT CandidateID, COUNT(Skills) AS SkillCount
FROM Candidates
WHERE Skills IN ('ASP.NET', 'SQL', 'JavaScript')
GROUP BY CandidateID
HAVING COUNT(Skills) = 3
ORDER BY CandidateID ASC;
```

### 🔍 Explanation

- **SELECT CandidateID, COUNT(Skills) AS SkillCount**: Selects the candidate ID and counts the number of skills.
- **FROM Candidates**: Specifies the table from which to retrieve data.
- **WHERE Skills IN ('ASP.NET', 'SQL', 'JavaScript')**: Filters the rows to include only those with the required skills.
- **GROUP BY CandidateID**: Groups the results by candidate ID.
- **HAVING COUNT(Skills) = 3**: Ensures that only candidates with all three skills are included.
- **ORDER BY CandidateID ASC**: Sorts the results by candidate ID in ascending order.




# 📊 **Find Monthly Sales in Descending Order** 📈



### 📝 **Overview**


1. **Understand the task**: Extract monthly sales from a table.
2. **Write the SQL query**: To gather sales data in descending order.
3. **Execute and verify the results**.

### 🧩 **Task Explanation**

- **Objective**: Find monthly sales and present them in descending order. 📅
- **Table Example**: A product sales table with columns like `ProductID`, `ProductName`, `Price`, `OrderDate`, and `Sales`.

### 📂 **Table Structure**

For simplicity, we'll use a single table:
- `ProductSales`
  - `ProductID`
  - `ProductName`
  - `Price`
  - `OrderDate`
  - `Sales`

Alternatively, you could split this into two tables: `Products` and `Sales`, linked by primary and foreign keys. 🔗

### 🔍 **Query Breakdown**

1. **Extract Year and Month**:
   ```sql
   SELECT 
       YEAR(OrderDate) AS Year, 
       MONTH(OrderDate) AS Month, 
       SUM(Sales) AS TotalSales
   FROM 
       ProductSales
   GROUP BY 
       YEAR(OrderDate), 
       MONTH(OrderDate)
   ORDER BY 
       TotalSales DESC;
   ```

   - `YEAR(OrderDate)`: Extracts the year from the `OrderDate`.
   - `MONTH(OrderDate)`: Extracts the month from the `OrderDate`.
   - `SUM(Sales)`: Calculates the total sales for each month.
   - `GROUP BY`: Groups results by year and month.
   - `ORDER BY TotalSales DESC`: Sorts the results in descending order based on total sales.

2. **Execute the Query**:
   - Run the query in SQL Server Management Studio to get the desired output. 📊

### 📈 **Output Example**

The result will show monthly sales in descending order, like so:
- **March**: $5000
- **February**: $4000
- **January**: $3000

### ⚙️ **Additional Tips**

- **Skip the Year Column**: If the year is the same (e.g., 2023), you can skip it to simplify the output.
- **Adjust for Different Periods**: You can modify the query to find yearly sales or sales for different periods. 📅










# 📊 SQL Writing Interview Questions



### 📝 What You'll Learn:
1. **Finding Department-wise Highest Salary** 💰
2. **Finding Department-wise Lowest Salary** 📉
3. **Counting Employees Department-wise** 📋

### 🔍 Detailed Breakdown:

1. **Find Department-wise Highest Salary**:
   - Use `GROUP BY` with `MAX` function to get the highest salary for each department.
   - Example Query:
     ```sql
     SELECT Department_ID, MAX(Salary) AS Max_Salary
     FROM Employees
     GROUP BY Department_ID;
     ```

2. **Find Department-wise Lowest Salary**:
   - Similar to the highest salary, but use `MIN` function.
   - Example Query:
     ```sql
     SELECT Department_ID, MIN(Salary) AS Min_Salary
     FROM Employees
     GROUP BY Department_ID;
     ```

3. **Count Employees Department-wise**:
   - Use `COUNT` function to get the number of employees in each department.
   - Example Query:
     ```sql
     SELECT Department_ID, COUNT(*) AS Employee_Count
     FROM Employees
     GROUP BY Department_ID;
     ```

### 📌 Key Points:
- **Use `GROUP BY`** to group data by departments.
- **Aggregate Functions** like `MAX`, `MIN`, and `COUNT` are crucial.
- **Order Results** if needed using `ORDER BY`.





# 📚 SQL Interview Questions & Answers: Display Alternate Records


### 🧩 Key Points Covered:
1. **Understanding Alternate Records**:
   - What are alternate records? 
   - Examples: Even-numbered and odd-numbered records.

2. **Using SQL Functions**:
   - **MOD Function**: For databases like PostgreSQL, MySQL, and Oracle, use the `MOD` function to find remainders.
   - **ROW_NUMBER Function**: In Oracle, you can also use the `ROW_NUMBER` function to achieve the same result.

3. **Database Specific Implementations**:
   - **PostgreSQL/MySQL/Oracle**: Use `MOD` function to check for remainders when dividing by 2.
   - **SQL Server**: Utilize the `MOD` operator for alternate records.

4. **SQL Query Example**:
   - To get **even-numbered records**: 
     ```sql
     SELECT * 
     FROM Employees
     WHERE MOD(EmployeeID, 2) = 0;
     ```
   - To get **odd-numbered records**:
     ```sql
     SELECT * 
     FROM Employees
     WHERE MOD(EmployeeID, 2) = 1;
     ```

5. **Hands-On Example**:
   - Show a table with records and demonstrate how to fetch even and odd-numbered records using the `MOD` function.











# 📚 SQL Writing Interview Questions - Essential Guide


## 1. Copy All Rows from One Table to Another 📋

**Question:** How do you copy all rows from one table into another using SQL query?

**Query:**
```sql
SELECT * INTO NewTable FROM OriginalTable;
```
This command creates a new table `NewTable` and copies all rows from `OriginalTable` into it.

---

## 2. Copy Column Structure of a Table to Another Table 🏗️

**Question:** How can you copy the column structure of a table into another table using SQL query?

**Query:**
```sql
SELECT * INTO NewTable FROM OriginalTable WHERE 1 = 0;
```
This query copies the structure of `OriginalTable` into `NewTable` without copying any data.

---

## 3. Retrieve First and Last Records from a Table 🗂️

**Question:** Write a SQL query to display the first and last record from the table.

**Query for First Record:**
```sql
SELECT TOP 1 * FROM TableName ORDER BY ColumnName ASC;
```

**Query for Last Record:**
```sql
SELECT TOP 1 * FROM TableName ORDER BY ColumnName DESC;
```
Replace `TableName` with your table's name and `ColumnName` with the column used to order the records.

---

## 4. Retrieve the Last N Records from a Table 🔢

**Question:** How do you retrieve the last three records from a table?

**Query:**
```sql
SELECT * FROM TableName ORDER BY ColumnName DESC LIMIT 3;
```
Replace `TableName` and `ColumnName` as needed. Adjust the `LIMIT` value to fetch the desired number of records.










## 📝 Scenarios and Queries

### 1. 🔍 Find Employees with the Same Name and Email
- **Query:**
  ```sql
  SELECT Name, Email
  FROM Employees
  GROUP BY Name, Email
  HAVING COUNT(*) > 1;
  ```
- **Explanation:** This query groups the employees by `Name` and `Email`, and then uses the `HAVING` clause to filter out only those groups that have more than one employee, indicating that they have the same name and email.

### 2. 🎯 Find Top 10 Employees with Odd Numbered Employee IDs
- **Query:**
  ```sql
  SELECT TOP 10 *
  FROM Employees
  WHERE EmployeeID % 2 <> 0
  ORDER BY EmployeeID ASC;
  ```
- **Explanation:** This query filters employees with odd-numbered `EmployeeID` using the modulo operator (`%`). The `TOP 10` clause is used to limit the result to the first 10 records, and `ORDER BY EmployeeID ASC` ensures that the results are sorted in ascending order.

### 3. 🗓️ Extract the Quarter from a Date
- **Query:**
  ```sql
  SELECT DATEPART(QUARTER, YourDateColumn) AS Quarter
  FROM YourTable;
  ```
- **Explanation:** This query uses the `DATEPART` function to extract the quarter from a date column. Replace `YourDateColumn` with the name of your date column and `YourTable` with your table name. The result will give the quarter number (1 to 4) for each date.










# 📘 SQL Custom Sorting Tutorial





## 📊 Problem Statement
Given a table with a `Date` column, we want to sort the data by months in the natural calendar order (January to December) rather than alphabetical or numerical order.

## 🛠️ Steps to Achieve Custom Sorting
### 1. **Create the Table**
   - A table `SalesDetails` with columns `Date` and `Sales`.

```sql
CREATE TABLE SalesDetails (
    Date DATE,
    Sales INT
);
```

### 2. **Extract the Month Name**
   - Use the `DATENAME()` function to extract the month name from the `Date` column.

```sql
SELECT 
    DATENAME(MONTH, Date) AS MonthName,
    MONTH(Date) AS MonthNumber,
    Sales
FROM SalesDetails;
```

### 3. **Apply Custom Sorting**
   - Sort the results by the month number to ensure the data is displayed in the correct order (January to December).

```sql
SELECT 
    DATENAME(MONTH, Date) AS MonthName,
    Sales
FROM SalesDetails
ORDER BY 
    MONTH(Date) ASC;
```

## 💻 Final Query
```sql
SELECT 
    DATENAME(MONTH, Date) AS MonthName,
    Sales
FROM SalesDetails
ORDER BY 
    MONTH(Date) ASC;
```

## 🎯 Outcome
- The result will display the sales data sorted by month in the natural calendar order, from January to December.




### 🚀 Ultimate Guide to SQL Server Constraints using ALTER Command



#### 📌 Key Points Covered:

1. **SQL Constraints Overview**:
   - **NOT NULL**: Ensures a column cannot have a NULL value.
   - **DEFAULT**: Provides a default value for a column.
   - **CHECK**: Ensures all values in a column meet a specific condition.
   - **PRIMARY KEY**: Uniquely identifies each record in a table.
   - **FOREIGN KEY**: Ensures referential integrity between tables.

2. **Adding Constraints**:
   - **NOT NULL**: Example command to add a NOT NULL constraint to the `voter_name` column.
     ```sql
     ALTER TABLE voter
     ALTER COLUMN voter_name VARCHAR(50) NOT NULL;
     ```
   - **UNIQUE**: Ensures all values in a column are unique. Example command to add a UNIQUE constraint to the `voter_id` column.
     ```sql
     ALTER TABLE voter
     ADD CONSTRAINT unique_voter_id UNIQUE (voter_id);
     ```

3. **Dropping Constraints**:
   - **Removing NOT NULL**: To allow NULL values in a column previously set to NOT NULL.
     ```sql
     ALTER TABLE voter
     ALTER COLUMN voter_name VARCHAR(50) NULL;
     ```
   - **Dropping UNIQUE**: Example command to remove a UNIQUE constraint.
     ```sql
     ALTER TABLE voter
     DROP CONSTRAINT unique_voter_id;
     ```

4. **Handling Errors**:
   - **Inserting NULL into NOT NULL Column**: You’ll get an error if you try to insert NULL into a column with a NOT NULL constraint.
   - **Inserting Duplicate Values into Unique Column**: You’ll get a violation error if you try to insert a duplicate value into a column with a UNIQUE constraint.

5. **Important Notes**:
   - You can only add a NOT NULL constraint if there are no existing NULL values in the column.
   - UNIQUE constraints prevent duplicate values but can be dropped if needed.


