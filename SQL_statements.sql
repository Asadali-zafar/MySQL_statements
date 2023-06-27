CREATE DATABASE employees;
CREATE DATABASE orders;
CREATE DATABASE customer;

use orders;
show databases;

use orders;
create table sales (
customerid int not null primary key,
firstname varchar(40) not null,
lastname varchar(40) not null,
purchase int not null

);
show tables;
describe sales;

select * from sales;

insert into sales values ( 1, "Assad",  "Ali" , 50 );
insert into sales ( "customerid", "fistname", "lastname", "purchase" ) values (2, "Ahmad", "mehdi", 40);


INSERT INTO sales VALUES
  (2, "John", "Smith", 75),
  (3, "Emma", "Johnson", 30),
  (4, "Michael", "Williams", 60),
  (5, "Sophia", "Brown", 45),
  (6, "David", "Jones", 55),
  (7, "Olivia", "Miller", 70),
  (8, "James", "Davis", 80),
  (9, "Isabella", "Taylor", 65),
  (10, "Daniel", "Wilson", 40),
  (11, "Ava", "Anderson", 50);

select * from sales;


select * from sales where customerid= 4;

select firstname, lastname from sales where customerid= 4;

select firstname, lastname from sales where purchase >60;


select firstname, lastname from sales where purchase >60;



show tables;
create table employees (
employee_id int not null primary key auto_increment,
firstname varchar (20) not null,
lastname varchar (20) not null,
experience DECIMAL(3,1) not null,
domain varchar(40) not null,
salary DECIMAL (7,2) not null

);


-- as employee_id is the autoincremented so we donot have to give them manually and for that 
-- we have to specify the remianing column names except the employee_id.

INSERT INTO employees ( firstname, lastname, experience, domain, salary) VALUES
  ("John", "Doe", 2.5, "Finance", 5000.00),
  ("Jane", "Smith", 5.3, "Marketing", 7000.00),
  ("Michael", "Johnson", 4.8, "Sales", 6000.00),
  ("Emily", "Davis", 3.2, "Human Resources", 5500.00),
  ("Daniel", "Wilson", 6.7, "IT", 8000.00),
  ("Sophia", "Brown", 4.1, "Operations", 5700.00),
  ("David", "Miller", 7.9, "Engineering", 9000.00),
  ("Olivia", "Anderson", 3.5, "Finance", 5200.00),
  ("James", "Taylor", 4.6, "Marketing", 6500.00),
  ("Emma", "Wilson", 5.8, "Sales", 6800.00)

  ;
-- hello 



select * from employees;
describe employees;



select * from employees where (experience >5 AND salary>5000);

select * from employees where xperience >5 OR salary>5000);


select * from employees where firstname IN ("John");



drop table customer;

drop table sales;
show tables;



-- Create the customers table
CREATE TABLE customers (
  customer_id int NOT NULL PRIMARY KEY,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  email varchar(100) NOT NULL
);

