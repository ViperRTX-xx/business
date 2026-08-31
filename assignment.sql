create database RealStore;
use RealStore;
create table Orders(Orders_ID int,Customer_Name varchar(20),Product varchar(20),Category
varchar(20),City varchar(20),Quantity int,Price int,Order_Date int);
select*from Orders;
insert into Orders values(101, 'Akhil', 'Laptop', 'Electronics', 'Kochi', 2, 55000, 2026-07-01),
(102, 'Neha', 'Mobile', 'Electronics', 'Thrissur', 1, 25000, 2026-07-03),
(103, 'Rahul', 'Chair', 'Furniture', 'Kochi', 4, 3500, 2026-07-04),
(104, 'Arya', 'Table', 'Furniture', 'Kannur', 2, 8000, 2026-07-05),
(105, 'John', 'Headphones', 'Electronics', 'Kochi', 3, 2500, 2026-07-07),
(106, 'Diya', 'Notebook', 'Stationery', 'Kochi', 10, 120, 2026-07-08),
(107, 'Anu', 'Printer', 'Electronics', 'Thrissur', 1, 15000, 2026-07-09),
(108, 'Sree', 'Pen', 'Stationery', 'Kochi', 20, 30, 2026-07-10),
(109, 'Arjun', 'Monitor', 'Electronics', 'Palakkad', 2, 18000, 2026-07-11),
(110, 'Meera', 'Bookshelf', 'Furniture', 'Kannur', 1, 9000, 2026-07-12);
select Customer_Name,Product,Price from Orders;
select Customer_Name from Orders where Category='Electronics';
select Customer_Name from Orders where City='Kochi' and Price>10000;
select * from Orders where Customer_Name like 'A%';
select * from Orders where Customer_Name like '%A';
select * from Orders where Customer_Name like '%ee%';
select * from Orders where Quantity between 2 and 5 and City in('Kochi','Thrissur');
select Product from Orders  where Price<>25000;
select * from Orders where Category ='Electronics' and Quantity>1;
select * from Orders order by Price desc;
select * from Orders order by Customer_Name asc;
select Product,Price from Orders order by Price desc limit 5;
select Product,Price from Orders order by Price asc limit 3;
select distinct City from Orders;
select count(*) as Total_Orders from Orders;
select SUM(Quantity) as Total_Quantity from Orders;
select AVG(Price) as Average_Price from Orders;
select MAX(Price) as Highest_Price from Orders;
select MIN(Price) as Lowest_Price from Orders;



