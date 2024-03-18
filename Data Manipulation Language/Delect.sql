-- Delete rows from a table based on a specified condition
DELETE FROM table_name WHERE condition;

-- Delete rows from the "Pron" table where the "PID" column values are 3, 4, 5, or 6
DELETE FROM Pron WHERE PID IN (3, 4, 5, 6);
