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