

-- https://github.com/annykh/genTech/blob/main/hr1.txt

select * from employees;

-- select * from employees;
-- select * from jobs;
-- select * from departments;

select first_name, last_name, salary 
from employees;


-- Вывести job_title, max_salary из таблицы jobs.
select job_title, max_salary
from jobs;

-- Вывести сотрудников(first_name, last_name, salary) у которых зарплата больше 10000
select first_name, last_name, salary
from employees
where salary > 10000;


-- найти всех сотрудников, c job_id = IT_PROG
select * from employees
where job_id = 'IT_PROG';

-- найти сотрудников, с зп от 10 000 до 20 000 (включая концы)

-- select * from employees
-- where salary>=10000 and salary<=20000;

select * from employees
where salary between 10000 and 20000;

-- найти сотрудников из департаментов 60, 30 или 100.
select * from employees
where department_id = 60 or department_id = 30 or department_id = 100;

-- найти сотрудников из департаментов 60, 30 или 100.

-- select * from employees
-- where department_id = 60 or department_id = 30 or department_id = 100;

select * from employees
where department_id in (60, 30, 100);

-- Найти сотрудников из департамента 100 с зарплатой выше 11000. Вывести только имя, фамилию, зарплату и департамент сотрудника
-- Найти сотрудников из департамента 100 с зарплатой выше 11000. 
-- Вывести только имя, фамилию, зарплату и департамент сотрудника.

select first_name, last_name, salary, department_id
from employees
where department_id = 100 and salary > 11000;

-- NOT 
-- найти сотрудников которые не из департаментов 60, 30 или 100.

select * from employees
where department_id not in (60, 30, 100);

select * from employees
where not(department_id = 60 or department_id = 30 or department_id = 100);


-- LIKE

-- select * from departments
-- where department_name like 'IT';
-- where department_name = 'IT';

select * from departments
where department_name like '%IT';

select * from departments
where department_name like 'IT%';

select * from departments
where department_name like '%IT%';

select * from departments
where department_name like 'A%N';


-- Найти всех сотрудников, чья фамилия начинается на букву L
select * from employees
where last_name like 'L%';


-- Найти сотрудников у которых имя состоит из 5 букв
select * from employees
where first_name like '_____';


-- Найти сотрудников у которых имя состоит из 5 букв

-- select * from employees
-- where first_name like '_____';

-- Найти сотрудников у которых предпоследняя буква в фамилии N
-- select * from employees
-- where last_name like '%n_';
-- То в выборку входят сотр. у которых фамилия начинается на N


select * from employees
where last_name like '%_n_';



-- Вывести сотрудников, у которых в фамилии в середине слова встречаются 
-- сочетания ‘kk’ или ‘ll’

select * from employees
where last_name like '%_ll_%' or last_name like '%_kk_%';



-- Вывести сотрудников у которых мейл состоит из 6 букв и начинается с K
select * from employees
where email like 'k_____';



-- Вывести зарплату сотрудника с именем ‘Lex’ и фамилией ‘De Haan'

select salary from employees
where first_name like 'Lex' and last_name like 'De Haan';


-- is null / is not null

-- select * from employees
-- where commission_pct is not null;

select * from employees
where commission_pct is null;


-- Вывести всех сотрудников с job_id ‘FI_ACCOUNT’ зарабатывающих меньше 8000, 
-- которые не платят комиссии

select * from employees
where job_id = 'FI_ACCOUNT' and salary < 8000 and commission_pct is NULL;