/*
Types of Functions

1. Scalar Functions: Return a single value.
2. Table-Valued Functions: Return a table.
3. Aggregate Functions: Perform calculations on a set of values.
*/

--Creating a Function


CREATE FUNCTION function_name (@parameter data_type)
RETURNS return_data_type
AS
BEGIN
    -- function code
    RETURN return_value;
END;


--Example of a Scalar Function


CREATE FUNCTION GetCustomerName (@CustomerID int)
RETURNS varchar(255)
AS
BEGIN
    DECLARE @Name varchar(255);
    SELECT @Name = Name FROM Customers WHERE CustomerID = @CustomerID;
    RETURN @Name;
END;


--Example of a Table-Valued Function


CREATE FUNCTION GetCustomerOrders (@CustomerID int)
RETURNS TABLE
AS
RETURN (
    SELECT * FROM Orders WHERE CustomerID = @CustomerID
);


--Altering a Function


ALTER FUNCTION function_name (@parameter data_type)
RETURNS return_data_type
AS
BEGIN
    -- modified function code
    RETURN return_value;
END;


--Dropping a Function


DROP FUNCTION function_name;
