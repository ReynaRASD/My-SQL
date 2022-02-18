CREATE SCHEMA Enterprise;
USE Enterprise;
CREATE TABLE worker(id INT NOT NULL auto_increment, primary key(id));
CREATE TABLE bonus(id INT NOT NULL auto_increment, primary key(id));
CREATE TABLE title(id INT NOT NULL auto_increment, primary key(id));

ALTER TABLE worker ADD COLUMN first_name varchar(255) NOT NULL;
ALTER TABLE worker ADD COLUMN last_name varchar(255) NOT NULL;
ALTER TABLE worker ADD COLUMN salary int NOT NULL;
ALTER TABLE worker ADD COLUMN star_date date NOT NULL;
ALTER TABLE worker ADD COLUMN departament varchar(255) NOT NULL;

INSERT INTO worker (id, first_name, last_name, salary, star_date, departament) values
(1, 'vcbcv', 'dbmc', 50, 20150605,'Manager'),
(2, 'Pedro', 'sfsd', 5, 20160215, 'RRHH'),
(3, 'ghth', 'vdnm', 50, 20160215,'Admin'),
(4, 'Pedro', 'Shjhgj', 5, 20160215,'Manager'),
(5, 'hthrth', 'tyyr', 50, 20160215,'RHH'),
(6, 'Phkil', 'Sdfgdg', 50, 20160215,'Manager'),
(7, 'Pedromujm', 'dfgdfgf', 50, 20160215,'ADMIN'),
(8, 'Pqwewet', 'Solis', 50, 20160215,'Account');

ALTER TABLE title ADD COLUMN job_title varchar(255) NOT NULL;
ALTER TABLE title ADD COLUMN affect_from int NOT NULL;

INSERT INTO title (id, job_title, affect_from) values
(3, 'Manager',25),
(2, 'Execute', 53),
(5, 'Execute', 51),
(1, 'Admin', 74),
(8, 'Execute', 89),
(4, 'Manager', 100),
(7, 'Admin', 58),
(6, 'Admin', 96);

ALTER TABLE bonus ADD COLUMN bonus_date date NOT NULL;
ALTER TABLE bonus ADD COLUMN bonus_amount int NOT NULL;

INSERT INTO bonus (id, bonus_date, bonus_amount) values
(3, 20150605, 1025),
(4, 20160605, 1053),
(2, 20170605, 1051),
(5, 20180605, 1074),
(1, 20200605, 1089);

