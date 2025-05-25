create  database college9;
use college9;
create table student(
name VARCHAR(50),
marks INT 
);
START transaction;
INSERT INTO student
(name,marks)
VALUES
("JOHN",79),
("SHERLOCK ", 65),
("SUZAN",70);

SET SQL_SAFE_UPDATES = 0;
UPDATE student
SET NAME = "SHERLOCK"
WHERE NAME = "JOLLY"; 
SELECT * from student;
rollback;
INSERT into STUDENT 
VALUES ('Jack', 95);

Commit;

UPDATE student
SET NAME= "ROSSIE"
WHERE marks= 70;

SAVEPOINT A;

INSERT INTO STUDENT 
VALUES ("ZACK", 76);

SAVEPOINT  B;

INSERT INTO STUDENT 
VALUES ("BRUNO", 85);

Savepoint C;

SELECT * 
FROM STUDENT; 

ROLLBACK to A;
ROLLBACK to B;
