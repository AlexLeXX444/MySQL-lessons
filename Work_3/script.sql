CREATE DATABASE IF NOT EXISTS gb_lesson3;

/**/
CREATE TABLE employers
(
    employer_id INT NOT NULL AUTO_INCREMENT,
    employer_name VARCHAR(30) NOT NULL,
    employer_surname VARCHAR(30) NOT NULL,
    employer_speciaty VARCHAR(30) NOT NULL,
    employer_seniority SMALLINT NOT NULL,
    employer_salary MEDIUMINT NOT NULL,
    employer_age TINYINT UNSIGNED NOT NULL,
    PRIMARY KEY (employer_id)
);

/**/
INSERT INTO `gb_lesson3`.employers (employer_name, employer_surname, employer_speciaty, employer_seniority, employer_salary, employer_age) 
VALUES('Вася', 'Васькин', 'начальник', 40, 100000, 60),
('Петя', 'Петькин', 'начальник', 8, 70000, 30),
('Катя', 'Каткина', 'инженер', 2, 70000, 25),
('Саша', 'Сашкин', 'инженер', 12, 50000, 35),
('Иван', 'Иванов', 'рабочий', 40, 30000, 59),
('Петр', 'Петров', 'рабочий', 20, 25000, 40),
('Сидор', 'Сидоров', 'рабочий', 10, 20000, 35),
('Антон', 'Антонов', 'рабочий', 8, 19000, 28),
('Юра', 'Юркин', 'рабочий', 5, 15000, 25),
('Максим', 'Воронин', 'рабочий', 2, 11000, 22),
('Юра', 'Галкин', 'рабочий', 3, 12000, 24),
('Люся', 'Люськина', 'уборщик', 10, 10000, 49);

/**/
SELECT * FROM employers ORDER BY employer_salary;
SELECT * FROM employers ORDER BY employer_salary DESC;