#CRUD OPERATIONS in MYSQL

#using database college
use college;

#creating table student - Create command
create table student(
     rollno int primary key,
     name varchar(30),
     city varchar(30),
     dob date,
     course varchar(30),
     grade varchar(2)
     );

#inserting data into table
 insert into student (rollno, name, city, dob, course, grade) values
     (1,"Sita","Pune","2004-08-12","Java","A"),
     (2,"Reema","Lucknow","2003-09-14","Python","A"),
     (3,"Jai","Delhi","2002-08-18","Java","B"),
     (4,"Kirti","Mumbai","2002-12-11","Python","A"),
     (5,"Deema","Pune","1999-05-07","Javascript","C"),
     (6,"Lily","Mumbai","2000-09-27","C#","A");

#Retrieve data- Read command
select * from student;
#output
+--------+-------+---------+------------+------------+-------+
| rollno | name  | city    | dob        | course     | grade |
+--------+-------+---------+------------+------------+-------+
|      1 | Sita  | Pune    | 2004-08-12 | Java       | A     |
|      2 | Reema | Lucknow | 2003-09-14 | Python     | A     |
|      3 | Jai   | Delhi   | 2002-08-18 | Java       | B     |
|      4 | Kirti | Mumbai  | 2002-12-11 | Python     | A     |
|      5 | Deema | Pune    | 1999-05-07 | Javascript | C     |
|      6 | Lily  | Mumbai  | 2000-09-27 | C#         | A     |
+--------+-------+---------+------------+------------+-------+

#Update command
 update student set name="Deepthi" where rollno=5;
 update student set course="C#" where rollno=2;

select * from student;
#output
+--------+---------+---------+------------+------------+-------+
| rollno | name    | city    | dob        | course     | grade |
+--------+---------+---------+------------+------------+-------+
|      1 | Sita    | Pune    | 2004-08-12 | Java       | A     |
|      2 | Reema   | Lucknow | 2003-09-14 | C#         | A     |
|      3 | Jai     | Delhi   | 2002-08-18 | Java       | B     |
|      4 | Kirti   | Mumbai  | 2002-12-11 | Python     | A     |
|      5 | Deepthi | Pune    | 1999-05-07 | Javascript | C     |
|      6 | Lily    | Mumbai  | 2000-09-27 | C#         | A     |
+--------+---------+---------+------------+------------+-------+

#Delete command
delete from student where rollno=6; 
delete from student where rollno=4;

select * from student;
#output
+--------+---------+---------+------------+------------+-------+
| rollno | name    | city    | dob        | course     | grade |
+--------+---------+---------+------------+------------+-------+
|      1 | Sita    | Pune    | 2004-08-12 | Java       | A     |
|      2 | Reema   | Lucknow | 2003-09-14 | C#         | A     |
|      3 | Jai     | Delhi   | 2002-08-18 | Java       | B     |
|      5 | Deepthi | Pune    | 1999-05-07 | Javascript | C     |
+--------+---------+---------+------------+------------+-------+
