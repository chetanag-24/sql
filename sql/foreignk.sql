CREATE DATABASE college3;
use college3;
create table student(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR (20)
);
 INSERT INTO student
 (rollno ,name,marks,grade,city)
 VALUES
 (101,"anil",78,"C","Pune"),
 (102,"bhumika",93,"A","Mumbai"),
 (103,"chetan",85,"B","Mumbai"),
 (104,"dhruv",96,"A","Delhi"),
 (105,"emanuel",12,"D","Delhi");
 
 CREATE TABLE  dept(,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
 id INT PRIMARY KEY,
 name varchar(50)
);
INSERT INTO dept
VALUES
(101,"english"),
(102,"IT");


UPDATE dept
SET id=103
where id =102;
 CREATE TABLE teacher(
 id INT PRIMARY KEY,
 name varchar(50),
 dept_id INT,
 FOREIGN KEY(dept_id) REFERENCES dept(id)
 ON UPDATE CASCADE
 ON DELETE CASCADE
  );
  
  INSERT INTO teacher
  VALUES
  (101,"Adam",101),
(102,"Eve",102);
SELECT * FROM teacher;

  

UPDATE student SET grade = "O" WHERE grade = "A" ;
SET SQL_SAFE_UPDATES = 0;
SELECT *FROM student;

update student set marks =85 ,grade ="B" where rollno=105;
update student set marks=marks+1;
 

DELETE from student where marks <101;