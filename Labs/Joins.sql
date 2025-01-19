/*
Q.1)customer(cid,cname,product,Quantity) and product(pid,cid,productname,cost)
Here cid and pid as primary key for respective table.

Q.2)consider two tables: employees(employee_id,name,department_id)
 and departments(department_id,department_name)

Apply All the joins(Inner Join,Left and Right Join)
*/

--Solution Ques1

--create table customer
create table customer(
     cid int primary key,
     cname varchar(30),
     product varchar(30),
     quantity int
     );

--create table product
create table product(
     pid int primary key,
     cid int,
     productname varchar(30),
     cost decimal(10,2),
     foreign key(cid) references customer(cid)
     );

--insert data into customer table
insert into customer values
     (1,'Sheetal','TV',1),
     (2,'Ram','Airpodes',3),
     (3,'Juhi','Mixer',2);

--insert data into product table
insert into product values
     (111,3,'Laptop',100000),
     (222,1,'TV',20000),
     (333,2,'Airpodes',500);

--display customer table
select * from customer;
+-----+---------+----------+----------+
| cid | cname   | product  | quantity |
+-----+---------+----------+----------+
|   1 | Sheetal | TV       |        1 |
|   2 | Ram     | Airpodes |        3 |
|   3 | Juhi    | Mixer    |        2 |
+-----+---------+----------+----------+

--display product table
select * from product;
+-----+------+-------------+-----------+
| pid | cid  | productname | cost      |
+-----+------+-------------+-----------+
| 111 |    3 | Laptop      | 100000.00 |
| 222 |    1 | TV          |  20000.00 |
| 333 |    2 | Airpodes    |    500.00 |
+-----+------+-------------+-----------+


--Solution Ques2

--create table departments
create table departments(
     department_id int primary key,
     department_name varchar(30)
     );

--create table employees
create table employees(
     employee_id int primary key,
     name varchar(40),
     department_id int,
     foreign key(department_id) references departments (department_id)
     );

--insert data into departments table
insert into departments values
     (1,'Sales'),
     (2,'Marketing'),
     (3,'Analysis'),
     (4,'Production'),
     (5,'Manufacturing'),
     (6,'IT');

--insert data into employees table
insert into employees values
     (1011,'Ajay',4),
     (1022,'Keerti',6),
     (1033,'Sneha',2),
     (1044,'Juli',6),
     (1055,'Ramaya',2),
     (106,'Neha',1),
     (1077,'Harsh',3),
     (1088,'Yashni',6);

--display department table
select * from departments;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | Sales           |
|             2 | Marketing       |
|             3 | Analysis        |
|             4 | Production      |
|             5 | Manufacturing   |
|             6 | IT              |
+---------------+-----------------+

--display employees table
select * from employees;
+-------------+--------+---------------+
| employee_id | name   | department_id |
+-------------+--------+---------------+
|         106 | Neha   |             1 |
|        1011 | Ajay   |             4 |
|        1022 | Keerti |             6 |
|        1033 | Sneha  |             2 |
|        1044 | Juli   |             6 |
|        1055 | Ramaya |             2 |
|        1077 | Harsh  |             3 |
|        1088 | Yashni |             6 |
+-------------+--------+---------------+

--TYPES OF JOINS:
  
--INNER JOIN
 select e.employee_id, e.name, d.department_name
     from employees e
     INNER JOIN
     departments d
     on e.department_id=d.department_id;
+-------------+--------+-----------------+
| employee_id | name   | department_name |
+-------------+--------+-----------------+
|         106 | Neha   | Sales           |
|        1033 | Sneha  | Marketing       |
|        1055 | Ramaya | Marketing       |
|        1077 | Harsh  | Analysis        |
|        1011 | Ajay   | Production      |
|        1022 | Keerti | IT              |
|        1044 | Juli   | IT              |
|        1088 | Yashni | IT              |
+-------------+--------+-----------------+

--LEFT JOIN
select e.employee_id, e.name, d.department_name
     from employees e
     LEFT JOIN
     departments d
     on e.department_id=d.department_id;
+-------------+--------+-----------------+
| employee_id | name   | department_name |
+-------------+--------+-----------------+
|         106 | Neha   | Sales           |
|        1011 | Ajay   | Production      |
|        1022 | Keerti | IT              |
|        1033 | Sneha  | Marketing       |
|        1044 | Juli   | IT              |
|        1055 | Ramaya | Marketing       |
|        1077 | Harsh  | Analysis        |
|        1088 | Yashni | IT              |
+-------------+--------+-----------------+

--RIGHT JOIN
select e.employee_id, e.name, d.department_name
    - from employees e
     RIGHT JOIN
     departments d
     on e.department_id=d.department_id;
+-------------+--------+-----------------+
| employee_id | name   | department_name |
+-------------+--------+-----------------+
|         106 | Neha   | Sales           |
|        1033 | Sneha  | Marketing       |
|        1055 | Ramaya | Marketing       |
|        1077 | Harsh  | Analysis        |
|        1011 | Ajay   | Production      |
|        NULL | NULL   | Manufacturing   |
|        1022 | Keerti | IT              |
|        1044 | Juli   | IT              |
|        1088 | Yashni | IT              |
+-------------+--------+-----------------+

