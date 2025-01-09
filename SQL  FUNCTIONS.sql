

CREATE TABLE FunctionsDemo (
    ID INT,
    Name VARCHAR(255),
    DateOfBirth DATE,
    Salary DECIMAL(10, 2),
    Description VARCHAR(255)
);

INSERT INTO FunctionsDemo (ID, Name, DateOfBirth, Salary, Description)
VALUES
(1, 'John Doe', '1990-01-01', 50000.00, 'This is a sample description'),
(2, 'Jane Smith', '1995-06-01', 60000.00, 'Another sample description'),
(3, 'Bob Johnson', '1980-03-01', 70000.00, 'Yet another sample description');

SELECT 
    ID,
    Name,
    DateOfBirth,
    Salary,
    Description,
    ASCII(Name) AS ASCII_Name,
    CHARINDEX(' ', Name) AS Space_Index,
    CONCAT(Name, ' - ', Description) AS Concatenated_Column,
    LOWER(Name) AS Lower_Name,
    UPPER(Name) AS Upper_Name,
    REVERSE(Name) AS Reversed_Name,
    REPLACE(Name, ' ', '_') AS Replaced_Name,
    STUFF(Name, CHARINDEX(' ', Name), 1, '_') AS Stuffed_Name,
    ABS(Salary) AS Absolute_Salary,
    CEILING(Salary) AS Ceiling_Salary,
    FLOOR(Salary) AS Floor_Salary,
    POWER(Salary, 2) AS Powered_Salary,
    ROUND(Salary, 2) AS Rounded_Salary,
    SQRT(Salary) AS Square_Root_Salary,
    GETDATE() AS Current_Date1,
    DATEDIFF(day, DateOfBirth, GETDATE()) AS Age_In_Days,
    DATEADD(year, 10, DateOfBirth) AS Date_Of_Birth_Plus_10_Years,
    @@CONNECTIONS AS Connections,
    @@ROWCOUNT AS Row_Count,
    AVG(Salary) OVER () AS Average_Salary,
    COUNT(*) OVER () AS Count_Of_Rows,
    MAX(Salary) OVER () AS Maximum_Salary,
    MIN(Salary) OVER () AS Minimum_Salary,
    SUM(Salary) OVER () AS Sum_Of_Salaries,
    ROW_NUMBER() OVER (ORDER BY Salary) AS Row_Number,
    RANK() OVER (ORDER BY Salary) AS Rank,
    NTILE(4) OVER (ORDER BY Salary) AS NTile,
	COALESCE(DateOfBirth, '2025') as new_col_with_not_nulls
FROM 
    FunctionsDemo;
