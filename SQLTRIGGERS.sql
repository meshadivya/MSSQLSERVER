/*
Trigger

A trigger is a stored procedure that automatically executes when a specific event occurs.
*/

--Creating a Trigger


CREATE TRIGGER trigger_name
ON table_name
FOR/AFTER {INSERT, UPDATE, DELETE}
AS
BEGIN
    -- trigger code
END;


--Example:


CREATE TRIGGER trg_PreventDelete
ON Customers
FOR DELETE
AS
BEGIN
    RAISERROR ('Cannot delete customer data!', 16, 1);
    ROLLBACK TRANSACTION;
END;


--Altering a Trigger


ALTER TRIGGER trigger_name
ON table_name
FOR/AFTER {INSERT, UPDATE, DELETE}
AS
BEGIN
    -- modified trigger code
END;


--Example:


ALTER TRIGGER trg_PreventDelete
ON Customers
FOR DELETE
AS
BEGIN
    RAISERROR ('Cannot delete customer data! Contact admin.', 16, 1);
    ROLLBACK TRANSACTION;
END;


--Dropping a Trigger


DROP TRIGGER trigger_name;


--Example:


DROP TRIGGER trg_PreventDelete;
