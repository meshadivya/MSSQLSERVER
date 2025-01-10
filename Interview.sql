Tiger Analytics SQL Interview Questions.

They are practical, challenging, and force you to think deeper.

→ Differentiate between a Primary Key, Natural Key, and Surrogate Key.
Do you know which one is best in which scenario?
Primary Key
Unique identifier for each row in a table.

Example: Employee ID (EmpID) in an Employees table.

Natural Key
Column(s) that uniquely identify a row based on real-world data.

Example: Social Security Number (SSN) in an Employees table.

Surrogate Key
Artificial primary key, typically an auto-incrementing integer.

Example: Auto-incrementing Order ID (OrderID) in an Orders table.

When to use each:

- Primary Key: Always required for each table.
- Natural Key: Use when real-world data is unique and stable (e.g., SSN).
- Surrogate Key: Use when natural key is lengthy, changes frequently, or is not unique (e.g., auto-incrementing Order ID).

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

→ Find the record count using INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL OUTER JOIN.
This isn’t just a JOIN—it’s a test of understanding relationships.

→ Write a SQL query to delete the 10th highest salary from the employee table.
Can you combine ranking and deletion elegantly?

→ Find the top 3 highest-paid employees in an organization.
Hint: RANK vs. ROW_NUMBER can make all the difference.

→ Optimize a SQL query for better performance.
Indexes, query plans, or refactoring? What’s your go-to move?

→ Retrieve unique records without using DISTINCT or GROUP BY.
Think creatively—it’s not always obvious!

- Write a query to calculate the running total of sales for each product in a sales dataset. 
- How does your approach improve readability and performance?

-Write a SQL query to find the highest salary in each department from an employee dataset. 

→ Calculate the average salary of employees in each department.
A classic aggregation problem, but accuracy is key.

→ Handle NULL values in JOIN operations.
Do you know how NULL impacts logic in LEFT vs. INNER JOINs?

- Explain ACID properties in the context of databases and their importance in data transactions. 

1. How do you identify duplicate records in a table?

2. How can you delete duplicate records from a table?

3. What's the difference between UNION and UNION ALL?

4. How do RANK, ROW_NUMBER, and DENSE_RANK differ?

5. How do you find records in one table that don’t exist in another?

6. How can you retrieve the second-highest salary for employees in each department?

7. How do you find employees earning more than their manager?

8. What's the difference between INNER JOIN and LEFT JOIN?

9. How would you update a table to swap gender values?

10. Number of records after different kinds of join?

𝐁𝐚𝐬𝐢𝐜 𝐒𝐐𝐋 𝐂𝐨𝐧𝐜𝐞𝐩𝐭𝐬:

