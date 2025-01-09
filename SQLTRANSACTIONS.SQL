CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(255),
    Address VARCHAR(255)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);


--Inserting Data:


INSERT INTO Customers (CustomerID, Name, Address)
VALUES
(1, 'John Doe', '123 Main St'),
(2, 'Jane Smith', '456 Elm St');

INSERT INTO Orders (OrderID, CustomerID, OrderDate)
VALUES
(1, 1, '2022-01-01'),
(2, 1, '2022-01-15'),
(3, 2, '2022-02-01');

INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity)
VALUES
(1, 1, 1, 2),
(2, 1, 2, 3),
(3, 2, 1, 1),
(4, 3, 2, 2);

/*
COMMIT

- Commits the current transaction, making all changes permanent.
- Ends the transaction and releases all locks.
- Cannot be undone.
*/

BEGIN TRANSACTION;
INSERT INTO Customers (Name, Address) VALUES ('John Doe', '123 Main St');
COMMIT TRANSACTION;

/*
ROLLBACK

- Rolls back the current transaction, undoing all changes made since the transaction began.
- Ends the transaction and releases all locks.
- Can be undone if the transaction is rolled back.

*/

BEGIN TRANSACTION;
INSERT INTO Customers (Name, Address) VALUES ('John Doe', '123 Main St');
ROLLBACK TRANSACTION;

/*
SAVE TRANSACTION

- Saves the current state of the transaction.
- Allows you to roll back to a specific point in the transaction.
- Does not end the transaction.
*/

BEGIN TRANSACTION;
INSERT INTO Customers (Name, Address) VALUES ('John Doe', '123 Main St');
SAVE TRANSACTION MySavePoint;
INSERT INTO Orders (CustomerID, OrderDate) VALUES (1, '2022-01-01');
ROLLBACK TRANSACTION MySavePoint;


/*
Note:

- COMMIT and ROLLBACK end the transaction, while SAVE TRANSACTION does not.
- SAVE TRANSACTION is useful when you want to roll back to a specific point in the transaction without ending the transaction.
- You can have multiple savepoints in a transaction.
*/


--Transaction Example:


BEGIN TRANSACTION;

-- Insert a new order for customer 1
INSERT INTO Orders (OrderID, CustomerID, OrderDate)
VALUES (4, 1, '2022-03-01');

-- Insert order details for the new order
INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity)
VALUES (5, 4, 1, 1);

-- Update the customer's address
UPDATE Customers
SET Address = '789 Oak St'
WHERE CustomerID = 1;

-- Commit the transaction
COMMIT TRANSACTION;

/*
In this example, we start a transaction and perform three operations:

1. Insert a new order for customer 1.
2. Insert order details for the new order.
3. Update the customer's address.

If any of these operations fail, the entire transaction will be rolled back,
and the database will be returned to its previous state. 
If all operations succeed, the transaction will be committed, 
and the changes will be persisted to the database.
*/