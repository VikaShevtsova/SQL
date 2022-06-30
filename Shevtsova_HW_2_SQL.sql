--СОЗДАНИЕ ТАБЛИЦ.

--1. Таблица employees.
-- 1.1 Создать таблицу employees:
--   id. serial,  primary key,
--   employee_name. Varchar(50), not null.

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

select * from employees;

--1.2	Наполнить таблицу employee 70 строками.

insert into  employees(employee_name)
values ('Ivanova Sveta'),
	   ('Moroz Katya'),
	   ('Kovalchuk Ira'),
	   ('Kozlov Ivan'),
	   ('Stepanov Kirill'),
	   ('Kurulenko Anna'),
	   ('Volkova Sveta'),
	   ('Shevchenko Inna'),
	   ('Smirnova Nastya'),
	   ('Bogdanovich Dima'),
	   ('Kovalyov Yura'),
	   ('Minitskiy Oleg'),
	   ('Tumanova Galina'),
	   ('Pinchuk Dima'),
	   ('Sidorenko Anna'),
	   ('Baranov Kirill'),
	   ('Popov Nikita'),
	   ('Mironova Vika'),
	   ('Orlova Vera'),
	   ('Kulik Dima'),
	   ('Golub Sergey'),
	   ('Makarov Victor'),
	   ('Lis Nikita'),
	   ('Matusevich Lena'),
	   ('Demidovich Alex'),
	   ('Titova Yulya'),
	   ('Volk Kirill'),
	   ('Stepanova Mariya'),
	   ('Shulga Sveta'),
	   ('Golovach Dima'),
	   ('Vishnevskaya  Ira'),
	   ('Naumenko Natasha'),
	   ('Shpak Vera'),
	   ('Belova Lena'),
	   ('Ivanova Anna'),
	   ('Kasperovich Ivan'),
	   ('Popova Sveta'),
	   ('Ignatenko Toma'),
	   ('Titov Alexey'),
	   ('Prokopenko Viktor'),
	   ('Zhavrid Maxim'),
	   ('Lebedeva Kristina'),
	   ('Savich Natasha'),
	   ('Kachan Andrey'),
	   ('Babich Kirill'),
	   ('Verenich Nikita'),
	   ('Polinov Kirill'),
	   ('Polikiv Anton'),
	   ('Nikolaeva Viola'),
	   ('Komar Kristina'),
	   ('Soroka Alyona'),
	   ('Grinevich Stepan'),
	   ('Savitskiy Kirill'),
	   ('Popova Nastya'),
	   ('Nikitenko Sveta'),
	   ('Komar Ira'),
	   ('Kulik Dasha'),
	   ('Kruglik Diana'),
	   ('Savich Ivan'),
	   ('Egorov Andrey'),
	   ('Kulesh Alex'),
	   ('Kruk Masha'),
	   ('Belous Yulya'),
	   ('Marchuk Inga'),
	   ('Sushko Marina'),
	   ('Kolesnik Ilya'),
	   ('Tarasenko Vadim'),
	   ('Karpov Sergey'),
	   ('Vasilev Igor'),
	   ('Golubeva Sveta');

--2. Таблица salary.

--2.1 Создать таблицу salary:
--   id. Serial  primary key,
--   monthly_salary. Int, not null.

create table salaryy (
	id serial primary key,
	monthly_salary int not null
);

--2.2	Наполнить таблицу salary 15 строками.

insert into salaryy (monthly_salary)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400),
	   (2500);
	  
	  
select * from salaryy;

--3. Таблица employee_salary.

--3.1 	Создать таблицу employee_salary:
-- id. Serial  primary key,
-- employee_id. Int, not null, unique,
-- salary_id. Int, not null.

create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

--3.2 Наполнить таблицу employee_salary 40 строками;
-- в 10 строк из 40 вставить несуществующие employee_id.

insert into employee_salary (employee_id, salary_id)
values (78, 1),
	   (79, 16),
	   (80, 2),
	   (81, 3),
	   (82, 7),
	   (83, 15),
	   (84, 8),
	   (85, 10),
	   (86, 14),
	   (87, 3),
	   (1, 1),
	   (68, 2),
	   (3, 3),
	   (67, 4),
	   (5, 5),
	   (70, 6),
	   (9, 7),
	   (65, 8),
	   (62, 9),
	   (12, 10),
	   (60, 11),
	   (16, 12),
	   (49, 13),
	   (57, 14),
	   (20, 15),
	   (21, 16),
	   (56, 1),
	   (23, 2),
	   (55, 3),
	   (27, 4),
	   (28, 5),
	   (54, 6),
	   (31, 7),
	   (32, 8),
	   (53, 9),
	   (34, 10),
	   (35, 11),
	   (36, 12),
	   (37, 13),
	   (52, 14);

select * from employee_salary;

--4. Таблица roles.

--4.1 Создать таблицу roles:
-- id. Serial  primary key,
-- role_name. int, not null, unique.
	   
create table roless (
	id serial primary key,
	role_name int not null unique
); 	  

--4.2 Поменять тип столба role_name с int на varchar(30).

alter table roless
alter column role_name type varchar(30); 

