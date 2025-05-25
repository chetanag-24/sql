create database tiger;
use tiger;
-- Create the customers1 table
CREATE TABLE customers1 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    email VARCHAR(30),
    birth DATE


);

create table message(
id int auto_increment,
message_id int,
message varchar(300) not null,
primary key(id,message_id));

Delimiter //

create trigger
check_null_dob
after insert

on customers1 
for each row
begin
if new.birth is null then 
insert into message (message_id,message)
values(new.id,concat('hi', new.name ,"please update ypur date of birth"));
end if;
end//


insert into customers1(name,email,birth)
values("Nancy","nancy@abc.com",NULL),
("Ronald","ronald@xyz.com","1998-11-16"),
("CHRIS","chris@xyz.com","1997-08-20"),
("Alice","alice@anc.com",NULL);

SELECT * from message; 

SELECT * FROM customers1;
