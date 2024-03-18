


# SQL DML (Data Manipulation Language) 💼

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


# Differences between DDL and DML in SQL 🔨💼

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


# TRUNCATE, DROP, and DELETE Commands in SQL 🗑️❌🚫

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
