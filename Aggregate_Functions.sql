#Aggregate Function

#creating table
create table emp(
     empid int primary key,
     name varchar(30),
     salary decimal(10,2)
     );

#inserting data
insert into emp (empid, name, salary) values
     (1011,"Aisha",15000),
     (1022,"Bina",20000),
     (1033,"Cindy",38000),
     (1044,"Diya",50000),
     (1055,"Enamual",42000);

#retrive data
select * from emp;
+-------+---------+----------+
| empid | name    | salary   |
+-------+---------+----------+
|  1011 | Aisha   | 15000.00 |
|  1022 | Bina    | 20000.00 |
|  1033 | Cindy   | 38000.00 |
|  1044 | Diya    | 50000.00 |
|  1055 | Enamual | 42000.00 |
+-------+---------+----------+

#COUNT() Function
select count(*) from emp;
+----------+
| count(*) |
+----------+
|        5 |
+----------+

#SUM() Function
select SUM(salary) as Total_Sum from emp;
+-----------+
| Total_Sum |
+-----------+
| 165000.00 |
+-----------+

#AVG() Function
select AVG(salary) as Average_Salary from emp;
+----------------+
| Average_Salary |
+----------------+
|   33000.000000 |
+----------------+

#MAX() Function
select Max(salary) as Maximum_Salary from emp;
+----------------+
| Maximum_Salary |
+----------------+
|       50000.00 |
+----------------+

#MIN() Function
select Min(salary) as Minimum_Salary from emp;
+----------------+
| Minimum_Salary |
+----------------+
|       15000.00 |
+----------------+

