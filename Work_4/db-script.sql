CREATE DATABASE gb_lesson4;

USE gb_lesson4;

/*users*/
CREATE TABLE users
(
    user_id  INT NOT NULL AUTO_INCREMENT,
    user_login VARCHAR(255) NULL,
    user_pass  VARCHAR(255) NULL,
    user_male  TINYINT NULL,
    PRIMARY KEY (user_id)
);

INSERT INTO users (user_login, user_pass, user_male) VALUES 
('alex', '$2y$10$6SzbBCMENklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH14y', 1),
('Mikle', '$ws$10$6SzbBCMENklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH14y', 1),
('Olia', '$2y$10$88zbBCKLJklStIgTqBKIluijJUnbeZ5WqJI4RJgkksnFZon5kH14y', 2),
('Tom', '$2y$20$6SzbBCNRNklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH20y', 1),
('Margaret', '$2y$20$6SzbBCNRNklStIgTqBKIluijJUnbeZ4wqIu4RJgkksnFZon5kH20y', 2),
('alex', '$2y$10$6SzbBCMENklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH14y', 1);

/*clients*/
CREATE TABLE clients
(
    client_id    INT NOT NULL AUTO_INCREMENT,
    client_login VARCHAR(255) NULL,
    client_pass  VARCHAR(255) NULL,
    client_male  TINYINT NULL,
    PRIMARY KEY (client_id)
);

INSERT INTO clients (client_login, client_pass, client_male) VALUES 
('alexander', '$2y$10$6SzbBCMENklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH14y', 1),
('Mikle', '$ws$10$6SzbBCMENklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH14y', 1),
('Olia', '$2y$10$88zbBCKLJklStIgTqBKIluijJUnbeZ5WqJI4RJgkksnFZon5kH14y', 2),
('Dmitry', '$2y$20$6SzbBCNRNklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH20y', 1),
('Margaret', '$2y$20$6SzbBCNRNklStIgTqBKIluijJUnbeZ4wqIu4RJgkksnFZon5kH20y', 2),
('Leonid', '$2y$10$6SzbBCMENklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH14y', 1),
('Mikle', '$ws$10$6SzbBCMENklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH14y', 1),
('Olga', '$2y$10$88zbBCKLJklStIgTqBKIluijJUnbeZ5WqJI4RJgkksnFZon5kH14y', 2),
('Tom', '$2y$20$6SzbBCNRNklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH20y', 1),
('Masha', '$2y$20$6SzbBCNRNklStIgTqBKIluijJUnbeZ4wqIu4RJgkksnFZon5kH20y', 2),
('alex', '$2y$10$6SzbBCMENklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH14y', 1);


-- Задание на EXISTS
/*employee*/
CREATE TABLE employee (
  employe_id INT NOT NULL,
  employe_name VARCHAR(45) NOT NULL,
  employe_department VARCHAR(45) NOT NULL,
  employe_salary FLOAT NOT NULL,
  employe_gender VARCHAR(45) NOT NULL,
  employe_age INT NOT NULL,
  employe_city VARCHAR(45) NOT NULL,
  PRIMARY KEY (employe_id)
);

INSERT INTO employee (employe_id, employe_name, employe_department, employe_salary, employe_gender, employe_age, employe_city) VALUES 
(1001, 'John Doe', 'IT', 35000, 'Male', 25, 'London'),
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27, 'London'),
(1003, 'James Brown', 'Finance', 50000, 'Male', 28, 'London'),
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28, 'London'),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26, 'London'),
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25, 'Mumbai'),
(1007, 'Priyanla Dewangan', 'HR', 45000, 'Female', 27, 'Mumbai'),
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28, 'Mumbai'),
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28, 'Mumbai'),
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26, 'Mumbai');

