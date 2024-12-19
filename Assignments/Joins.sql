#JOINS IN SQL
#INNER JOIN, LEFT JOIN AND RIGHT JOIN

create table books(
     book_id int primary key,
     title varchar(30),
     author_id int
     );

 create table authors(
     author_id int primary key,
     name varchar(30)
     );

insert into books(book_id, title,author_id) values
     (1,"The Great Gatsby",101),
     (2,"To Kill a Mockingbird",102),
     (3,"Moby-Dick",103),
     (4,"The Catcher in the Rye",104),
     (5,"Greek Mythology",null);

insert into authors(author_id, name) values
     (101,"James bond"),
     (102,"Gemmy lord"),
     (103,"Vomy john"),
     (104,"Ravi jadhav");

 select * from books;
+---------+------------------------+-----------+
| book_id | title                  | author_id |
+---------+------------------------+-----------+
|       1 | The Great Gatsby       |       101 |
|       2 | To Kill a Mockingbird  |       102 |
|       3 | Moby-Dick              |       103 |
|       4 | The Catcher in the Rye |       104 |
|       5 | Greek Mythology        |      NULL |
+---------+------------------------+-----------+

select * from authors;
+-----------+-------------+
| author_id | name        |
+-----------+-------------+
|       101 | James bond  |
|       102 | Gemmy lord  |
|       103 | Vomy john   |
|       104 | Ravi jadhav |
+-----------+-------------+

alter table books add column price float;

update books set price=23.45 where book_id=1;

update books set price=43.45 where book_id=2;

update books set price=81.45 where book_id=3;

update books set price=71.45 where book_id=4;

update books set price=91.45 where book_id=5;

select * from books;
+---------+------------------------+-----------+-------+
| book_id | title                  | author_id | price |
+---------+------------------------+-----------+-------+
|       1 | The Great Gatsby       |       101 | 23.45 |
|       2 | To Kill a Mockingbird  |       102 | 43.45 |
|       3 | Moby-Dick              |       103 | 81.45 |
|       4 | The Catcher in the Rye |       104 | 71.45 |
|       5 | Greek Mythology        |      NULL | 91.45 |
+---------+------------------------+-----------+-------+

#INNER JOIN
select books.title, books.price, authors.name
     from books
     inner join authors
     on books.author_id=authors.author_id;
+------------------------+-------+-------------+
| title                  | price | name        |
+------------------------+-------+-------------+
| The Great Gatsby       | 23.45 | James bond  |
| To Kill a Mockingbird  | 43.45 | Gemmy lord  |
| Moby-Dick              | 81.45 | Vomy john   |
| The Catcher in the Rye | 71.45 | Ravi jadhav |
+------------------------+-------+-------------+

#LEFT JOIN
select books.title, books.price, authors.name
     from books
     left join authors
     on books.author_id=authors.author_id;
+------------------------+-------+-------------+
| title                  | price | name        |
+------------------------+-------+-------------+
| The Great Gatsby       | 23.45 | James bond  |
| To Kill a Mockingbird  | 43.45 | Gemmy lord  |
| Moby-Dick              | 81.45 | Vomy john   |
| The Catcher in the Rye | 71.45 | Ravi jadhav |
| Greek Mythology        | 91.45 | NULL        |
+------------------------+-------+-------------+

#RIGHT JOIN
 select books.title, books.price, authors.name
     from books
     right join authors
     on books.author_id=authors.author_id;
+------------------------+-------+-------------+
| title                  | price | name        |
+------------------------+-------+-------------+
| The Great Gatsby       | 23.45 | James bond  |
| To Kill a Mockingbird  | 43.45 | Gemmy lord  |
| Moby-Dick              | 81.45 | Vomy john   |
| The Catcher in the Rye | 71.45 | Ravi jadhav |
+------------------------+-------+-------------+

