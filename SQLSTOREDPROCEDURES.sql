/*
What is a Stored Procedure?

A stored procedure is a pre-compiled SQL program that is stored in a database and can be executed repeatedly.

Benefits of Stored Procedures

1. Improved Performance: Stored procedures are pre-compiled, which improves execution speed.
2. Security: Stored procedures can be used to control access to sensitive data.
3. Code Reusability: Stored procedures can be reused across multiple applications.
4. Error Handling: Stored procedures can handle errors and exceptions more efficiently.
*/

--Creating a Stored Procedure


CREATE PROCEDURE procedure_name
    (@parameter1 data_type, @parameter2 data_type)
AS
BEGIN
    -- SQL statements
END;


--Example


CREATE PROCEDURE GetCustomerOrders
    (@CustomerID int)
AS
BEGIN
    SELECT *
    FROM Orders
    WHERE CustomerID = @CustomerID;
END;


--Executing a Stored Procedure


EXEC procedure_name (@parameter1 = value1, @parameter2 = value2);


--Example


--EXEC GetCustomerOrders @CustomerID = 1;


--Modifying a Stored Procedure


ALTER PROCEDURE procedure_name
    (@parameter1 data_type, @parameter2 data_type)
AS
BEGIN
    -- modified SQL statements
END;


--Dropping a Stored Procedure


DROP PROCEDURE procedure_name;
