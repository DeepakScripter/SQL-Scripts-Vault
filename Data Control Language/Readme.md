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
