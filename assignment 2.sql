CREATE DATABASE RetailStoreDB;
USE RetailStoreDB;

CREATE TABLE Orders ( Order_ID INT PRIMARY KEY,Customer_Name VARCHAR(50),Product VARCHAR(50),Category VARCHAR(50),City VARCHAR(50),Quantity INT,Price INT,
Order_Date DATE );

INSERT INTO Orders(Order_ID,Customer_Name,Product,Category,City,Quantity,Price,Order_Date)
VALUES
(101, 'Akhil', 'Laptop', 'Electronics', 'Kochi', 2, 55000, '2026-07-01'),
(102, 'Neha', 'Mobile', 'Electronics', 'Thrissur', 1, 25000, '2026-07-03'),
(103, 'Rahul', 'Chair', 'Furniture', 'Kochi', 4, 3500, '2026-07-04'),
(104, 'Arya', 'Table', 'Furniture', 'Kannur', 2, 8000, '2026-07-05'),
(105, 'John', 'Headphone', 'Electronics', 'Kochi', 3, 2500, '2026-07-07'),
(106, 'Diya', 'Notebook', 'Stationary', 'Calicut', 10, 120, '2026-07-08'),
(107, 'Anu', 'Printer', 'Electronics', 'Thrissur', 1, 15000, '2026-07-09'),
(108, 'Sree', 'Pen', 'Stationary', 'Kochi', 20, 30, '2026-07-10'),
(109, 'Arjun', 'Monitor', 'Electronics', 'Palakkad', 2, 18000, '2026-07-11'),
(110, 'Meera', 'Bookshelf', 'Furniture', 'Kannur', 1, 9000, '2026-07-12');

SELECT * FROM Orders;
SELECT Customer_Name, Product, Price FROM Orders;
SELECT * FROM Orders WHERE Category = 'Electronics';
SELECT * FROM Orders WHERE City = 'Kochi' AND Price > 10000;
SELECT * FROM Orders WHERE Customer_Name LIKE 'A%';
SELECT * FROM Orders WHERE Customer_Name LIKE '%a';
SELECT * FROM Orders WHERE Customer_Name LIKE '%ee%';
SELECT * FROM Orders WHERE Quantity BETWEEN 2 AND 5;
SELECT * FROM Orders WHERE City = 'Kochi'OR City = 'Thrissur';
SELECT * FROM Orders WHERE Price != 25000;
SELECT * FROM Orders WHERE Category = 'Electronics' AND Quantity > 1;
SELECT * FROM Orders ORDER BY Price DESC;
SELECT * FROM Orders ORDER BY Customer_Name ASC;
SELECT * FROM Orders ORDER BY Price DESC LIMIT 5;
SELECT * FROM Orders ORDER BY Price ASC LIMIT 3;
SELECT DISTINCT City FROM Orders;

SELECT COUNT(*) AS Total_orders From orders;
SELECT SUM(Quantity) AS Total_Quantity_Sold FROM Orders;
SELECT AVG(Price) AS Average_Price FROM Orders;
SELECT MAX(Price) AS Highest_Product_Price FROM Orders;
SELECT MIN(Price) AS Lowest_Product_Price FROM Orders;

SELECT Category,COUNT(*) AS NumberOfOrders, SUM(Quantity) AS TotalQuantitySold,AVG(Price) AS AveragePrice FROM Orders GROUP BY Category;
SELECT City,COUNT(*) AS NumberOfOrders,AVG(Price) AS AveragePrice,SUM(Quantity * Price) AS TotalSalesAmount FROM Orders GROUP BY City;
SELECT Category, COUNT(*) AS NumberOfOrders FROM Orders GROUP BY Category HAVING COUNT(*) > 2;
SELECT City, AVG(Price) AS AveragePrice FROM Orders GROUP BY City HAVING AVG(Price) > 10000;
SELECT City, COUNT(DISTINCT Customer_Name) AS NumberOfCustomers FROM Orders GROUP BY City HAVING COUNT(DISTINCT Customer_Name) > 2;
SELECT City, COUNT(*) AS NumberOfOrders FROM Orders GROUP BY City ORDER BY NumberOfOrders DESC LIMIT 1;
SELECT Category, AVG(Price) AS AveragePrice FROM Orders GROUP BY Category ORDER BY AveragePrice DESC LIMIT 1;
SELECT Product, Price FROM Orders ORDER BY Price DESC LIMIT 1;
