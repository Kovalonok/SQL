/*1. Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
*/
create table employees(
id serial primary key,
employee_name varchar(50) not null
);

/*2. Наполнить таблицу employee 70 строками.*/
insert into employees (employee_name)
values ('Alexandra Müller'),
       ('Alain Schmidt'),
       ('Alexander Schneider'),
       ('Alexander Fischer'),
       ('Andre Meyer'),
       ('Andreas Wagner'),
       ('Antonino Becker'),
       ('Krisztian Schulz'),
       ('Beat Hoffmann'),
       ('Beatrice Schäfer'),
       ('Bernhard Koch'),
       ('Bruno Bauer'),
       ('Catrina Richter'),
       ('Christian Klein'),
       ('Christian Wolf'),
       ('Christian Schröder'),
       ('Christina Neumann'),
       ('Christoph Schwarz'),
       ('Claudia Zimmermann'),
       ('Claudia Braun'),
       ('Cornelia Krüger'),
       ('Daniel Hofmann'),
       ('Daniel Hartmann'),
       ('Daniel Lange'),
       ('David Schmitt'),
       ('Dennis Werner'),
       ('Dimitri Schmitz'),
       ('Dominic Krause'),
       ('Dominic Meier'),
       ('Erich Lehmann'),
       ('Eva-Maria Schmid'),
       ('Fabian Schulze'),
       ('Flavio Maier'),
       ('Florian Köhler'),
       ('Fredrik Herrmann'),
       ('Fredy König'),
       ('Gudrun Walter'),
       ('Hansjürg Mayer'),
       ('Helga Huber'),
       ('Helmut Kaiser'),
       ('Jacqueline Fuchs'),
       ('Jacqueline Peters'),
       ('Jacqueline Lang'),
       ('Jean-Marc Scholz'),
       ('Josef Möller'),
       ('Josefa Weiß'),
       ('Juerg Jung'),
       ('Kamal Hahn'),
       ('Kassab Schubert'),
       ('Kurt Vogel'),
       ('Laura Friedrich'),
       ('Leon Keller'),
       ('Luciano Günther'),
       ('Maarten Frank'),
       ('Madlen Berger'),
       ('Marc Winkler'),
       ('Marcel Roth'),
       ('Robert Beck'),
       ('Marco Lorenz'),
       ('Maria Baumann'),
       ('Markus Franke'),
       ('Martin Albrecht'),
       ('Mark Schuster'),
       ('Michael Simon'),
       ('Michael Ludwig'),
       ('Monika Böhm'),
       ('Nora Winter'),
       ('Pascal Kraus'),
       ('Patricia Martin'),
       ('Patrick Schumacher');
      
select employee_name from employees;

/*3. Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null*/

create table salary_IT(
id serial primary key,
monthly_salary int not null
);

/*4. Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500
*/

insert into salary_IT (monthly_salary)
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
      
select monthly_salary from salary_IT;   

/*5. Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
*/	

create table employee_salary(
id serial  primary key,
employee_id int not null unique,
salary_id int not null
);	

/*6. Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id
*/

insert into employee_salary (employee_id, salary_id)
values (1, 16),
   	   (2, 14),
       (3, 12),
       (4, 10),
       (5, 8),
       (11, 6),
       (12, 4),
       (13, 2),
       (14, 1),
       (15, 3),
       (21, 5),
       (22, 7),
       (23, 9),
       (24, 11),
       (25, 13),
       (31, 15),
       (32, 1),
       (33, 2),
       (34, 3),
       (35, 4),
       (45, 5),
       (46, 6),
       (47, 7),
       (48, 8),
       (49, 9),
       (51, 10),
       (60, 11),
       (62, 12),
       (65, 13),
       (70, 14),
       (74, 15),
       (78, 16),
       (80, 10),
       (85, 2),
       (89, 7),
       (75, 13),
       (83, 1),
       (95, 9),
       (99, 14),
       (96, 3);
      
select * from employee_salary;	      
      
/*7. Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
*/	      

create table roles_IT(
id serial primary key,
role_name int not null unique
);

/*8. Поменять тип столба role_name с int на varchar(30)*/

alter table roles_IT alter column role_name type varchar(30);

/*9. Наполнить таблицу roles 20 строками
 id   role_name
 1    Junior Python developer
 2    Middle Python developer
 3    Senior Python developer
 4    Junior Java developer
 5    Middle Java developer
 6    Senior Java developer
 7    Junior JavaScript developer
 8    Middle JavaScript developer
 9    Senior JavaScript developer
 10   Junior Manual QA engineer
 11   Middle Manual QA engineer
 12   Senior Manual QA engineer
 13   Project Manager
 14   Designer
 15   HR
 16   CEO
 17   Sales manager
 18   Junior Automation QA engineer
 19   Middle Automation QA engineer
 20   Senior Automation QA engineer
*/

insert into roles_IT (role_name)
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
	
select * from roles_IT; 
	
/*10. Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
*/		

create table roles_IT_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null, foreign key (employee_id) references employees(id), foreign key (role_id) references roles_IT(id)
);
	
/*11. Наполнить таблицу roles_employee 40 строками*/

insert into roles_IT_employee(employee_id, role_id)
values  (1,2),
		(3,3),
		(5,4),
		(7,5),
		(9,6),
		(11,1),
		(13,8),
		(15,9),
		(17,10),
		(19,11),
		(21,12),
		(23,13),
		(25,14),
		(27,1),
		(29,16),
		(31,17),
		(33,18),
		(35,19),
		(37,20),
		(39,2),
		(41,3),
		(43,4),
		(45,5),
		(47,6),
		(49,7),
		(51,8),
		(53,9),
		(55,10),
		(57,11),
		(59,12),
		(61,13),
		(63,14),
		(65,15),
		(67,16),
		(69,17),
		(2,18),
		(12,19),
		(24,20),
		(36,10),
		(48,4);

select * from roles_IT_employee; 