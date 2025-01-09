---------------------------------------------------------------JOINS--------------------------------------------------------------------------------
CREATE TABLE Employees (
  EmployeeID INT,
  Name VARCHAR(50),
  DepartmentID INT,
  Salary DECIMAL(10, 2)
);

INSERT INTO Employees (EmployeeID, Name, DepartmentID, Salary)
VALUES
  (1, 'John Smith', 1, 50000.00),
  (2, 'Jane Doe', 2, 60000.00),
  (3, 'Bob Johnson', 1, 70000.00),
  (4, 'Maria Rodriguez', 3, 80000.00),
  (5, 'David Lee', 2, 90000.00);



CREATE TABLE Departments (
  DepartmentID INT,
  DepartmentName VARCHAR(50)
);

INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
  (1, 'Sales'),
  (2, 'Marketing'),
  (3, 'IT');



--Inner Join


SELECT E.EmployeeID, E.Name, D.DepartmentName
FROM Employees E
INNER JOIN Departments D
ON E.Department = D.DepartmentID;


--Left Join


SELECT E.EmployeeID, E.Name, D.DepartmentName
FROM Employees E
LEFT JOIN Departments D
ON E.Department = D.DepartmentID;


--Right Join


SELECT E.EmployeeID, E.Name, D.DepartmentName
FROM Employees E
RIGHT JOIN Departments D
ON E.Department = D.DepartmentID;


--Full Outer Join


SELECT E.EmployeeID, E.Name, D.DepartmentName
FROM Employees E
FULL OUTER JOIN Departments D
ON E.Department = D.DepartmentID;


--Self Join


SELECT E1.EmployeeID, E1.Name, E2.ManagerID
FROM Employees E1
INNER JOIN Employees E2
ON E1.ManagerID = E2.EmployeeID;


--Cross Join


SELECT E.EmployeeID, E.Name, D.DepartmentName
FROM Employees E
CROSS JOIN Departments D;



--Inner Join with WHERE, GROUP BY, and ORDER BY


SELECT E.Name, D.DepartmentName, AVG(E.Salary) AS AverageSalary
FROM Employees E
INNER JOIN Departments D
ON E.Department = D.DepartmentID
WHERE E.Salary > 60000
GROUP BY E.Name, D.DepartmentName
ORDER BY AverageSalary DESC;


--Left Join with WHERE, GROUP BY, and ORDER BY


SELECT E.Name, D.DepartmentName, AVG(E.Salary) AS AverageSalary
FROM Employees E
LEFT JOIN Departments D
ON E.Department = D.DepartmentID
WHERE E.Salary > 60000
GROUP BY E.Name, D.DepartmentName
ORDER BY AverageSalary DESC;


--Right Join with WHERE, GROUP BY, and ORDER BY


SELECT E.Name, D.DepartmentName, AVG(E.Salary) AS AverageSalary
FROM Employees E
RIGHT JOIN Departments D
ON E.Department = D.DepartmentID
WHERE E.Salary > 60000
GROUP BY E.Name, D.DepartmentName
ORDER BY AverageSalary DESC;


--Full Outer Join with WHERE, GROUP BY, and ORDER BY


SELECT E.Name, D.DepartmentName, AVG(E.Salary) AS AverageSalary
FROM Employees E
FULL OUTER JOIN Departments D
ON E.Department = D.DepartmentID
WHERE E.Salary > 60000
GROUP BY E.Name, D.DepartmentName
ORDER BY AverageSalary DESC;






