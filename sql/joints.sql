CREATE DATABASE college5;
use college5;
CREATE table student(
id INT PRIMARY KEY,
name varchar(20)
);

INSERT into student (id,name)
VALUES
(101,"adam"),
(102,"bob"),
(103,"casey");

CREATE table course (
id int primary key,
course varchar(50)
);

INSERT into course (id,course)
VALUES
(102,"english"),
(105,"math"),
(103,"science"),
(107,"cs");

select * from course;
select * from student;

SELECT * 
FROM student as s
INNER JOIN  course  as c
on s.id=c.id;

SELECT * 
FROM student as s
LEFT JOIN  course  as c
on s.id=c.id
UNION
SELECT * 
FROM student as s
RIGHT JOIN  course  as c
on s.id=c.id;





















