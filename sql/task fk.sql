create database task;
use task;
create table users(
id int primary key,
firstname varchar(20),
lastname varchar(30),
mobile int,
email varchar(30)
);
create table address(
id int primary key,
country  varchar(20),
state varchar(20),
mandal varchar(30),
village varchar(30),
pincode int,
user_id int,
foreign key(user_id) references users(id)
);
-- create table orders(
-- id int primary key,
-- user_id int,
-- product varchar(30),
-- created_date datetime,
-- delivery_date datetime,
-- addresss varchar(30)
-- foreign key(user_id) references users(id),
-- foreign key(addresss) references address,
-- foreign key
-- );
create table categories(
id int primary key,
name varchar(20),
description TEXT
);
drop table categories;
create table subcategories(
id int primary key,
name varchar(20),
description text,
foreign key (category_id) references categories(id)
);
create table products(
id int primary key,
name varchar(20),
description text,
category_id1 int,
foreign key(category_id1) references categories(id)
);
create table cart(
id int primary key,
user_id int,
product varchar(30),
foreign key (user_id) references users(id),
foreign key (product)  references products(id)
);
create table wishlist(
id int primary key,
user_id int,
product varchar(30),
foreign key (user_id) references users(id),
foreign key (product)  references products(id)
);
create table orders(
id int primary key,
user_id int,
product varchar(30),
createddate datetime,
deliverydate datetime,
address varchar(200),
foreign key (user_id) references users(id),
foreign key (address)  references address(id),
foreign  key (product) references products(id)
);










