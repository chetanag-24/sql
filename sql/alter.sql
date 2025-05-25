create database college4;
use college4;
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
 
 SELECT * FROM student;
 ALTER TABLE stu
 ADD COLUMN age INT NOT NULL DEFAULT 19;
 
 ALTER TABLE student
 DROP COLUMN age ;
 
 ALTER TABLE stu
 CHANGE age stu_age INT;
 
 ALTER TABLE student
 RENAME TO stu;
 
 ALTER TABLE stu
 MODIFY COLUMN age VARCHAR(2);
 
 INSERT INTO stu
 (rollno,name ,marks,stu_age)
 VALUES
 (107,"gargi",68,100);
 
 TRUNCATE TABLE stu;
 
 ALTER TABLE student 
 CHANGE name  full_name VARCHAR(50);
 
 DELETE FROM student
 WHERE marks< 80;
 
 ALTER TABLE student 
 DROP COLUMN grade;
 
 
 
 
 