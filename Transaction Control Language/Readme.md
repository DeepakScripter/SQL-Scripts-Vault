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
