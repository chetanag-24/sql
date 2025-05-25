CREATE DATABASE college2;
USE college2;
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
 
 SELECT MAX(marks)FROM student;
 SELECT MIN(marks)FROM student;
  SELECT AVG(marks)FROM student;
  SELECT COUNT(name) FROM student;
  SELECT SUM(marks)FROM student;
  SELECT city FROM student GROUP BY city;
  SELECT city ,COUNT (rollno)FROM student GROUP BY city;
   SELECT city ,AVG (marks)FROM student GROUP BY city;
   SELECT city ,AVG (marks)FROM student GROUP BY city ORDER BY  avg(marks);
SELECT city ,COUNT(rollno)FROM student GROUP BY city HAVING MAX(marks);
