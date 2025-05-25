CREATE DATABASE college7;
USE college7;
CREATE TABLE college7.student(
rollno INT PRIMARY KEY,
name VARCHAR(20),
marks INT 
);
INSERT INTO college7.student
(rollno,name,marks)
VALUES
(1,"chet",85),
(2,"chetan",80),
(3,"chetana",90);

SELECT * FROM college7.student;

SELECT  name,marks
FROM college7.student
WHERE marks>(SELECT AVG(marks) FROM college7.student);

SELECT name ,marks
FROM college7.student
WHERE rollno IN(SELECT rollno FROM college7.student WHERE rollno %2 = 0);

SELECT MAX(marks)
FROM 
(SELECT *
FROM college7.student
WHERE marks=80) as temp;

-- CREATE VIEW view1 as
-- SELECT rollno,name,marks FROM college7.student;
-- SELECT * FROM view1
-- WHERE marks>82;


