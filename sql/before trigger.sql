create database triggers;
use triggers;
show tables;

#befor insert trigger
create table customers
(cust_id int,age int, name varchar(30));
 
delimiter //
 create trigger age_verify
 before insert on customers
 for each row
 if new.age <0 then set new.age=0;
 end if;//
 
 insert into customers 
 values(101,27,"james"),
 (102,-40,"Ammy"),
 (103,32,"BEN"),
 (104,-39,"Angela");
 
 select * from cutomers;
 
 

 
 