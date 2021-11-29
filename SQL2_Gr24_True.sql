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
		  
select *from roles_employee;
