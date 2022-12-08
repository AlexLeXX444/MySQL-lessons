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

/*Вывести на экран марку авто и количество AUTO не этой марки*/
SELECT DISTINCT avto_mark
FROM avtos 
WHERE avto_mark='LADA'
INNER JOIN avtos ON COUNT (avto_mark NOT 'LADA');