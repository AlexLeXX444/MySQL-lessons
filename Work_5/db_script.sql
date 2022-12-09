CREATE DATABASE gb_lesson5;

USE gb_lesson5;


CREATE TABLE cars
(
	car_id INT NOT NULL ,
    car_name VARCHAR(45),
    car_cost INT,
    PRIMARY KEY (car_id)
);

INSERT cars (car_id, car_name, car_cost) VALUES
    (1, "Audi", 52642),
    (2, "Mercedes", 57127 ),
    (3, "Skoda", 9000 ),
    (4, "Volvo", 29000),
    (5, "Bentley", 350000),
    (6, "Citroen ", 21000 ), 
    (7, "Hummer", 41400), 
    (8, "Volkswagen ", 21600);