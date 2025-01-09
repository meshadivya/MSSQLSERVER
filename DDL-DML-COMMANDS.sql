------------------------------------------------------------Database Commands----------------------------------------------------------------------
SELECT * FROM sys.databases;			 -- to list all available databases

create database MSSQLSERVER;			 -- creates new database

use MSSQLSERVER;						 --to get into specific database

drop database MSSQLSERVER				 --to drop the database

ALTER DATABASE [old_database_name]		 --Modifying database name
MODIFY NAME = [new_database_name];

------------------------------------------------------------Table Commands----------------------------------------------------------------------
------------------------------------------------------------Create Table Syntax----------------------------------------------------------------------
CREATE TABLE Employees (
  EmployeeID INT,
  Name VARCHAR(50),
  Department VARCHAR(50),
  Salary DECIMAL(10, 2),
  HireDate DATE
);

---------------------------------------------------------------CREATE TABLE WITH CONTRAINTS-------------------------------------------------------
CREATE TABLE Employees (
  EmployeeID INT PRIMARY KEY IDENTITY(1,1),
  Name VARCHAR(50) NOT NULL,
  Department VARCHAR(50) NOT NULL,
  Salary DECIMAL(10, 2) NOT NULL,
  HireDate DATE NOT NULL,
  CONSTRAINT chk_Salary CHECK (Salary > 0)
);


------------------------------------------------------------Drop Table Syntax----------------------------------------------------------------------
Drop table Employees;

------------------------------------------------------------Truncate Table syntax----------------------------------------------------------------------

Truncate Table Employees;

------------------------------------------------------------ Alter Table Syntax----------------------------------------------------------------------

Alter table employees add gender varchar(10);  -- To add new column into table structure

Alter table employees alter column gender char;  --To change datatype of the column

Alter table employees drop column gender;   -- To drop the column from table structure

EXECUTE sp_rename 'MSSQLSERVER.Gender' , 'NEW_Column_Gender', 'Column';  -- To rename column name

EXECUTE sp_rename 'MSSQLSERVER' , 'SQLSERVER';  -- To rename table name

------------------------------------------------------------ INSERT SYNTAX------------------------------------------------------------------------

INSERT INTO EMPLOYEES( EmployeeID, Name, Department, Salary, HireDate) VALUES 
(1, 'ABC', 'ECE', 50000,'2021-01-01')
(2, 'DEF', 'ECE', 50000,'2021-01-01');

------------------------------------------------------------ UPDATE SYNTAX------------------------------------------------------------------------

UPDATE Employees SET Salary = 60000 WHERE EmployeeID = 1;

UPDATE Employees SET Salary = 50000, Department = 'HR' WHERE EmployeeID = 1;  --UPDATING MULTIPLE COLUMN VALUES 

------------------------------------------------------------ DELETE SYNTAX------------------------------------------------------------------------

DELETE FROM Employees WHERE EmployeeID = 1; 

DELETE FROM Employees;  -- DELETES ALL ROWS




