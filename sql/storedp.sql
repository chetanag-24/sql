create database  college10;
use college10;
create table player(
id int primary key,
name varchar(30),
country varchar(30),
goals int
);

insert into player
(id,name,country,goals)
values
(101,"sam","USA",6),
(103,"Daniel","England",7),
(104,"Anthony","France",10),
(102,"Bruno","Sweaden",6),
(105,"Anu","USSR",9),
(106,"Rasna","UK",8);


select * from player;

delimiter &&
create procedure top_players()
begin
select name,country,goals
from player where goals >6;
End&& 

delimiter ;
DROP PROCEDURE IF EXISTS top_players;


call top_players();

#SP using IN


create  table emp1(
name varchar(20),
 age int ,
sex char,

city varchar(30),
 salary int );
 
insert into emp1
(name,age,sex,city,salary)
values
("sam", 21,'M',"USA",60000),
("Daniel",22,'F',"England",70000),
("Anthony",23,'M',"France",100000),
("Bruno",25,'F',"Sweaden",6500),
("Anu",24,'F',"USSR",9000000),
("Rasna",23,'F',"UK",80000);

delimiter //
 create procedure sp_sortBySalary(IN var int)
 begin
 select name , age, salary from emp1
 order by salary desc limit var;
 end//
 delimiter ;
 call sp_sortBySalary(3);

delimiter //
 create procedure update_salary (IN temp_name varchar(20),
 new_salary float)
 begin 
 update emp1 set
 salary = new_salary where name= temp_name ;
 end; //
 
 select * from emp1;
 call update_salary('Rasna',700000);
 
 
 #sp using OUT
 
 delimiter //
  create procedure sp_CountEmployees(OUT Total_Emps int)
  begin 
  select count (name) into Total_Emps from emp1
  where sex='F' ;
  end //
  delimiter ;
SET SQL_SAFE_UPDATES = 1;
 
  call sp_CountEmployees(@F_emp);
  select @F_emp as female_emps;