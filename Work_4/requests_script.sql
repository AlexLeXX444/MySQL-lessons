/*Вывести на экран сколько машин каждого цвета для машин марок BMW и LADA*/
SELECT avto_mark, avto_color, COUNT(avto_color) 
FROM avtos 
WHERE avto_mark='LADA'
GROUP BY avto_color
UNION SELECT avto_mark, avto_color, COUNT(avto_color) 
FROM avtos 
WHERE avto_mark='BMW'
GROUP BY avto_color
ORDER BY avto_mark;

/*Вывести на экран марку авто и количество avtos не этой марки*/
SELECT DISTINCT avto_mark, 
	   (SELECT COUNT(*) FROM avtos b WHERE b.avto_mark != a.avto_mark) AS 'not_mark' 
FROM avtos a;

/*Напишите запрос, который вернет строки из таблицы test_a, id которых нет в таблице test_b, НЕ используя ключевого слова NOT.*/
SELECT test_a.id FROM test_a 
LEFT JOIN test_b ON (test_a.id = test_b.id) WHERE test_b.id IS NULL;