--4.2 Наполнить таблицу roles 20 строками.

insert into roless (role_name)
values  ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');


select * from roless;
 

--5. Таблица roles_employee.

--5.1	Создать таблицу roles_employee:
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id),
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id).

create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roless(id)
);

select * from roles_employee;

--5.2 11)	Наполнить таблицу roles_employee 40 строками.

insert into roles_employee (employee_id, role_id)
values  (1, 18),
	  	(3, 14),
	  	(6, 3),
	  	(10, 7),
	  	(14, 20),
	  	(9, 5),
	  	(5, 8),
	  	(25, 11),
	  	(18, 7),
	  	(20, 6),
	  	(17, 19),
	  	(4, 20),
	  	(32, 17),
	  	(27, 1),
	  	(30, 6),
	  	(23, 7),
	  	(19, 13),
	  	(31, 14),
	  	(41, 18),
	  	(35, 1),
	  	(34, 4),
	  	(50, 5),
	  	(48, 10),
	  	(37, 7),
	  	(42, 6),
	  	(33, 3),
	  	(63, 13),
	  	(55, 17),
	  	(60, 19),
	  	(46, 1),
		(67, 4),
		(54, 15),
		(64, 20),
		(69, 2),
		(51, 4),
		(68, 18),
		(53, 11),
		(13, 3),
		(16, 8),
		(2, 9);


select * from roles_employee;


-- РАБОТА С ТАБЛИЦАМИ.

--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employee_name, monthly_salary
from employee_salary
join employees on employee_id=employees.id
join salaryy on salary_id=salaryy.id;

--2. Вывести всех работников у которых ЗП меньше 2000.

select employee_name
from employee_salary
join employees on employee_id=employees.id
join salaryy on salary_id=salaryy.id
where salaryy.monthly_salary < 2000;

--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает).

  insert into salaryy (monthly_salary)
  values (500),
		(2700), 
		(3000), 
		(5200);
	
select * from salaryy;

select monthly_salary
from employee_salary
right join salaryy on salary_id=salaryy.id 
where salary_id is null;

--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает).

select monthly_salary
from employee_salary
right join salaryy on salary_id=salaryy.id 
where salary_id is null and salaryy.monthly_salary <2000 ;

--5. Найти всех работников кому не начислена ЗП.

select employee_name
from employee_salary
right join employees on employee_id=employees.id
where salary_id is null;


--6. Вывести всех работников с названиями их должности.

select employees.id, employee_name, roless.id, role_name
from roles_employee
join employees on employee_id=employees.id 
join roless on role_id=roless.id;

--7. Вывести имена и должность только Java разработчиков.

select employee_name, role_name
from roles_employee
join employees on employee_id=employees.id 
join roless on role_id=roless.id
where roless.role_name like '%Java developer%';

-- 8. Вывести имена и должность только Python разработчиков.

select employee_name, role_name
from roles_employee
join employees on employee_id=employees.id 
join roless on role_id=roless.id
where roless.role_name like '%Python developer%';

--9. Вывести имена и должность всех QA инженеров.

select employee_name, role_name
from roles_employee
join employees on employee_id=employees.id 
join roless on role_id=roless.id
where roless.role_name like '%QA%';

--10. Вывести имена и должность ручных QA инженеров.

select employee_name, role_name
from roles_employee
join employees on employee_id=employees.id 
join roless on role_id=roless.id
where roless.role_name like '%Manual QA%';


--11.  Вывести имена и должность автоматизаторов QA.

select employee_name, role_name
from roles_employee
join employees on employee_id=employees.id 
join roless on role_id=roless.id
where roless.role_name like '%Automation QA%';

--12. Вывести имена и зарплаты Junior специалистов.

select employee_name, monthly_salary
from employee_salary
join salaryy  on salary_id=salaryy.id 
join employees on employee_id=employees.id
where employee_id in  (select employee_id from roles_employee join roless on role_id=roless.id where role_name like '%Junior%') ;

--13. Вывести имена и зарплаты Middle специалистов.

select employee_name, monthly_salary
from employee_salary
join salaryy  on salary_id=salaryy.id 
join employees on employee_id=employees.id
where employee_id in (select employee_id from roles_employee join roless on role_id=roless.id where role_name like '%Middle%');


--14.Вывести имена и зарплаты Senior специалистов.

select employee_name, monthly_salary
from employee_salary
join salaryy  on salary_id=salaryy.id 
join employees on employee_id=employees.id
where employee_id in (select employee_id from roles_employee join roless on role_id=roless.id where role_name like '%Senior%');


--15. Вывести зарплаты Java разработчиков.

select DISTINCT monthly_salary
from employee_salary
join salaryy  on salary_id=salaryy.id 
join employees on employee_id=employees.id
where employee_id in (select employee_id from roles_employee join roless on role_id=roless.id where role_name like '%Java%');

--16. Вывести зарплаты Python разработчиков.

select DISTINCT monthly_salary
from employee_salary
join salaryy  on salary_id=salaryy.id 
join employees on employee_id=employees.id
where employee_id in (select employee_id from roles_employee join roless on role_id=roless.id where role_name like '%Python%');

