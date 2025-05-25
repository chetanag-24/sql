create database college8;
use college8;
create table student(
id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
marks INT
 );
 INSERT into student
 (id,name ,age,marks)
 VALUES
 ( 1,"monu",23,90),
 (2,"sonu",21,98),
 (3,"somu",22,99);
 SELECT * from student;
 GRANT SELECT,insert
 ON student
 TO monu;
 CREATE USER 'monu'@'localhost' IDENTIFIED BY 'some_password';
 GRANT SELECT, INSERT ON student TO 'monu'@'localhost';
 
 SELECT * from student;
 INSERT INTO student values(4,"amen",24,90);
 
 REVOKE SELECT,INSERT 
 on student
 FROM monu@localhost;
 SELECT * FROM STUDENT
 


 
 
