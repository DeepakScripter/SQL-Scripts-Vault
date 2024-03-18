BEGIN TRANSACTION;

-- Inserting values into the Prod table
INSERT INTO Prod VALUES (1, 'CHAR', 500, 101);
-- Creating a savepoint R1
SAVEPOINT R1;

-- Inserting values into the Prod table
INSERT INTO Prod VALUES (2, 'PEN', 2000);
-- Creating a savepoint R2
SAVEPOINT R2;

-- Committing the transaction
COMMIT;

-- Rolling back to savepoint R1
ROLLBACK TO R1;