/*projects*/
CREATE TABLE projects (
    project_id INT NOT NULL AUTO_INCREMENT,
    project_title VARCHAR(200) NOT NULL,
    project_client_id INT NOT NULL,
    project_employe_id INT NOT NULL,
    project_start_date DATETIME,
    project_end_date DATETIME,
    PRIMARY KEY (project_id),
    FOREIGN KEY (project_client_id) REFERENCES clients (client_id),
    FOREIGN KEY (project_employe_id) REFERENCES employee (employe_id)
);

INSERT INTO projects (project_title, project_client_id, project_employe_id, project_start_date, project_end_date) VALUES 
('Develop ecommerse website from scratch', 1, 1003, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
('WordPress website for our company', 1, 1002, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
('Manage our company servers', 2, 1007, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
('Hosting account is not working', 3, 1009, NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
('MySQL database from my desktop application', 4, 1010, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),
('Develop new WordPress plugin for my business website', 2, 1002, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY)),
('Migrate web application and database to new server', 2, 1003, NOW(), DATE_ADD(NOW(), INTERVAL 5 DAY)),
('Android Application development', 4, 1004, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY));

-- Собеседования
/*avtos*/
CREATE TABLE avtos
(       
	avto_regnum VARCHAR(10) NOT NULL, 
	avto_mark VARCHAR(10), 
	avto_color VARCHAR(15),
	avto_releasedt DATE, 
	avto_phonenum VARCHAR(15),
    PRIMARY KEY (avto_regnum)
);

INSERT INTO avtos (avto_regnum, avto_mark, avto_color, avto_releasedt, avto_phonenum) VALUES
('111114','LADA', 'КРАСНЫЙ', date'2008-01-01', '9152222221'),
('111115','VOLVO', 'КРАСНЫЙ', date'2013-01-01', '9173333334'),
('111116','BMW', 'СИНИЙ', date'2015-01-01', '9173333334'),
('111121','AUDI', 'СИНИЙ', date'2009-01-01', '9173333332'),
('111122','AUDI', 'СИНИЙ', date'2011-01-01', '9213333336'),
('111113','BMW', 'ЗЕЛЕНЫЙ', date'2007-01-01', '9214444444'),
('111126','LADA', 'ЗЕЛЕНЫЙ', date'2005-01-01', null),
('111117','BMW', 'СИНИЙ', date'2005-01-01', null),
('111119','LADA', 'СИНИЙ', date'2017-01-01', 9213333331);

/*citys*/
CREATE TABLE citys
(	
    city_code INT NOT NULL,
	city_name VARCHAR(50), 
	city_peoples INT,
    PRIMARY KEY (city_code)
);

INSERT INTO citys (city_code, city_name, city_peoples) VALUES
(1,'Москва', 10000000),
(2,'Владимир', 500000),
(3, 'Орел', 300000),
(4,'Курск', 200000),
(5, 'Казань', 2000000),
(7, 'Котлас', 110000),
(8, 'Мурманск', 400000),
(9, 'Ярославль', 500000);

/*mans*/
CREATE TABLE mans 
(	
	man_phonenum VARCHAR(15) NOT NULL, 
	man_firstname VARCHAR(50),
	man_lastname VARCHAR(50),  
	man_city_code INT, 
	man_yearold INT,
    PRIMARY KEY (man_phonenum),
    FOREIGN KEY (man_city_code) REFERENCES citys (city_code)
);

INSERT INTO mans (man_phonenum, man_firstname, man_lastname, man_city_code, man_yearold) VALUES
('9152222221','Андрей','Николаев', 1, 22),
('9152222222','Максим','Москитов', 1, 31),
('9153333333','Олег','Денисов', 3, 34),
('9173333334','Алиса','Никина', 4, 31),
('9173333335','Таня','Иванова', 4, 31),
('9213333336','Алексей','Иванов', 7, 25),
('9213333331','Андрей','Некрасов', 2, 27),
('9213333332','Миша','Рогозин', 2, 21),
('9214444444','Алексей','Галкин', 1, 38);