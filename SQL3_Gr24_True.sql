-- просмотреть список всех созданных таблиц
select *from pg_catalog.pg_tables where tableowner='user_24_157';

--1.Создаем Создать таблицу employees.id. serial,  primary key. employee_name. Varchar(50), not null
create table employee(
	id serial primary key,
	employee_name varchar(50) not null
);

select *from employee;

--Наполнить таблицу employee 70 строками.
insert into employee(employee_name)
values  ('Grin Tabin'),
		('Fegy Rusal'),
		('Tasd Pavel'),
		('Gfity Ggin'),
		('Fhim Tashi'),
		('Tkju Gilo'),
		('Romyl Rolya'),
		('Gytu Tpolk'),
		('Tyujn Ten'),
		('Banov Serg'),
		('Gree Tabin'),
		('Fegy Rasal'),
		('Tasdy Pavel'),
		('Zofity Ggin'),
		('Fhim Nalishi'),
		('Takury Gilo'),
		('Romyl Rol'),
		('Gyry Tpolk'),
		('Tyujn Tenly'),
		('Canov Sergey'),
		('Grint Tabin'),
		('Fegychy Rusal'),
		('Tasda Pavel'),
		('Gfity Gogin'),
		('Fhim Tasuhi'),
		('Totyu Gilo'),
		('Romyal Rolya'),
		('Gytou Tpolk'),
		('Tyun Ten'),
		('Banov Sergs'),
		('Grin Tabint'),
		('Fegy Rusael'),
		('Tasdo Pavel'),
		('Gftity Gogin'),
		('Fhimo Taushi'),
		('Tkju Geilo'),
		('Romyl Rsolya'),
		('Gytu Tpoilk'),
		('Tyujn Tenee'),
		('Benova Sergey'),
		('Gryin Tabin'),
		('Feger Rusal'),
		('Tasdy Pavel'),
		('Gfitiu Gygin'),
		('Fhim Tashaei'),
		('Tkju Gilos'),
		('Romyl Rolei'),
		('Gytu Tpolek'),
		('Tyujn Tenrty'),
		('Banov Serydel'),
		('Gurin Tabry'),
		('Feigy Rasal'),
		('Tasd Paael'),
		('Gypok Ggin'),
		('Selho Tashi'),
		('Yatakami Gilo'),
		('Romyl Grisha'),
		('Tygfe Mitya'),
		('Sara Konnor'),
		('Kolly Michel'),
		('Gordon Basya'),
		('Popl Alex'),
		('Tikul Vell'),
		('Gren Primor'),
		('Zerro Fog'),
		('Tashi Riem'),
		('Wiker Dan'),
		('Miklay Nolli'),
		('Black Jack'),
		('Dolly King');

	select *from employee;

--3.Создать таблицу salary.id. Serial  primary key,monthly_salary. Int, not null
create table salary(
	id serial primary key,
	monthly_salary int not null
);

--Наполнить таблицу salary 16 строками:..
insert into salary(monthly_salary)
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
		 
select *from salary;

--5.Создать таблицу employee_salary/id. Serial  primary key,employee_id. Int, not null, uniquesalary_id. Int, not null
	create table employee_salary(
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
);

--Наполнить таблицу employee_salary 40 строками: в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary(employee_id,salary_id)
	values (1,5),
	       (2,3),
	       (3,15),
	       (4,8),
	       (5,10),
	       (6,9),
	       (7,12),
	       (8,8),
	       (9,11),
	       (10,7),
	       (11,6),
	       (12,6),
	       (13,11),
	       (14,15),
	       (15,6),
	       (16,1),
	       (17,3),
	       (18,3),
	       (19,8),
	       (20,9),
	       (21,15),
	       (22,3),
	       (23,8),
	       (24,13),
	       (25,12),
	       (26,8),
	       (28,11),
	       (30,7),
	       (33,15),
	       (35,2),
	       (250,3),
	       (251,8),
	       (252,13),
	       (253,12),
	       (254,8),
	       (255,11),
	       (256,7),
	       (257,15),
	       (258,2),
	       (259,5);
	

