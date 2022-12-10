CREATE DATABASE gb_lesson6;

USE gb_lesson6;

/*Создайте функцию, которая принимает кол-во сек и формат их в кол-во дней часов.
Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '*/
DROP FUNCTION IF EXISTS timeformat;

DELIMITER &&
CREATE FUNCTION timeformat(num BIGINT)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
	DECLARE is_days INT DEFAULT 0;
	DECLARE is_hours INT DEFAULT 0;
	DECLARE is_minuts INT DEFAULT 0;
	DECLARE is_seconds INT DEFAULT 0;
	DECLARE str VARCHAR(255) DEFAULT '';	
	SET is_days = num DIV 86400;
	SET is_hours = (num - is_days * 86400) DIV 3600;
	SET is_minuts = (num - (is_days * 86400) - (is_hours * 3600)) DIV 60;
	SET is_seconds = num - (is_days * 86400) - (is_hours * 3600) - (is_minuts * 60);
	RETURN CONCAT(is_days, ' days ', is_hours, ' hours ', is_minuts, ' minutes ', is_seconds, ' seconds');
END &&
DELIMITER ;

/*Выведите только четные числа от 1 до 10.
Пример: 2,4,6,8,10*/

/*Самое простое решение, если от 1 до 10*/
DROP FUNCTION IF EXISTS justnumericeasy;

DELIMITER &&
CREATE FUNCTION justnumericeasy()
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
	RETURN CONCAT('2, 4, 6, 8, 10');
END &&
DELIMITER ;

/*решение посложнее и для любого положительного числа помщающегося в INT*/
DROP FUNCTION IF EXISTS justnumeric;

DELIMITER &&
CREATE FUNCTION justnumeric(num INT)
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
	DECLARE res_num INT DEFAULT 2;
	DECLARE ans_str VARCHAR(255) DEFAULT res_num;
	IF num < 2 THEN
		RETURN 'wrong input number';
	ELSE 
		WHILE res_num < num DO			
			SET res_num = res_num + 2;
			SET ans_str = CONCAT(ans_str, ',', res_num);
		END WHILE;
		RETURN ans_str;
	END IF;
END &&
DELIMITER ;