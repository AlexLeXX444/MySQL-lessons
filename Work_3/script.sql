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

/*Отсортируйте поле “зарплата” (salary) в порядке убывания и возрастания*/
SELECT * FROM employers ORDER BY employer_salary;
SELECT * FROM employers ORDER BY employer_salary DESC;

/*Выведите 5 максимальных зарплат (salary)*/
SELECT * FROM employers ORDER BY employer_salary DESC LIMIT 5;

/*Подсчитать суммарную зарплату(salary) по каждой специальности (post)*/
SELECT employer_speciaty, SUM(employer_salary) 
FROM employers 
GROUP BY employer_speciaty;

/*Найти количество сотрудников по специальности “Рабочий” (post) в возрасте от 24 до 42 лет.*/
SELECT COUNT(*) FROM employers 
WHERE employer_speciaty='рабочий' AND employer_age > 23 AND employer_age < 46;

/*Найти количество специальностей*/
SELECT COUNT(DISTINCT employer_speciaty) 
FROM employers;

/*Вывести специальности, у которых средний возраст сотрудника меньше 44 лет*/
SELECT employer_speciaty, AVG(employer_age) AS "middle age"
FROM employers 
GROUP BY employer_speciaty
HAVING AVG(employer_age) < 44;

/*
* Можно ввести поле Штрих-Код сотрудника (впоследствии его использовать для пропусков и т.п.)
* Задать его уникаьлным !!!
*/