select *from employee_salary;

--7.Создать таблицу roles. id. Serial  primary key,role_name. int, not null, unique
create table roles (
id serial primary key,
role_name int unique not null
);

--8.-Поменять тип столба role_name с int на varchar(30)
alter table roles
	alter column role_name type varchar(30) ;

select *from roles;

--Наполнить таблицу roles 20 строками:

insert into roles (role_name)
	values ('Junior Python developer'),
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
		  

--10Создать таблицу roles_employee id. Serial  primary key, employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id) role_id. Int, not null (внешний ключ для таблицы roles, поле id)
create table roles_employee (
id serial primary key,
employee_id int unique not null,
roles_id int not null,
foreign key (employee_id)
		references employee(id),
	foreign key (roles_id)
		references roles(id)
);
		 

 --Наполнить таблицу roles_employee 40 строками:
insert into roles_employee (employee_id,roles_id)
	values (1,1),
		   (13,2),
		   (15,10),
		   (10,15),
		   (6,11),
		   (64,7),
		   (46,10),
		   (4,16),
		   (7,12),
		   (21,20),
		   (31,10),
		   (18,18),
		   (19,19),
		   (28,17),
		   (2,10),
		   (5,12),
		   (16,11),
		   (27,2),
		   (35,10),
		   (42,15),
		   (11,12),
		   (22,2),
		   (32,10),
		   (57,17),
		   (14,12),
		   (51,20),
		   (58,16),
		   (62,15),
		   (63,11),
		   (20,15),
		   (33,20),
		   (55,2),
		   (53,7),
		   (48,8),
		   (30,6),
		   (47,5),
		   (61,1),
		   (29,8),
		   (43,3),
		   (66,9);
		  
--5.Создать таблицу salary_roles/id. Serial  primary key,roles_id. Int, not null, unique salary_id. Int, not null
	create table salary_roles(
	id serial primary key,
	roles_id int  not null,
	salary_id int not null
);

DROP TABLE salary_roles;
--Наполнить таблицу salary_roles 
insert into salary_roles(salary_id,roles_id)
	values (1,1),
	       (3,2),
	       (4,3),
	       (2,4),
	       (4,5),
	       (5,6),
	       (3,7),
	       (6,8),
	       (7,9),
	       (5,10),
	       (8,11),
	       (9,12),
	       (10,13),
	       (11,14),
	       (12,15),
	       (13,16),
	       (14,17),
	       (10,18),
	       (15,19),
	       (16,20);
	

select *from salary_roles;
		  
--1.-Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
  select employee_name, monthly_salary from employee_salary 
 	join employee on employee_salary.employee_id=employee.id
 	join salary on employee_salary.salary_id=salary.id;
 --2. Вывести всех работников у которых ЗП меньше 2000.
 select employee_name, monthly_salary from employee_salary 
 	left join employee on employee_salary.employee_id=employee.id
 	join salary on employee_salary.salary_id=salary.id where monthly_salary<2000 ;
 --3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 select monthly_salary, employee_name from employee_salary
 	join employee on employee_salary.employee_id=employee.id
 	right join salary on employee_salary.salary_id  = salary.id where employee_id is null;
 	
 --4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 	select monthly_salary, employee_name from employee_salary
 	join employee on employee_salary.employee_id=employee.id
 	right join salary on employee_salary.salary_id  = salary.id where employee_id is null and monthly_salary<2000;
 --5. Найти всех работников кому не начислена ЗП.
 select employee_name, monthly_salary from employee_salary
 	join salary on employee_salary.salary_id=salary.id
 	right join employee on employee_salary.employee_id = employee.id where salary_id is null;
 --6. Вывести всех работников с названиями их должности.
 select employee_name,role_name from roles_employee 
 	right join employee on roles_employee.employee_id= employee.id
 	left join roles on roles_employee.roles_id= roles.id;
 --7. Вывести имена и должность только Java разработчиков.
