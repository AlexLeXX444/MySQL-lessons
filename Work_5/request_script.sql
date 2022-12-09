/*Создайте представление, в которое попадут автомобили стоимостью до 25 000 долларов*/
CREATE VIEW min_price AS SELECT * FROM cars WHERE car_cost < 25000;

/*Изменить в существующем представлении порог для стоимости: пусть цена будет до 30 000 долларов (используя оператор ALTER VIEW)*/
ALTER VIEW min_price AS SELECT * FROM cars WHERE car_cost < 30000;

/*Создайте представление, в котором будут только автомобили марки “Шкода” и “Ауди”*/
CREATE VIEW only_shkoda_audi AS SELECT * FROM cars WHERE car_name = 'Skoda' OR car_name = 'Audi';