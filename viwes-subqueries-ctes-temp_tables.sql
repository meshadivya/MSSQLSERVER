-------------------------------------------------------------views---------------------------------------------------------------------------------
CREATE VIEW EmployeeSalaryView AS
SELECT Name, Salary
FROM Employees;

SELECT * FROM EmployeeSalaryView;


-----------------------------------------------------------Subqueries------------------------------------------------------------------------------

--Single-Row Subquery


SELECT *
FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees);


--Multiple-Row Subquery


SELECT *
FROM Employees
WHERE Department IN (SELECT DepartmentID FROM Departments WHERE DepartmentName = 'Sales');


--Correlated Subquery


SELECT *
FROM Employees E
WHERE Salary > (SELECT AVG(Salary) FROM Employees WHERE Department = E.Department);


---------------------------------------------------------Temporary Tables---------------------------------------------------------------------------

CREATE TABLE #EmployeeTemp
(
    EmployeeID INT,
    Name VARCHAR(50),
    Salary DECIMAL(10, 2)
);

INSERT INTO #EmployeeTemp
SELECT EmployeeID, Name, Salary
FROM Employees;


SELECT * FROM #EmployeeTemp;


------------------------------------------------------Common Table Expressions (CTEs)---------------------------------------------------------------

--Non-Recursive CTE


WITH EmployeeCTE AS
(
    SELECT Name, Salary
    FROM Employees
)
SELECT * FROM EmployeeCTE;


--Recursive CTE


WITH EmployeeHierarchy AS
(
    SELECT EmployeeID, Name, ManagerID, 0 AS Level
    FROM Employees
    WHERE ManagerID IS NULL
    UNION ALL
    SELECT E.EmployeeID, E.Name, E.ManagerID, Level + 1
    FROM Employees E
    INNER JOIN EmployeeHierarchy M ON E.ManagerID = M.EmployeeID
)
SELECT * FROM EmployeeHierarchy;
