CREATE DATABASE college;
USE college;

CREATE TABLE college.student(
rollno INT PRIMARY KEY,
name VARCHAR(50)
);
SELECT * FROM college.student;
INSERT INTO college.student
(rollno,name)
VALUES
(101,"chetana"),
(102,"cheeku");
INSERT INTO college.student VALUES(103,"chinki");

CREATE DATABASE company;
USE company;
CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(50),
salary INT
);

SELECT * FROM employee;
INSERT INTO employee
(id,name,salary)
VALUES

(1,"adam",25000),
(2,"bob",20000),
(3,"casey",35000);

INSERT INTO employee VALUES(4,"HARRY",40000);

CREATE TABLE temp1(
id INT UNIQUE          
);

INSERT INTO temp1 VALUES(101);
INSERT INTO temp1 VALUES(101);

SELECT * FROM temp1;

CREATE TABLE company.emp(
id INT,
salary INT default 25000
);

INSERT INTO company.emp(id) VALUES(101);

SELECT *FROM company.emp;

CREATE TABLE company.city(
id INT PRIMARY KEY,
city VARCHAR(50),
age INT,
CONSTRAINT  age_check CHECK (age>=18 AND city="Delhi")
);

INSERT INTO company.city VALUES(1,"kiki",17);
INSERT INTO company.city VALUES(1,"Delhi",18);
SELECT * FROM company.city;