---------------------------------------------------------------------------------------------------Table---------------------------------------------------------------------------------------------------------------
CREATE TABLE Employees (
    EmpID INT,
    Name VARCHAR(255),
    DepartmentID VARCHAR(255),
    Salary DECIMAL(10, 2),
    Age INT,
    City VARCHAR(255)
);

INSERT INTO Employees (EmpID, Name, DepartmentID, Salary, Age, City)
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


------------------------------------------------ Window Functions-----------------------------------------------------------------------------------

--Ranking Functions

--ROW_NUMBER()

SELECT *, ROW_NUMBER() OVER (ORDER BY Salary DESC) AS RowNum
FROM Employees;

SELECT *, ROW_NUMBER() OVER (PARTITION BY DEPARTMENTID ORDER BY Salary DESC) AS RowNum
FROM Employees;

--RANK()


SELECT *,
RANK() OVER (ORDER BY Salary DESC) AS Rank
FROM Employees;

SELECT *,
RANK() OVER (PARTITION BY DEPARTMENTID ORDER BY Salary DESC) AS Rank
FROM Employees;



--DENSE_RANK()


SELECT *, 
DENSE_RANK() OVER (ORDER BY Salary DESC) AS DenseRank
FROM Employees;

SELECT *,
DENSE_RANK() OVER (PARTITION BY DEPARTMENTID ORDER BY Salary DESC) AS DenseRank
FROM Employees;


----------------------------------------------------------Aggregate Window Functions-----------------------------------------------------------------

--SUM()


SELECT Name, Salary,
       SUM(Salary) OVER () AS TotalSalary
FROM Employees;


--SUM() WITH PARTITION BY AND ORDER BY
SELECT Name, Salary,
       SUM(Salary) OVER (PARTITION BY DEPARTMENTID ORDER BY SALARY DESC) AS TotalSalary
FROM Employees;


--AVG()


SELECT Name, Salary,
       AVG(Salary) OVER () AS AverageSalary
FROM Employees;

--AVG() WITH PARTITION BY AND ORDER BY
SELECT Name, Salary,
       AVG(Salary) OVER (PARTITION BY DEPARTMENTID ORDER BY SALARY DESC) AS AverageSalary
FROM Employees;



--MAX()


SELECT Name, Salary,
       MAX(Salary) OVER () AS MaxSalary
FROM Employees;

--MAX() WITH PARTITION BY AND ORDER BY
SELECT Name, Salary,
       MAX(Salary) OVER (PARTITION BY DEPARTMENTID ORDER BY SALARY DESC) AS MaxSalary
FROM Employees;



--MIN()


SELECT Name, Salary,
       MIN(Salary) OVER () AS MinSalary
FROM Employees;

--MIN() WITH PARTITION BY AND ORDER BY
SELECT Name, Salary,
       MIN(Salary) OVER (PARTITION BY DEPARTMENTID ORDER BY SALARY DESC) AS MinSalary
FROM Employees;


--COUNT()


SELECT Name, Salary,
       COUNT(*) OVER() AS Count
FROM Employees


--COUNT() WITH PARTITION BY AND ORDER BY
SELECT Name, Salary,
       COUNT(Salary) OVER (PARTITION BY DEPARTMENTID ORDER BY SALARY DESC) AS COUNTSalary
FROM Employees;



------------------------------------------------------------Navigation Window Functions-----------------------------------------------------------

--LAG()


SELECT Name, Salary,
       LAG(Salary, 1, 0) OVER (ORDER BY EmployeeID) AS PrevSalary
FROM Employees;


--LAG() with Partition By


SELECT Name, Salary,
       LAG(Salary, 1, 0) OVER (PARTITION BY DepartmentID ORDER BY EmployeeID) AS PrevSalary
FROM Employees;


--LEAD()


SELECT Name, Salary,
       LEAD(Salary, 1, 0) OVER (ORDER BY EmployeeID) AS NextSalary
FROM Employees;


--LEAD() with Partition By


SELECT Name, Salary,
       LEAD(Salary, 1, 0) OVER (PARTITION BY DepartmentID ORDER BY EmployeeID) AS NextSalary
FROM Employees;


--------------------------------------------------------Window Frames-----------------------------------------------------------------------------

--ROWS


SELECT Name, Salary,
       SUM(Salary) OVER (ORDER BY EmpID ROWS 2 PRECEDING) AS SumSalary
FROM Employees;


--RANGE


SELECT Name, Salary,
       SUM(Salary) OVER (ORDER BY Salary RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS CumulativeSum
FROM Employees;
