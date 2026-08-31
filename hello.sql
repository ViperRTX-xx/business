create database textile1;
use textile1;
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);

INSERT INTO Employees (EmpID, Name, Department, Salary)
VALUES
(101, 'Rahul', 'HR', 35000),
(102, 'Anu', 'Sales', 50000),
(103, 'Akhil', 'IT', 60000),
(104, 'Meera', 'Sales', 45000),
(105, 'John', 'IT', 70000);

SELECT * FROM Employees;
select Name,Salary from Employees where Salary=(Select max(Salary) from (Employees));
select Name,Salary from Employees where Salary=(Select min(Salary) from (Employees));
select Name,Salary from Employees where Salary>(Select avg(Salary) from (Employees));
Select Name,Department,Salary
from Employees E1
where Salary=(
     Select max(Salary)
     from Employees E2
     where E1.Department=E2.Department);
     SELECT Name
FROM Employees
WHERE Salary = (SELECT MIN(Salary) FROM Employees);
SELECT Name
FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees);
SELECT Name
FROM Employees
WHERE Salary = (SELECT MAX(Salary) FROM Employees);
SELECT Name
FROM Employees
WHERE Department = (
    SELECT Department
    FROM Employees
    WHERE Name = 'John'
);
SELECT Name
FROM Employees
WHERE Salary < (SELECT AVG(Salary) FROM Employees);
Select Name from Employees Where Department IN(Select Department from Employees where Salary>40000);
Select Name ,Salary from Employees Where Department > ANY(Select Department from Employees where Department='HR');
select Department,AverageSalary from (select Department, AVG(Salary) AS AverageSalary
 from Employees group by  Department) as SalarySummary;
 select Department, AVG(salary) as AverageSalary from Employees Group by Department;
 select MAX(AverageSalary) AS Highest_Average_Salary From (Select Department, AVG(Salary) AS AverageSalary from Employees
 group by Department) AS SalarySummary;
 SELECT Department, AverageSalary
FROM (
    SELECT Department, AVG(Salary) AS AverageSalary
    FROM Employees
    GROUP BY Department
) AS SalarySummary
WHERE AverageSalary = (
    SELECT MAX(AverageSalary)
    FROM (
        SELECT Department, AVG(Salary) AS AverageSalary
        FROM Employees
        GROUP BY Department
    ) AS Summary2
);
select * from Employees;
select Name,Department,Salary from Employees E1 where Salary=(select MAX(Salary)
 from Employees E2 Where E1.Department=E2.Department);
 select Name,Department,Salary from Employees E1 where Salary>(select AVG(Salary)
 from Employees E2 Where E1.Department=E2.Department);
 select Name,Department,Salary from Employees E1 where Salary=(select MIN(Salary)
 from Employees E2 Where E1.Department=E2.Department);
 select 


