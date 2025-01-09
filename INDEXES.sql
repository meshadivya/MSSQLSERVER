---------------------------------------------------------------INDEXES Syntaxes-----------------------------------------------------------------------------
---------------------------------------------------------------CLUSTERED INDEX---------------------------------------------------------------------
CREATE CLUSTERED INDEX idx_EmployeeID 
ON Employees (EmployeeID); -- ONLY ONE PER TABLE 


---------------------------------------------------------------NON CLUSTERED INDEX---------------------------------------------------------------------

CREATE NONCLUSTERED INDEX idx_Name 
ON Employees (Name);      --CAN HAVE MANY

CREATE NONCLUSTERED INDEX idx_Name_Department 
ON Employees (Name, Department);








