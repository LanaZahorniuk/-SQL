create database gt210823;

use gt210823;

-- Создание таблицы 
create table products (
title varchar(128),
price int,
count int
);

insert into products
values ('Apple', 200, 5),
('Banana', 250, 10),
('Orange', 300, 2);

select * from products;