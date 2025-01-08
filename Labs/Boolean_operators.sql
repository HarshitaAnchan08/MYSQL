'''
Q.1)create Employee table with Eid,Ename, Salary and department and add data into it. Now Imagine you work for a company with various departments, and there is a need to analyze employee salaries within the
  IT department.
Write a query to retrieve all employees from the "employee" table who have a salary greater than 50000 and are in the 'IT' department Hint: Use AND operator to retrieve details.

Q.2) Determine the average age of employees in each department from the "employee" table. We have an "Employee" table with the following columns: Eid, Ename, department, and salary and you want to find the 
  average salary for each department.
  '''
--create table Employee
create table Employee(
    -> Eid int primary key,
    -> Ename varchar(30),
    -> Salary decimal(10,2),
    -> Department varchar(30) not null,
    -> Age int not null
    -> );

--Insert data
insert into Employee values
    -> (1,'Roshni',10000,'IT',23),
    -> (2,'Geeta',20000,'IT',26),
    -> (3,'Jai',27000,'Sales',34),
    -> (4,'Sita',35000,'Production',54),
    -> (5,'Rajveer',18000,'IT',36),
    -> (6,'Kirti',60000,'Sales',45),
    -> (7,'Yashi',80000,'Production',48),
    -> (8,'Lata',65000,'Sales',51);

insert into Employee values
    -> (9,'Juhi',70000,'IT',28),
    -> (10,'Laksh',80000,'IT',45);

--Solution to Question 1

select * from Employee where Salary>50000 AND Department='IT';
+-----+-------+----------+------------+-----+
| Eid | Ename | Salary   | Department | Age |
+-----+-------+----------+------------+-----+
|   9 | Juhi  | 70000.00 | IT         |  28 |
|  10 | Laksh | 80000.00 | IT         |  45 |
+-----+-------+----------+------------+-----+

--Solution to Question 2
  
-- Determining the Average Age of employees according to department; 
Select Department, AVG(Age) as Average_Age from Employee GROUP BY Department;
+------------+-------------+
| Department | Average_Age |
+------------+-------------+
| IT         |     31.6000 |
| Sales      |     43.3333 |
| Production |     51.0000 |
+------------+-------------+
  
-- Determining the Average Salary of employees according to department;
Select Department, AVG(Salary) as Average_Salary from Employee GROUP BY Department;
+------------+----------------+
| Department | Average_Salary |
+------------+----------------+
| IT         |   39600.000000 |
| Sales      |   50666.666667 |
| Production |   57500.000000 |
+------------+----------------+
