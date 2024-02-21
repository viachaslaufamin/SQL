use shop;
Create table If Not Exists Sales (saleid int, productid int, year int, quantity int, price int);
Create table If Not Exists Product (productid int, productname varchar(10));
insert into Sales (saleid, productid, year, quantity, price) values ('1', '100', '2008', '10', '5000');
insert into Sales (saleid, productid, year, quantity, price) values ('2', '100', '2009', '12', '5000');
insert into Sales (saleid, productid, year, quantity, price) values ('7', '200', '2011', '15', '9000');
insert into Product (productid, productname) values ('100', 'Nokia');
insert into Product (productid, productname) values ('200', 'Apple');
insert into Product (productid, productname) values ('300', 'Samsung');

SELECT *
from Sales;

SELECT *
FROM Product;

SELECT 
t1.productname,
t2.year,
t2.price
FROM Product AS t1
INNER JOIN Sales AS t2
ON t1.productid = t2.productid;

use uni;

SELECT *
FROM courses;

SELECT *
FROM students;

SELECT *
FROM teachers;

SELECT *
FROM competencies;

SELECT *
FROM students2courses;

SELECT *
FROM teachers2competencies;


SELECT
t1.title
FROM competencies AS t1
LEFT JOIN teachers2competencies AS t2
ON t1.id = t2.competencies_id
LEFT JOIN teachers AS t3
ON t2.teacher_id = t3.id
WHERE t3.name IS NULL;


SELECT
t1.title,
t2.name
FROM courses AS t1
INNER JOIN students AS t2
ON t1.headman_id = t2.id;

SELECT
t1.name,
t4.name
FROM students AS t1
INNER JOIN students2courses AS t2 
ON t1.id = t2.student_id
INNER JOIN courses AS t3
ON t2.course_id = t3.id
INNER JOIN students AS t4
ON t4.id= t3.headman_id;

