--Foreign Key
--Foreign key and Primary key
  
--creating table city with cid as primary key
create table city(
     cid int not null auto_increment,
     cityname varchar(20) not null,
     primary key(cid)
     );

insert into city (cityname) values("Banglore");

insert into city(cityname) values
     ('Mumbai'),
     ('Banglore'),
     ('Delhi'),
     ('Chennai'),
     ('Kolkata'),
     ('Hyderabad');

select * from city;
+-----+-----------+
| cid | cityname  |
+-----+-----------+
|   1 | Banglore  |
|   2 | Mumbai    |
|   3 | Banglore  |
|   4 | Delhi     |
|   5 | Chennai   |
|   6 | Kolkata   |
|   7 | Hyderabad |
+-----+-----------+

--creating table customer with cid as foreign key and id as primary key
 create table customer(
     id int not null,
     firstname varchar(30),
     lastname varchar(40),
     cityid int not null,
     primary key(id),
     foreign key(cityid) references city(cid)
     );

insert into customer (id,firstname,lastname,cityid) values
     (1,"ram","patra",4),
     (3,"pooja","yadav",2),
     (7,"ramesh","sutar",6);

select * from customer;
+----+-----------+----------+--------+
| id | firstname | lastname | cityid |
+----+-----------+----------+--------+
|  1 | ram       | patra    |      4 |
|  3 | pooja     | yadav    |      2 |
|  7 | ramesh    | sutar    |      6 |
+----+-----------+----------+--------+

