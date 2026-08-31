create database realcompany;
use realcompany;
CREATE TABLE Employee (
    Employee VARCHAR(50),
    Manager VARCHAR(50)
);

INSERT INTO Employee (Employee, Manager)
VALUES
('CEO', NULL),
('Manager1', 'CEO');

SELECT * FROM Employee;
CREATE TABLE Employee1 (
    Employee VARCHAR(50),
    Manager VARCHAR(50)
);

INSERT INTO Employee1 (Employee, Manager)
VALUES
('Manager2', 'CEO'),
('Staff1', 'Manager1'),
('Staff2', 'Manager1');

SELECT * FROM Employee1;

SELECT e.Employee,
       m.Employee AS Manager
FROM Employee e
INNER JOIN Employee m
ON e.Manager = m.Employee;
