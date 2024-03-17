-- Создать таблицу employees;
-- employeeid целое число первичный ключ автоинкремент;
-- fname строка не null,
-- lastname строка не null,
-- email строка уникальное,
-- phone строка начинается с +
   
   use gt210823;
   
   create table employees (
   employeeid int primary key auto_increment,
   fname varchar(128) not null,
   lastname varchar(128) not null,
   email varchar(128) unique,
   phone varchar(128) check (phone like '+%')
   );
   
select * from employees;
   
-- Добавить поле salary numeric(9, 2)
alter table employees
add salary numeric(9,2);

-- Ойййй, нет, зарплата должна быть целым числом. Изменить тип salary на integer.
alter table employees
modify salary int;

-- Переименовать поле fname на first_name
alter table employees
change fname first_name varchar(128) not null;

-- Удалить поле phone
alter table employees
drop phone;

-- Добавить поле department строка не null
alter table employees
add department varchar (128) not null;











