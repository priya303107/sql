CREATE TABLE Customers0 ( 
CustomerID INT PRIMARY KEY,
FirstName VARCHAR(50), 
LastName VARCHAR(50), 
Email VARCHAR(100), 
City VARCHAR(50)
);
INSERT INTO Customers0 (CustomerID, FirstName, LastName, Email, City) VALUES 
(1, 'Alice', 'Smith', 'alice@example.com', 'New York'),
(2, 'Bob', 'Johnson', 'bob@example.com', 'Los Angeles'),
(3, 'Alice', 'Williams', 'alice.w@example.com', 'Chicago'),
(4, 'John', 'Doe', 'john.doe@example.com', 'New York'),
(5, 'Jane', 'Smith', 'jane@example.com', 'Los Angeles'),
(6, 'Alice', 'Brown', 'alice.b@example.com', 'Houston');
SELECT DISTINCT City
FROM Customers0;
