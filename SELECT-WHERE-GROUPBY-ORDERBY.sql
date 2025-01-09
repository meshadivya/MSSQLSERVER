

CREATE TABLE Employee (
    EmpID INT,
    Name VARCHAR(255),
    Department VARCHAR(255),
    Salary DECIMAL(10, 2),
    Age INT,
    City VARCHAR(255)
);

INSERT INTO Employee (EmpID, Name, Department, Salary, Age, City)
VALUES 
(1, 'John Smith', 'Sales', 50000.00, 30, 'New York'),
(2, 'Jane Doe', 'Marketing', 60000.00, 28, 'Chicago'),
(3, 'Bob Johnson', 'IT', 70000.00, 35, 'Los Angeles'),
(4, 'Maria Rodriguez', 'HR', 55000.00, 32, 'Houston'),
(5, 'David Lee', 'Finance', 65000.00, 40, 'San Francisco'),
(6, 'Emily Chen', 'Sales', 45000.00, 25, 'New York'),
(7, 'Kevin White', 'Marketing', 58000.00, 38, 'Chicago'),
(8, 'Sarah Taylor', 'IT', 72000.00, 42, 'Los Angeles'),
(9, 'James Davis', 'HR', 52000.00, 29, 'Houston'),
(10, 'Rebecca Brown', 'Finance', 68000.00, 45, 'San Francisco'),
(11, 'Michael Brown', 'Sales', 48000.00, 26, 'New York'),
(12, 'Laura Martin', 'Marketing', 59000.00, 39, 'Chicago'),
(13, 'Tom Harris', 'IT', 75000.00, 43, 'Los Angeles'),
(14, 'Julia Hall', 'HR', 56000.00, 33, 'Houston'),
(15, 'Daniel Lee', 'Finance', 69000.00, 46, 'San Francisco'),
(16, 'Olivia Thompson', 'Sales', 46000.00, 27, 'New York'),
(17, 'William White', 'Marketing', 60000.00, 40, 'Chicago'),
(18, 'Amanda Johnson', 'IT', 78000.00, 44, 'Los Angeles'),
(19, 'Matthew Davis', 'HR', 57000.00, 34, 'Houston'),
(20, 'Elizabeth Brown', 'Finance', 70000.00, 47, 'San Francisco');



---------------------------------------------------------- Select clause----------------------------------------------------------------------------

SELECT * FROM Employees;    --selects all columns from the table

SELECT EmployeeID, Name from EMPLOYEES   -- selects only specific columns from the table

---------------------------------------------------------- Where clause----------------------------------------------------------------------------

SELECT * FROM Employees WHERE Department = 'HR'; -- SIMPLE WHERE CLAUSE

SELECT * FROM Employees WHERE Salary <> 50000; -- WHERE WITH NOT EQUAL TO

SELECT * FROM Employees WHERE Salary > 50000; -- WHERE WITH GREATER THAN 

SELECT * FROM Employees WHERE Salary < 50000; -- WHERE WITH LESS THAN

SELECT * FROM Employees WHERE Salary >= 50000; -- WHERE WITH GREATER THAN OR EQUAL TO

SELECT * FROM Employees WHERE Salary <= 50000; -- WHERE WITH LESS THAN OR EQUAL TO

SELECT * FROM Employees WHERE Salary BETWEEN 40000 AND 60000; -- WHERE WITH BETWEEN 

SELECT * FROM Employees WHERE Salary NOT BETWEEN 40000 AND 60000; -- WHERE WITH  NOT BETWEEN

SELECT * FROM Employees WHERE Name LIKE 'J%';  -- WHERE WITH PATTERN MATCHING

SELECT * FROM Employees WHERE Name LIKE '%John%'; -- WHERE WITH PATTERN MATCHING

SELECT * FROM Employees WHERE Name LIKE '%son'; -- WHERE WITH PATTERN MATCHING

SELECT * FROM Employees WHERE Department IS NULL; -- WHERE WITH NULL

SELECT * FROM Employees WHERE Department IS NOT NULL;  -- WHERE WITH NOT NULL

SELECT * FROM Employees WHERE Department = 'HR' AND Salary > 50000; -- WHERE WITH AND CLAUSE 

SELECT * FROM Employees WHERE Department = 'HR' OR Salary > 50000; --WHERE WITH OR CLAUSE

SELECT * FROM Employees WHERE Salary > (SELECT AVG(Salary) FROM Employees); --WHERE WITH SUBQUERY

---------------------------------------------------------- Group By clause----------------------------------------------------------------------------


--Simple GROUP BY


SELECT DepartmentID, AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY DepartmentID;


--Multiple Column GROUP BY


SELECT DepartmentID, JobTitle, AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY DepartmentID, JobTitle;


--GROUP BY with HAVING Clause


SELECT DepartmentID, AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY DepartmentID
HAVING AVG(Salary) > 50000;


--GROUP BY with ORDER BY Clause


SELECT DepartmentID, AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY DepartmentID
ORDER BY AverageSalary DESC;


--GROUP BY with Aggregate Functions


SELECT Department, 
       COUNT(*) AS NumberOfEmployees, 
       SUM(Salary) AS TotalSalary, 
       AVG(Salary) AS AverageSalary, 
       MAX(Salary) AS MaxSalary, 
       MIN(Salary) AS MinSalary
FROM Employees
GROUP BY DepartmentID;


---------------------------------------------------------- ORDER By clause----------------------------------------------------------------------------


--Ascending Order


SELECT * FROM Employees
ORDER BY Name ASC;


--Descending Order


SELECT * FROM Employees
ORDER BY Salary DESC;


--Multiple Column ORDER BY


SELECT * FROM Employees
ORDER BY DepartmentID ASC, Salary DESC;


--ORDER BY with TOP Clause


SELECT TOP 10 * FROM Employees
ORDER BY Salary DESC;

--ORDER BY with OFFSET FETCH NEXT

SELECT * FROM EMPLOYEES
ORDER BY SALARY DESC 
OFFSET 0 ROWS
FETCH NEXT 2 ROWS ONLY;
