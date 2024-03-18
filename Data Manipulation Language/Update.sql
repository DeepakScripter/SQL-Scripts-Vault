-- UPDATE
-- This statement is used to update existing records in a table.

UPDATE table_name SET column1 = value1, column2 = value2, ... WHERE condition;

-- Update the "PName" and "Price" columns in the "PROD" table where "PID" is 2
UPDATE PROD SET PName = 'HoRlett', Price = 250 WHERE PID = 2;