-- 17. Вывести имена и зарплаты Junior Python разработчиков.

select employee_name, monthly_salary
from employee_salary
join salaryy  on salary_id=salaryy.id 
join employees on employee_id=employees.id
where employee_id in (select employee_id from roles_employee join roless on role_id=roless.id where role_name like '%Junior Python%');


--18. Вывести имена и зарплаты Middle JS разработчиков.

select employee_name, monthly_salary
from employee_salary
join salaryy  on salary_id=salaryy.id 
join employees on employee_id=employees.id
where employee_id in (select employee_id from roles_employee join roless on role_id=roless.id where role_name like '%Middle JavaScript%');


--19. Вывести имена и зарплаты Senior Java разработчиков.

select employee_name, monthly_salary
from employee_salary
join salaryy  on salary_id=salaryy.id 
join employees on employee_id=employees.id
where employee_id in (select employee_id from roles_employee join roless on role_id=roless.id where role_name like '%Senior Java%');

--20.Вывести зарплаты Junior QA инженеров.

select DISTINCT monthly_salary
from employee_salary
join salaryy  on salary_id=salaryy.id 
join employees on employee_id=employees.id
where employee_id in (select employee_id from roles_employee join roless on role_id=roless.id where role_name like '%Junior%' and role_name like '%QA%');


--21. Вывести среднюю зарплату всех Junior специалистов.

select avg(monthly_salary) as average_Junior_salary 
from employee_salary
join salaryy  on salary_id=salaryy.id 
join employees on employee_id=employees.id
where employee_id in (select employee_id from roles_employee join roless on role_id=roless.id where role_name like '%Junior%');

--22. Вывести сумму зарплат JS разработчиков.

select sum(monthly_salary) as sum_JS_dev_salary 
from employee_salary
join salaryy  on salary_id=salaryy.id 
join employees on employee_id=employees.id
where employee_id in (select employee_id from roles_employee join roless on role_id=roless.id where role_name like '%JavaScript developer%');

--23. Вывести минимальную ЗП QA инженеров.

select min(monthly_salary) as min_QA_salary 
from employee_salary
join salaryy  on salary_id=salaryy.id 
join employees on employee_id=employees.id
where employee_id in (select employee_id from roles_employee join roless on role_id=roless.id where role_name like '%QA%');

--24. Вывести максимальную ЗП QA инженеров.

select max(monthly_salary) as max_QA_salary 
from employee_salary
join salaryy  on salary_id=salaryy.id 
join employees on employee_id=employees.id
where employee_id in (select employee_id from roles_employee join roless on role_id=roless.id where role_name like '%QA%');

--25. Вывести количество QA инженеров.

select count(role_name)
from roles_employee
join employees on employee_id=employees.id 
join roless on role_id=roless.id
where roless.role_name like '%QA%';

--26. Вывести количество Middle специалистов.

select count(role_name)
from roles_employee
in employees on employee_id=employees.id 
join roless on role_id=roless.id
where roless.role_name like '%Middle%';

--27.  Вывести количество разработчиков.

select count(role_name)
from roles_employee
join employees on employee_id=employees.id 
join roless on role_id=roless.id
where roless.role_name like '%developer%';

--28.Вывести фонд (сумму) зарплаты разработчиков.

select sum(salaryy.monthly_salary)
from employee_salary 
join salaryy on salary_id=salaryy.id
join roles_employee on employee_salary.employee_id=roles_employee.employee_id 
where roles_employee.role_id in (select id from roless where role_name like '%developer%');

--29. Вывести имена, должности и ЗП всех специалистов по возрастанию.

select employee_name, (select role_name from roless where roless.id=roles_employee.role_id), monthly_salary
from employee_salary
join salaryy  on salary_id=salaryy.id 
join employees on employee_id=employees.id
join roles_employee on employee_salary.employee_id=roles_employee.employee_id 
where role_id in (select roless.id from roless)
order by monthly_salary;

--30.  Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300.

select employee_name, (select role_name from roless where roless.id=roles_employee.role_id), monthly_salary
from employee_salary
join salaryy  on salary_id=salaryy.id 
join employees on employee_id=employees.id
join roles_employee on employee_salary.employee_id=roles_employee.employee_id 
where role_id in (select roless.id from roless) and monthly_salary >= 1700 and monthly_salary <= 2300
order by monthly_salary;


--31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300.

select employee_name, (select role_name from roless where roless.id=roles_employee.role_id), monthly_salary
from employee_salary
join salaryy  on salary_id=salaryy.id 
join employees on employee_id=employees.id
join roles_employee on employee_salary.employee_id=roles_employee.employee_id 
where role_id in (select roless.id from roless) and  monthly_salary < 2300
order by monthly_salary;

--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000.

select employee_name, (select role_name from roless where roless.id=roles_employee.role_id), monthly_salary
from employee_salary
join salaryy  on salary_id=salaryy.id 
join employees on employee_id=employees.id
join roles_employee on employee_salary.employee_id=roles_employee.employee_id 
where role_id in (select roless.id from roless) and  monthly_salary in (1100, 1500, 2000)
order by monthly_salary;










