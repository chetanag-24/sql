create database lionn;
use lionn;
 create table employees
 (empd_id int primary key,
 emp_name varchar(25),age int,
 salary float);
  insert into employees values
  (101,"jimmy",35,70000),
  (102,"Shane",30,53000),
  (103,"Marry",28,62000),
  (104,"Dwayne",37,57000),
  (105,"Sara",32,72000),
  (106,"Ammy",35,80000),
  (107,"Jack",40,100000);
  

  
   -- create trigger upd_trigger
--    before update 
--    on employees
--    for each row
--    begin
--    if new.salary =10000 then 
--    set new.salary = 85000 
--    elseif new.salary< 10000 then 
--    set new.salary =72000
--    end if
--    end 
   
   DELIMITER //

CREATE TRIGGER upd_trigger
BEFORE UPDATE 
ON employees
FOR EACH ROW
BEGIN
   IF NEW.salary = 10000 THEN 
      SET NEW.salary = 85000;
   ELSEIF NEW.salary < 10000 THEN 
      SET NEW.salary = 72000;
   END IF;
END;
//

DELIMITER ;
SET SQL_SAFE_UPDATES = 0;

update employees
set salary =8000;
select * from employees;

#before delete

create table salary(
eid int primary key,
validfrom date not null,
amount float not null);


insert into salary (eid , validfrom , amount)
values(101,'2005-05-01',55000),
(102,'2007-08-01',68000),
(103,'2006-09-01',75000);

select * from salary;

create table salarydel( id int primary key auto_increment,
eid int, validform date not null,
amount float not null,
deletedat timestamp default now());

delimiter $$

create trigger salary_delete
before delete
on salary 
for each row
begin
insert into salarydel(eid, validfrom,amount)
values(old.eid,old.validform,old.amount);
end $$

delimiter ;

delete from salary

where eid=103;
select * from salarydel;


