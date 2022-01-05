--������� ������� employees (- id. serial,  primary key, - employee_name. Varchar(50), not null)
create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

-- ��������� ������� employee 70 ��������.
insert into employees(employee_name)
values ('Johnson'),
('Williams'),
('Jones'),
('Brown'),
('Davis'),
('Miller'),
('Wilson'),
('Moore'),
('Taylor'),
('Anderson'),
('Thomas'),
('Jackson'),
('White'),
('Harris'),
('Martin'),
('Thompson'),
('Garcia'),
('Martinez'),
('Robinson'),
('Clark'),
('Rodriguez'),
('Lewis'),
('Lee'),
('Walker'),
('Hall'),
('Allen'),
('Young'),
('Hernandez'),
('King'),
('Wright'),
('Lopez'),
('Hill'),
('Scott'),
('Green'),
('Adams'),
('Baker'),
('Gonzalez'),
('Nelson'),
('Carter'),
('Mitchell'),
('Perez'),
('Roberts'),
('Turner'),
('Phillips'),
('Campbell'),
('Parker'),
('Evans'),
('Edwards'),
('Collins'),
('Stewart'),
('Sanchez'),
('Morris'),
('Rogers'),
('Reed'),
('Cook'),
('Morgan'),
('Bell'),
('Murphy'),
('Bailey'),
('Rivera'),
('Cooper'),
('Richardson'),
('Cox'),
('Howard'),
('Ward'),
('Torres'),
('Peterson'),
('Gray'),
('Ramirez'),
('James'),
('Watson'),
('Brooks'),
('Kelly'),
('Sanders'),
('Price'),
('Bennett'),
('Wood'),
('Barnes'),
('Ross'),
('Henderson'),
('Coleman'),
('Jenkins'),
('Perry'),
('Powell'),
('Long'),
('Patterson'),
('Hughes'),
('Flores'),
('Washington'),
('Butler'),
('Simmons'),
('Foster'),
('Gonzales'),
('Bryant'),
('Alexander'),
('Russell'),
('Griffin'),
('Diaz'),
('Hayes');

--������� ������� salary (- id. Serial  primary key,- monthly_salary. Int, not null)
create table salary (
	id serial primary key,
	monthly_salary int not null
);

--��������� ������� salary 15 ��������
insert into salary(monthly_salary)
values 	(1000),
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

--������� ������� employee_salary( - id. Serial  primary key,- employee_id. Int, not null, unique - salary_id. Int, not null)
create table employee_salary (
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
);
--��������� ������� employee_salary 40 ��������: (- � 10 ����� �� 40 �������� �������������� employee_id)
insert into employee_salary(employee_id,salary_id)
values  (1,1),
		(2,2),
		(3,3),
		(4,4),
		(5,5),
		(6,6),
		(7,7),
		(8,8),
		(9,9),
		(10,8),
		(11,6),
		(12,9),
		(13,8),
		(14,17),
		(15,6),
		(16,3),
		(17,22),
		(18,23),
		(19,33),
		(20,34),
		(21,1),
		(22,4),
		(23,4),
		(24,11),
		(25,16),
		(26,15),
		(27,14),
		(28,13),
		(29,12),
		(30,11),
		(31,10),
		(32,9),
		(33,8),
		(34,7),
		(35,6),
		(36,5),
		(37,4),
		(38,3),
		(39,1),
		(40,2);

--������� ������� roles(- id. Serial  primary key,- role_name. int, not null, uniqu )
create table roles (
	id serial primary key,
	role_name int unique not null
);

--�������� ��� ������ role_name � int �� varchar(30)
alter table roles alter column role_name type varchar(30);  
--��������� ������� roles 20 ��������:
insert into roles(role_name)
values 	('Junior Python developer'),
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
	
--������� ������� roles_employee (- id. Serial  primary key, - employee_id. Int, not null, unique (������� ���� ��� ������� employees, ���� id)- role_id. Int, not null (������� ���� ��� ������� roles, ���� id))
create table roles_employee (
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);
	
--��������� ������� roles_employee 40 ��������:
insert into roles_employee(employee_id,role_id)
values 	(1,20), 	
		(2,1),
		(3,3),
		(4,4),
		(5,5),
		(6,6),
		(7,7),
		(8,8),
		(9,9),
		(10,11),
		(11,10),
		(12,12),
		(13,13),
		(14,14),
		(15,20),
		(16,15),
		(17,16),
		(18,17),
		(19,18),
		(20,20),
		(21,19),
		(22,4),
		(23,1),
		(24,2),
		(25,3),
		(26,4),
		(27,5),
		(28,10),
		(29,2),
		(30,5),
		(31,18),
		(32,16),
		(33,8),
		(34,1),
		(35,5),
		(36,11),
		(37,12),
		(38,7),
		(39,2),
		(40,20);