-- Create the orders table
CREATE TABLE orders (
  order_id int NOT NULL PRIMARY KEY,
  customer_id int NOT NULL,
  product_name varchar(100) NOT NULL,
  order_date date NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Insert data into the customers table
INSERT INTO customers (customer_id, first_name, last_name, email) VALUES
  (1, 'John', 'Doe', 'john.doe@example.com'),
  (2, 'Jane', 'Smith', 'jane.smith@example.com'),
  (3, 'Michael', 'Johnson', 'michael.johnson@example.com'),
  (4, 'Emily', 'Davis', 'emily.davis@example.com'),
  (5, 'Daniel', 'Wilson', 'daniel.wilson@example.com');

-- Insert data into the orders table
INSERT INTO orders (order_id, customer_id, product_name, order_date) VALUES
  (101, 1, 'Product A', '2023-06-01'),
  (102, 2, 'Product B', '2023-06-02'),
  (103, 3, 'Product C', '2023-06-03'),
  (104, 1, 'Product D', '2023-06-04'),
  (105, 4, 'Product E', '2023-06-05'),
  (106, 5, 'Product F', '2023-06-06');



show tables;

-- these gus purchased.
select * from customers where exists (select * from orders where orders.customer_id = customers.customer_id);


select * from customers where first_name like '%h%';
select * from customers where first_name like 'D%';


select * from customers where first_name like '%n';


-- one database is dropped at a time
show databases;
drop database employees;
drop database company;
drop database customer;
drop database database_01;
drop database database_02;
drop database orders;




create database company;

use company;
create table orders(
customer_id int not null primary key,
order_id varchar(20),
units int not null,
cost decimal (4,2) not null,
order_date date not null
);
select * from orders;


drop table orders;

INSERT INTO orders (customer_id, order_id, units, cost, order_date)
VALUES (1, 'ORD001', 10, 25.00, '2023-06-01'),
       (2, 'ORD002', 5, 12.50, '2023-06-05'),
       (3, 'ORD003', 8, 20.00, '2023-06-10'),
       (4, 'ORD004', 3, 7.50, '2023-06-15'),
       (5, 'ORD005', 12, 30.00, '2023-06-20'),
       (6, 'ORD006', 7, 17.50, '2023-06-25'),
       (7, 'ORD007', 15, 37.50, '2023-06-30'),
       (8, 'ORD008', 4, 10.00, '2023-07-05'),
       (9, 'ORD009', 9, 22.50, '2023-07-10'),
       (10, 'ORD010', 6, 15.00, '2023-07-15'),
       (11, 'ORD011', 11, 27.50, '2023-07-20'),
       (12, 'ORD012', 3, 7.50, '2023-07-25'),
       (13, 'ORD013', 8, 20.00, '2023-07-30'),
       (14, 'ORD014', 13, 32.50, '2023-08-05'),
       (15, 'ORD015', 2, 5.00, '2023-08-10'),
       (16, 'ORD016', 6, 15.00, '2023-08-15'),
       (17, 'ORD017', 9, 22.50, '2023-08-20'),
       (18, 'ORD018', 14, 35.00, '2023-08-25'),
       (19, 'ORD019', 5, 12.50, '2023-08-30'),
       (20, 'ORD020', 10, 25.00, '2023-09-05');

drop table customer;
select * from orders;


create table customers (
customerid int primary key,
firstname varchar(20) not null,
lastname varchar(20) not null );




INSERT INTO customers (customerid, firstname, lastname)
VALUES (1, 'John', 'Doe'),
       (2, 'Jane', 'Smith'),
       (3, 'Michael', 'Johnson'),
       (4, 'Emily', 'Brown'),
       (5, 'William', 'Davis'),
       (6, 'Olivia', 'Miller'),
       (7, 'James', 'Wilson'),
       (8, 'Sophia', 'Moore'),
       (9, 'Benjamin', 'Taylor'),
       (10, 'Isabella', 'Anderson'),
       (11, 'Daniel', 'Thomas'),
       (12, 'Mia', 'Martinez'),
       (13, 'Alexander', 'Jackson'),
       (14, 'Ava', 'Thompson'),
       (15, 'Matthew', 'Lee'),
       (16, 'Charlotte', 'Harris'),
       (17, 'Ethan', 'Clark'),
       (18, 'Amelia', 'Lewis'),
       (19, 'Henry', 'Walker'),
       (20, 'Harper', 'Green');
       
       
SELECT * from customers;


-- finding stings--

select * from customers where firstname like "j%";
select * from customers where firstname like "e%";

-- finding strings --
select * from customers where customerid between 5 and 10;

select *, units +10 from orders;
-- similary we can add bonus or deduct some from salary column--


select * from customers;



-- concat operator --
select concat(firstname, ' ', lastname) as fullname from customers;
-- only for strings--



select* from customers;


-- temporl operator for time --

select current_date();
select current_date() - interval 1 day as "past";
select current_date() + interval 7 day as week;

-- temporal operator --

create table students (

studentid int not null primary key,
firstname varchar(20) not null,
lastname varchar (20) not null,
age int not null
);


INSERT INTO students (studentid, firstname, lastname, age)
VALUES
    (1, 'John', 'Doe', 4),
    (2, 'Jane', 'Smith', 5),
    (3, 'Michael', 'Johnson', 3),
    (4, 'Emily', 'Williams', 6),
    (5, 'James', 'Brown', 4),
    (6, 'Olivia', 'Jones', 5),
    (7, 'Daniel', 'Taylor', 3),
    (8, 'Sophia', 'Davis', 6),
    (9, 'David', 'Miller', 4),
    (10, 'Emma', 'Wilson', 5),
    (11, 'Jacob', 'Anderson', 3),
    (12, 'Ava', 'Thomas', 6),
    (13, 'Joseph', 'Taylor', 4),
    (14, 'Mia', 'Robinson', 5),
    (15, 'Matthew', 'Clark', 3),
    (16, 'Abigail', 'Lewis', 6),
    (17, 'Andrew', 'Walker', 4),
    (18, 'Sofia', 'Hall', 5),
    (19, 'Benjamin', 'Young', 3),
    (20, 'Charlotte', 'Harris', 6);

select * from students;


-- groupby --

select age, count(*) from students group by age;

select age, count(*) from students group by age;

select age, count(*) from students where age =3  group by age;

select age, count(*) as total_count  from students  group by age;

-- groupby --


show databases;
use company;
show tables;

-- having clause --
select age, count(*) as total_spent from students group by age having count(*)<6;

-- order by --
select * from students order by age desc;
select * from students order by firstname;



-- limmit --
select * from students limit 5;










-- creating database-- 


create database school;
use school;


-- creating table --

create table students (
studentid int primary key AUTO_INCREMENT,
firstname varchar(20) not null,
lastname varchar(30) not null,
class varchar(20) not null,
dateofjoining datetime not null,
age int not null
);

-- inserting values in tables --

insert into students (firstname, lastname, class, dateofjoining, age)
values("Assad", "Ali", "Primary", "2023-02-04", 8);


INSERT INTO students (firstname, lastname, class, dateofjoining, age)
VALUES
  ("Hassan", "Ali", "Primary", "2023-02-05", 8),
  ("John", "Doe", "Secondary", "2022-09-10", 15),
  ("Jane", "Smith", "Primary", "2022-11-22", 9),
  ("Michael", "Johnson", "Secondary", "2022-07-15", 16),
  ("Emily", "Brown", "Primary", "2022-12-05", 8),
  ("Mark", "Taylor", "Primary", "2022-08-19", 9),
  ("Sarah", "Anderson", "Secondary", "2022-10-30", 14),
  ("David", "Wilson", "Primary", "2022-06-28", 7),
  ("Emma", "Miller", "Secondary", "2022-11-10", 15),
  ("Ryan", "Thompson", "Primary", "2023-01-15", 8),
  ("Olivia", "Davis", "Primary", "2022-07-20", 9),
  ("William", "Martinez", "Secondary", "2023-02-01", 16),
  ("Sophia", "Hernandez", "Primary", "2022-10-05", 8),
  ("Daniel", "Lopez", "Secondary", "2022-09-01", 15),
  ("Ava", "Garcia", "Primary", "2022-12-18", 9),
  ("Alexander", "Clark", "Secondary", "2022-08-12", 16),
  ("Mia", "Lewis", "Primary", "2023-01-30", 8),
  ("James", "Lee", "Primary", "2022-07-25", 9),
  ("Benjamin", "Walker", "Secondary", "2022-11-05", 15),
  ("Charlotte", "Turner", "Primary", "2022-10-15", 8);


-- select command in sql --

select * from students;


-- select rows with one or more conditions --

select * from students where age >10 ;

select * from students where (age<10 & class= "primary");



-- searching a student using whild card --

select * from students where firstname like 'Mic%';





-- from how much time they are in school --

select current_date();
select current_date() - interval 1 day as past;
select current_date() + interval 7 day as future;

select * from students where (dateofjoining-curdate()) >5;

select dateofjoining-current_date() as "Days of joining" from students;



-- group by --

select age, count(*) from students group by age;
select age, count(*) as total from students group by age;

-- keep in mind where clauses is applied before groupby while having is applied on the groups after they are made --
select firstname, age, count(*) as total from students where age=14 group by age;
select *,count(*) as total from students group by age having total >4;



-- concatination strings --

select concat(firstname," ",lastname) as fullname from students;


-- between operator --

select * from students where studentid between 5 and 10;


-- mathematical operator --
select *, age +2 as new_age  from students;





