--Foreign Key
--Foreign key and primary key
--create table studDetails with field rollno, stdname, stdemail, address and second table marksheet with fields marksheetid, physics, biology, maths, rollno

--table with studDetails with rollno as primary key
create table studDetails(
    -> rollno int not null auto_increment,
    -> stdname varchar(30) not null,
    -> stdemail varchar(40),
    -> address varchar(30),
    -> primary key(rollno)
    -> );

insert into studDetails(stdname,stdemail,address) values
    -> ('geeta','geeta@gmail.com','panvel'),
    -> ('feya','feya22@gmail.com','kalyan'),
    -> ('ram','ram111@gmail.com','pune'),
    -> ('avanti','ava5555@gmail.com','ghatkopar');

 select * from studDetails;
+--------+---------+-------------------+-----------+
| rollno | stdname | stdemail          | address   |
+--------+---------+-------------------+-----------+
|      1 | geeta   | geeta@gmail.com   | panvel    |
|      2 | feya    | feya22@gmail.com  | kalyan    |
|      3 | ram     | ram111@gmail.com  | pune      |
|      4 | avanti  | ava5555@gmail.com | ghatkopar |
+--------+---------+-------------------+-----------+

--table marksheet with rollno as foreign key and marksheetid as primary key
create table marksheet(
    -> marksheetid int not null,
    -> physics int,
    -> biology int,
    -> maths int,
    -> primary key(marksheetid),
    -> rollno int,
    -> foreign key(rollno) references studDetails(rollno)
    -> );

insert into marksheet values
    -> (11,78,98,78,4),
    -> (22,98,89,67,2),
    -> (33,89,88,86,3),
    -> (44,90,56,58,1);

select * from marksheet;
+-------------+---------+---------+-------+--------+
| marksheetid | physics | biology | maths | rollno |
+-------------+---------+---------+-------+--------+
|          11 |      78 |      98 |    78 |      4 |
|          22 |      98 |      89 |    67 |      2 |
|          33 |      89 |      88 |    86 |      3 |
|          44 |      90 |      56 |    58 |      1 |
+-------------+---------+---------+-------+--------+
