CREATE DATABASE college1;
USE college1;
 CREATE TABLE student(
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
 (105,"emanuel",12,"D","Delhi"),
 (106,"Farah",82,"B","Delhi");
 
 SELECT  name ,marks FROM student;
 DELETE FROM student WHERE rollno = 101;
 SELECT rollno FROM student;
 Select distinct city FROM student;
 Select * from student;
 SELECT * FROM student WHERE marks>80;
SELECT * FROM student WHERE city="DELHI";
SELECT * FROM student WHERE marks>80 AND city="Mumbai";
SELECT * FROM student WHERE marks =85; 
SELECT * FROM student WHERE marks>80 OR city="Mumbai";
 SELECT * FROM student WHERE marks  between 80 AND 90;
 SELECT * FROM student WHERE city  IN("Delhi","Mumbai");
  SELECT * FROM student WHERE city  IN("Ding ");
  SELECT * FROM student WHERE city  NOT IN("Delhi","Mumbai");
SELECT * FROM student LIMIT 3;
SELECT * FROM student ORDER BY marks ASC;
SELECT * FROM student ORDER BY marks DESC LIMIT 3;
 
 