select employee_name,role_name from roles_employee 
 	right join employee on roles_employee.employee_id= employee.id
 	left join roles on roles_employee.roles_id= roles.id where role_name ilike '%Java%';
 --8. Вывести имена и должность только Python разработчиков.
 select employee_name,role_name from roles_employee 
 	right join employee on roles_employee.employee_id= employee.id
 	left join roles on roles_employee.roles_id= roles.id where role_name ilike '%Python%';
 --9. Вывести имена и должность всех QA инженеров.
  select employee_name,role_name from roles_employee 
 	right join employee on roles_employee.employee_id= employee.id
 	left join roles on roles_employee.roles_id= roles.id where role_name ilike '%QA%';
 --10. Вывести имена и должность ручных QA инженеров.
 select employee_name,role_name from roles_employee 
 	right join employee on roles_employee.employee_id= employee.id
 	left join roles on roles_employee.roles_id= roles.id where role_name ilike '%QA%'and role_name ilike '%manual%';
 --11. Вывести имена и должность автоматизаторов QA
  select employee_name,role_name from roles_employee 
 	right join employee on roles_employee.employee_id= employee.id
 	left join roles on roles_employee.roles_id= roles.id where role_name ilike '%QA%'and role_name ilike '%auto%';
 --12. Вывести имена и зарплаты Junior специалистов
  select employee_name,monthly_salary,role_name from roles_employee 
 	right join employee on roles_employee.employee_id= employee.id
 	left join roles on roles_employee.roles_id= roles.id 
  join employee_salary on employee.id=employee_salary.employee_id
	join salary on employee_salary.salary_id=salary.id where role_name ilike '%Junior%' order by monthly_salary;
 --13. Вывести имена и зарплаты Middle специалистов
 select employee_name,monthly_salary,role_name from roles_employee 
 	right join employee on roles_employee.employee_id= employee.id
 	left join roles on roles_employee.roles_id= roles.id 
  join employee_salary on employee.id=employee_salary.employee_id
	join salary on employee_salary.salary_id=salary.id where role_name ilike '%middle%' order by monthly_salary;
 --14. Вывести имена и зарплаты Senior специалистов
 select employee_name,monthly_salary,role_name from roles_employee 
 	right join employee on roles_employee.employee_id= employee.id
 	left join roles on roles_employee.roles_id= roles.id 
    join employee_salary on employee.id=employee_salary.employee_id
	join salary on employee_salary.salary_id=salary.id where role_name ilike '%senior%' order by monthly_salary;
 
--15. Вывести зарплаты Java разработчиков
 select monthly_salary, role_name from salary_roles
 	join salary on salary_roles.salary_id= salary.id
 join roles on salary_roles.roles_id=roles.id where role_name ilike '%Java%' ;
 	
 --16. Вывести зарплаты Python разработчиков
	select monthly_salary, role_name from salary_roles
 	join salary on salary_roles.salary_id= salary.id
 join roles on salary_roles.roles_id=roles.id where role_name ilike '%Python%' ;
	
 --17. Вывести имена и зарплаты Junior Python разработчиков
select monthly_salary, role_name from salary_roles
 	join salary on salary_roles.salary_id= salary.id
 join roles on salary_roles.roles_id=roles.id where role_name ilike '%Python%' and role_name ilike '%Jun%' ;
 --18. Вывести имена и зарплаты Middle JS разработчиков
select monthly_salary, role_name from salary_roles
 	join salary on salary_roles.salary_id= salary.id
 join roles on salary_roles.roles_id=roles.id where role_name ilike '%Middle%' and role_name ilike '%J%S%' ;
 --19. Вывести имена и зарплаты Senior Java разработчиков
select monthly_salary, role_name from salary_roles
 	join salary on salary_roles.salary_id= salary.id
 join roles on salary_roles.roles_id=roles.id where role_name ilike '%Senior%Java%' ;
 --20. Вывести зарплаты Junior QA инженеров