1. What is SQL, and why is it important in data analytics?
2. Explain the difference between `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, and `FULL OUTER JOIN`.
3. What is the difference between `WHERE` and `HAVING` clauses?
4. How do you use `GROUP BY` and `HAVING` in a query?
5. Write a query to find duplicate records in a table.
6. How do you retrieve unique values from a table using SQL?
7. Explain the use of aggregate functions like `COUNT()`, `SUM()`, `AVG()`, `MIN()`, and `MAX()`.
8. What is the purpose of a `DISTINCT` keyword in SQL?
 
 𝐈𝐧𝐭𝐞𝐫𝐦𝐞𝐝𝐢𝐚𝐭𝐞 𝐒𝐐𝐋:

1. Write a query to find the second-highest salary from an employee table.
2. What are subqueries and how do you use them?
3. What is a Common Table Expression (CTE)? Give an example of when to use it.
4. Explain window functions like `ROW_NUMBER()`, `RANK()`, and `DENSE_RANK()`.
5. How do you combine results of two queries using `UNION` and `UNION ALL`?
6. What are indexes in SQL, and how do they improve query performance?
7. Write a query to calculate the total sales for each month using `GROUP BY`.

 𝐀𝐝𝐯𝐚𝐧𝐜𝐞𝐝 𝐒𝐐𝐋:

1. How do you optimize a slow-running SQL query?
2. What are views in SQL, and when would you use them?
3. What is the difference between a stored procedure and a function in SQL?
4. Explain the difference between `TRUNCATE`, `DELETE`, and `DROP` commands.
5. What are windowing functions, and how are they used in analytics?
6. How do you use `PARTITION BY` and `ORDER BY` in window functions?
7. How do you handle NULL values in SQL, and what functions help with that (e.g., `COALESCE`, `ISNULL`)?

1. What are window functions, and how do they differ from aggregate functions? Can you give a use case?
 2. Explain indexing. When would an index potentially reduce performance, and how would you approach indexing strategy for a large dataset?
 3. Write a query to retrieve customers who have made purchases in the last 30 days but did not purchase anything in the previous 30 days.
 4. Given a table of transactions, find the top 3 most purchased products for each category.
 5. How would you identify duplicate records in a large dataset, and how would you remove only the duplicates, retaining the first occurrence?

1) Find candidates best suited for a Data Science job requiring Python, Tableau, and PostgreSQL skills.

SELECT name FROM candidates
WHERE skills LIKE '%Python%'
AND skills LIKE '%Tableau%'
AND skills LIKE '%PostgreSQL%';
This query filters candidates who have all three required skills.

2) What is Normalization? Can you explain different normal forms?
Normalization is organizing database structure to reduce redundancy and improve data integrity. Common normal forms:
1NF: Eliminate duplicate columns and ensure atomic values.
2NF: 1NF + remove partial dependencies.
3NF: 2NF + remove transitive dependencies.
BCNF: 3NF with more rigorous dependency conditions.

3) How do you create an index in MySQL, and why is it important?
Indexing speeds up data retrieval by creating a quick lookup reference.
CREATE INDEX idx_column ON table_name (column_name);

4) How can you optimize a slow-running query in MySQL?

Indexing: Ensure relevant columns are indexed.
Avoid SELECT*: Only select required columns.
Join Optimization: Use proper join types.
Limit Data: Use WHERE clauses and avoid complex subqueries.

5) What is the difference between UNION and UNION ALL?
UNION removes duplicate records, while UNION ALL includes duplicates. UNION incurs more overhead as it performs a distinct operation.

6) How do you create a view in SQL, and what are its advantages?
A view is a virtual table representing the result of a SQL query. Create it with:

CREATE VIEW view_name AS
SELECT column1, column2 FROM table_name WHERE condition;
Advantages: Simplifies complex queries, enhances security, and provides abstraction.

7) What is a Common Table Expression (CTE)? How is it used?
A CTE is a temporary result set defined within a query using WITH clause, simplifying complex queries. Example:

WITH CTE AS (
SELECT column1, column2 FROM table_name WHERE condition
)
SELECT * FROM CTE WHERE another_condition;

8) What is a Window Function, and what are its types?
Window Functions perform calculations across rows in a specified window (subset). Types include:
ROW_NUMBER(): Assigns a unique number to rows.
RANK() and DENSE_RANK(): Assign rank values.
SUM(), AVG(): Aggregations over a window.

9) How do you use the PARTITION BY clause with window functions?
PARTITION BY divides data into partitions, and the function calculates within each partition.
SELECT column1, column2, RANK() OVER (PARTITION BY column1 ORDER BY column2 DESC) AS rank_column
FROM table_name;

1. Order of Execution of Query?
FROM > WHERE > GROUP BY > HAVING > SELECT > ORDERY BY > LIMIT

2. Write a SQL query to find employees who have a salary greater than their manager's salary from the employee table?
SELECT e1.EmployeeID, e1.EmployeeName, e1.Salary FROM Employee e1
JOIN Employee e2
ON e1.ManagerID = e2.EmployeeID WHERE e1.Salary>e2.Salary;

3. Write a query to find the Nth highest salary from a table Employees with columns EmployeeID, Name and Salary?
SELECT Salary FROM (SELECT Salary, DENSE_RANK() OVER (ORDER BY Salary DESC) AS Rank FROM Employees) AS RankedSalaries WHERE RANK = n;

4. Write a SQL Query to calculate the cumulative sum of sales for each employee?
SELECT EmployeeID, SalesDate, SUM(SalesAmount) OVER (PARTITION BY EmployeeID ORDER BY SalesDate) AS CumulativeSales FROM Employee 
ORDER BY EmployeeID;

5. What is View?
A view in SQL is like a saved query. It allows you to simplify complex queries by creating a virtual table that can be reused whenever needed. Instead of writing a long SQL query repeatedly, you can define it once as a view and just call the view to get the result. This makes working with the data faster and easier.

6. What is a dual?
Dual is basically a dummy table that we use in SQL.

7. Find total salary write a query?
SELECT SUM(salary) AS total_salary FROM employees;

8. Find 2nd Highest Salary from Table?
SELECT max(salary) from employee where salary < (SELECT max(salary) from employee.

9. Types of Constraints in SQL?
Not NULL, Unique, Check, default, Primary Key and Foreign Key.

10. Difference between Group by & Order by?
Group by clause is applicable when we want to use aggregate functions to more than one set of rows, we can use aggregate functions.
Order by clause is applicable when we want to get the data obtained by a query in sorting order.
