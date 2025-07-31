-- Create a new database
CREATE DATABASE MyDatabase;

-- Use the newly created database
USE MyDatabase;

-- Create a table named 'Customers'
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);
-- Insert a single record into the Customers table
INSERT INTO Customers (CustomerID, FirstName, LastName, Email)
VALUES (1, 'John', 'Doe', 'john.doe@example.com');

-- Insert multiple records
INSERT INTO Customers (CustomerID, FirstName, LastName, Email)
VALUES
    (2, 'Jane', 'Smith', 'jane.smith@example.com'),
    (3, 'Peter', 'Jones', 'peter.jones@example.com');

-- Select all columns from the Customers table
SELECT * FROM Customers;

-- Select specific columns
SELECT FirstName, LastName FROM Customers;

-- Select with a condition (WHERE clause)
SELECT * FROM Customers WHERE CustomerID = 1;

-- Select with multiple conditions
SELECT * FROM Customers WHERE FirstName = 'Jane' AND LastName = 'Smith';
-- Update a record
UPDATE Customers
SET Email = 'john.doe_new@example.com'
WHERE CustomerID = 1;
-- Delete a specific record
DELETE FROM Customers WHERE CustomerID = 3;

-- Delete all records from a table (use with caution!)
-- DELETE FROM Customers;
-- Drop a table
DROP TABLE Customers;

-- Drop a database (use with extreme caution!)
-- DROP DATABASE MyDatabase;