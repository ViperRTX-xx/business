create database shop;
use shop;
create table customer(customer_id int,customername varchar(20),city varchar(30));
insert into customer values(1,'rahul','delhi'),(2,'anita','mmbai'),(3,'david','chennai');
create table orders(order_id int,customer_id int,amount int);
insert into orders values(101,1,2000),(102,2,3500),(103,1,1500);
create table  products(product_id int,productname varchar(20),price int);
insert into products values(1,'laptop',50000),(2,'phone',30000),(3,'chair',8000);
select*from customer;
select*from orders;
select*from products;
select customer.customername,orders.order_id,orders.amount from customer inner join
orders on customer.customer_id=orders.customer_id;
select customer.customername,orders.order_id from customer left join orders on customer.customer_id=
orders.customer_id;
select customer.customer_id,customer.customername,orders.amount from customer left join orders on customer.customer_id=orders.customer_id;
select customer.customername,orders.order_id from customer right join orders on customers.customer_id=orders.customer_id;