select monthly_salary, role_name from salary_roles
 	join salary on salary_roles.salary_id= salary.id
 join roles on salary_roles.roles_id=roles.id where role_name ilike '%Senior%QA%';
 --21. Вывести среднюю зарплату всех Junior специалистов
select AVG(monthly_salary) from salary_roles
 	join salary on salary_roles.salary_id= salary.id
 join roles on salary_roles.roles_id=roles.id where role_name ilike '%Junior%';

 --22. Вывести сумму зарплат JS разработчиков
select Sum(monthly_salary) from salary_roles
 	join salary on salary_roles.salary_id= salary.id
 join roles on salary_roles.roles_id=roles.id where role_name ilike '%J%s%';

 --23. Вывести минимальную ЗП QA инженеров
select min(monthly_salary) from salary_roles
 	join salary on salary_roles.salary_id= salary.id
 join roles on salary_roles.roles_id=roles.id where role_name ilike '%QA%';

--ПРОВЕРКА
--select monthly_salary from salary_roles
 --	join salary on salary_roles.salary_id= salary.id
-- join roles on salary_roles.roles_id=roles.id where role_name ilike '%QA%';

 --24. Вывести максимальную ЗП QA инженеров
select max(monthly_salary) from salary_roles
 	join salary on salary_roles.salary_id= salary.id
 join roles on salary_roles.roles_id=roles.id where role_name ilike '%QA%';
 --25. Вывести количество QA инженеров
select count(role_name) from salary_roles
 	join salary on salary_roles.salary_id= salary.id
 join roles on salary_roles.roles_id=roles.id where role_name ilike '%QA%';
--Проверка
--select role_name from salary_roles
 --	join salary on salary_roles.salary_id= salary.id
 --join roles on salary_roles.roles_id=roles.id where role_name ilike '%QA%';

--26. Вывести количество Middle специалистов.
select count(role_name) from salary_roles
 	join salary on salary_roles.salary_id= salary.id
 join roles on salary_roles.roles_id=roles.id where role_name ilike '%Middle%';
 --27. Вывести количество разработчиков
select count(role_name) from salary_roles
 	join salary on salary_roles.salary_id= salary.id
 join roles on salary_roles.roles_id=roles.id where role_name ilike '%develop%';
 --28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(monthly_salary) from salary_roles
 	join salary on salary_roles.salary_id= salary.id
 join roles on salary_roles.roles_id=roles.id where role_name ilike '%develop%';
 --29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employee_name,role_name,monthly_salary from salary_roles
join salary on salary_roles.salary_id=salary.id
join roles on salary_roles.roles_id=roles.id
right join roles_employee on roles.id=roles_employee.roles_id
right join employee on roles_employee.employee_id=employee.id  order by monthly_salary;

 --30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employee_name,role_name,monthly_salary from salary_roles
join salary on salary_roles.salary_id=salary.id
join roles on salary_roles.roles_id=roles.id
right join roles_employee on roles.id=roles_employee.roles_id
join employee on roles_employee.employee_id=employee.id where monthly_salary BETWEEN 1700 AND 2300 order by monthly_salary;
 --31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employee_name,role_name,monthly_salary from salary_roles
join salary on salary_roles.salary_id=salary.id
join roles on salary_roles.roles_id=roles.id
right join roles_employee on roles.id=roles_employee.roles_id
join employee on roles_employee.employee_id=employee.id where monthly_salary<2300 order by monthly_salary;
 --32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employee_name,role_name,monthly_salary from salary_roles
join salary on salary_roles.salary_id=salary.id
join roles on salary_roles.roles_id=roles.id
right join roles_employee on roles.id=roles_employee.roles_id
join employee on roles_employee.employee_id=employee.id where monthly_salary=1100 or monthly_salary=1500 or monthly_salary=2000 order by monthly_salary;
