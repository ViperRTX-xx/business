CREATE DATABASE CollegeDB;
USE CollegeDB;
CREATE TABLE Students(
Student_ID INT,
Name VARCHAR(50),
Department VARCHAR(30),
Age INT,
City VARCHAR(30),
Marks INT
);
INSERT INTO Students VALUES(101,'Rahul','Computer Science',20,'Kochi',85),
(102,'Neha','Commerce',19,'Thrissur',91),(103,'Arjun','Computer Science',21,'Kozhikode',78),(104,'Arya','Physics',20,'Kochi',95),(105,'Anjali','Mathematics',22,'Kannur',88);
select * from Students;
select * from Students where Age=20;
select * from Students where Age=20 OR Age=22;
select * from Students where Age between 20 and 22;
select * from Students where Student_ID=101 or Student_ID=103;
select City from Students where City like'K%';
select * from Students where City='Kochi' and Marks>90;
select * from Students where City='Thrissur' or City='Kannur';
select * from students where City in ('Thrissur','Kannur');
select * from Students where Marks between 75 and 89;
select * from Students where Name like '%n%';
select * from Students limit 3;
select * from Students order by age  desc ;
select * from Students order by Marks asc;
select * from Students order by Marks desc limit 3;
select * from Students order by Marks asc limit 2;
select * from Students where City='Kochi' order by Marks asc;
select * from Students where Age between 18 and 20;
select * from Students where Name like 'A%';

