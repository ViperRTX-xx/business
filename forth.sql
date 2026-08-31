create database textile;
use textile;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(50)
);

INSERT INTO Customers VALUES
(1,'Aravind','Kerala'),
(2,'Akshai','Mumbai'),
(3,'Ajay','Chennai'),
(4,'Arjun','Tamil');



-- Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Amount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Orders VALUES
(101,1,2000),
(102,2,3500),
(103,1,1500),
(104,4,5000);



-- Products Table (Updated)
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2),
    OrderID INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO Products VALUES
(1,'Laptop',50000,101),
(2,'Phone',30000,102),
(3,'Chair',8000,104);



-- Display Tables
SELECT * FROM Customers;
SELECT * FROM Orders;
SELECT * FROM Products;



-- INNER JOIN
SELECT Customers.CustomerName,
       Orders.OrderID,
       Orders.Amount
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;



-- LEFT JOIN
SELECT Customers.CustomerName,
       Orders.OrderID
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;



-- LEFT JOIN with Amount
SELECT Customers.CustomerName,
       Orders.OrderID,
       Orders.Amount
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;



-- Customer Names and Order Amount
SELECT Customers.CustomerName,
       Orders.Amount
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;



-- Customers without Orders
SELECT Customers.CustomerName
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderID IS NULL;



-- RIGHT JOIN
SELECT Customers.CustomerName,
       Orders.OrderID
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;



-- RIGHT JOIN with Amount
SELECT Customers.CustomerName,
       Orders.OrderID,
       Orders.Amount
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;




SELECT Customers.CustomerName,
       Orders.OrderID,
       Orders.Amount
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID

UNION

SELECT Customers.CustomerName,
       Orders.OrderID,
       Orders.Amount
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;


SELECT Customers.CustomerName,
       Orders.OrderID,
       Products.ProductName
FROM Customers 
JOIN Orders
ON Customers.CustomerID = Orders.CustomerID 
JOIN Products
ON Products.OrderID = Orders.OrderID;

ALTER TABLE Customers
ADD phoneno VARCHAR(22);

UPDATE Customers
SET phoneno = '9546437821'
WHERE CustomerID = 1;

UPDATE Customers
SET phoneno = '9546465421'
WHERE CustomerID = 2;

SELECT * from Customers;
select distinct CustomerName,
City from Customers join  Orders on Customers.CustomerID=Orders.CustomerID;
select CustomerName,count(OrderID) from Customers join Orders on Customers.CustomerID=Orders.CustomerID group by CustomerName;
SELECT Customers.CustomerName,
       SUM(Orders.Amount) AS Total_Spent
FROM Customers
JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerID, Customers.CustomerName
ORDER BY Total_Spent DESC;

SELECT Customers.CustomerID,
       Customers.CustomerName
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderID IS NULL;

SELECT ProductID, ProductName
FROM Products
WHERE OrderID IS NULL; 
use textile;