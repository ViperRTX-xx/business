create database company;
use company;
create table employee(employee_id int,employee_name varchar(20),department varchar(20),city varchar(20),salary int,experiance int);
select * from employee;
insert into employee values(101,'arun','assistant','ernakulam',25000,1),
(102,'arjun','hr','kozhikode',50000,4),(103,'akshay','it','kannur',30000,3),
(104,'zinan','sales','kaloor',15000,2);
select * from employee;
select employee_name,salary from employee;
select * from employee where city='kozhikode';
select * from employee where salary>50000;
select * from employee  where employee_name like '%A';
select * from employee where experiance between 2 and 5;
select * from employee order by salary desc;
select * from employee order by salary desc limit 3; 
select count(*) from employee;
select count(*) from employee where city='kozhikode';
select sum(salary) from employee;
select avg(salary) from employee;
select min(salary) from employee;
select max(salary) from employee;
select count(*) as total_employee,avg(salary) as average_salary,max(salary) as highest_salary,min(salary) as lowest_salary from employee;
select department,max(salary) from employee group by department;
select city,count(*) from employee group by city;
select department,sum(salary) from employee group by department;

