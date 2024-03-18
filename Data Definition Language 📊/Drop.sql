-- Drop the "employees" table
DROP TABLE employees;

-- To recover a dropped table (only in Oracle)
FLASHBACK TABLE table_name TO BEFORE DROP;

-- To drop a table from the recycle bin (only in Oracle)
PURGE TABLE table_name;

-- To show the contents of the recycle bin (only in Oracle)
SHOW RECYCLEBIN;

-- To show the names of all tables in the database
SHOW TABLES;
