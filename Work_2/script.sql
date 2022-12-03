/**/
CREATE DATABASE gb_lesson2;

USE gb_lesson2;

CREATE TABLE goods
(
    good_id INT NOT NULL AUTO_INCREMENT,
    good_name VARCHAR(30) NOT NULL,
    good_barcode VARCHAR(15) NOT NULL,
    good_remains SMALLINT NULL,
    good_price DECIMAL NULL,
    PRIMARY KEY (good_id)
);

INSERT INTO `gb_lesson2`.goods (good_name, good_barcode, good_remains, good_price) 
VALUES('Samsung Galaxy A01 Core', '4-651232-457896', 122, 3590);
INSERT INTO `gb_lesson2`.goods (good_name, good_barcode, good_remains, good_price) 
VALUES('Samsung Galaxy A02', '4-651232-457896', 4, 7990);
INSERT INTO `gb_lesson2`.goods (good_name, good_barcode, good_remains, good_price) 
VALUES('Samsung Galaxy A10', '4-651232-457896', 6, 5490);
INSERT INTO `gb_lesson2`.goods (good_name, good_barcode, good_remains, good_price) 
VALUES('Samsung Galaxy J4+', '4-651232-457896', 0, 6290);
INSERT INTO `gb_lesson2`.goods (good_name, good_barcode, good_remains, good_price) 
VALUES('Samsung Galaxy A03', '4-651232-457896', 150, 6720);
INSERT INTO `gb_lesson2`.goods (good_name, good_barcode, good_remains, good_price) 
VALUES('Samsung Galaxy A11', '4-651232-457896', 0, 7090);
INSERT INTO `gb_lesson2`.goods (good_name, good_barcode, good_remains, good_price)  
VALUES('Samsung Galaxy A20s', '4-651232-457896', 0, 7990);
INSERT INTO `gb_lesson2`.goods (good_name, good_barcode, good_remains, good_price) 
VALUES('Samsung Galaxy A12', '4-651232-457896', 0, 7990);
INSERT INTO `gb_lesson2`.goods (good_name, good_barcode, good_remains, good_price) 
VALUES('Samsung Galaxy J8', '4-651232-457896', 15, 8790);
INSERT INTO `gb_lesson2`.goods (good_name, good_barcode, good_remains, good_price) 
VALUES('Samsung Galaxy A6', '4-651232-457896', 10, 8990);
INSERT INTO `gb_lesson2`.goods (good_name, good_barcode, good_remains, good_price) 
VALUES('Apple iPhone 6', '4-651232-457896', 0, 11163);
INSERT INTO `gb_lesson2`.goods (good_name, good_barcode, good_remains, good_price)  
VALUES('Apple iPhone 6S', '4-651232-457896', 295, 20203);
INSERT INTO `gb_lesson2`.goods (good_name, good_barcode, good_remains, good_price) 
VALUES('Apple iPhone 7', '4-651232-457896', 1, 9990);
INSERT INTO `gb_lesson2`.goods (good_name, good_barcode, good_remains, good_price) 
VALUES('Apple iPhone 7S', '4-651232-457896', 5, 17749);
INSERT INTO `gb_lesson2`.goods (good_name, good_barcode, good_remains, good_price) 
VALUES('Apple iPhone 8', '4-651232-457896', 0, 14990);
INSERT INTO `gb_lesson2`.goods (good_name, good_barcode, good_remains, good_price) 
VALUES('Apple iPhone 8S', '4-651232-457896', 4, 20756);
INSERT INTO `gb_lesson2`.goods (good_name, good_barcode, good_remains, good_price) 
VALUES('Apple iPhone SE 2020', '4-651232-457896', 1, 15990);
INSERT INTO `gb_lesson2`.goods (good_name, good_barcode, good_remains, good_price) 
VALUES('Apple iPhone X', '4-651232-457896', 410, 22900);
INSERT INTO `gb_lesson2`.goods (good_name, good_barcode, good_remains, good_price)  
VALUES('Apple iPhone Xr', '4-651232-457896', 20, 20990);
INSERT INTO `gb_lesson2`.goods (good_name, good_barcode, good_remains, good_price) 
VALUES('Apple iPhone Xs', '4-651232-457896', 12, 22990);
INSERT INTO `gb_lesson2`.goods (good_name, good_barcode, good_remains, good_price)  
VALUES('Apple iPhone 11', '4-651232-457896', 0, 27590);



/**/
CREATE TABLE sales
(
    sales_id INT NOT NULL AUTO_INCREMENT,
    sale_number VARCHAR(30) NOT NULL,
    sale_date_time DATETIME NOT NULL,
    sale_cost DECIMAL NULL,
    sale_good_id INT NOT NULL,
    PRIMARY KEY (sales_id),
    FOREIGN KEY (sale_good_id) REFERENCES goods (good_id)
);

INSERT INTO `gb_lesson2`.sales (sale_number, sale_date_time, sale_cost, sale_good_id) 
VALUES('00000001', '20090604181356', 3590, 1);
INSERT INTO `gb_lesson2`.sales (sale_number, sale_date_time, sale_cost, sale_good_id) 
VALUES('00000002', '20221201112203', 7990, 2);
INSERT INTO `gb_lesson2`.sales (sale_number, sale_date_time, sale_cost, sale_good_id) 
VALUES('00000003', '20221201185757', 7990, 7);


/**/
SELECT good_name AS 'Наименование', good_remains AS 'Остаток',
	CASE
        WHEN good_remains < 100 THEN 'нужно закупить'
        WHEN good_remains >= 100 AND good_remains <= 300 THEN 'хватает'
        ELSE 'усилить продажи'
    END AS 'Планирование'
FROM goods
ORDER BY good_remains;

/**/
CREATE TABLE orders
(
    order_id INT NOT NULL AUTO_INCREMENT,
    order_number VARCHAR(30) NOT NULL,
    order_date_time DATETIME NOT NULL,
    order_cost DECIMAL NULL,
    order_good_id INT NOT NULL,
    order_sale_id INT NOT NULL,
    PRIMARY KEY (order_id),
    FOREIGN KEY (order_good_id) REFERENCES goods (good_id),
    FOREIGN KEY (order_sale_id) REFERENCES sales (sales_id)
);

INSERT INTO `gb_lesson2`.orders (order_number, order_date_time, order_cost, order_good_id, order_sale_id) 
VALUES('00000001', '20090604181356', 3590, 5, 1);
INSERT INTO `gb_lesson2`.orders (order_number, order_date_time, order_cost, order_good_id, order_sale_id) 
VALUES('00000002', '20221201112203', 7990, 7, 2);

/**/
SELECT order_number AS "Order number", order_date_time AS "Order date", order_cost AS "Cost", 
    (CASE WHEN order_good_id THEN (SELECT good_name FROM goods WHERE good_id = order_good_id) ELSE NULL END) AS "Good name",
    (CASE WHEN order_sale_id THEN (SELECT sale_number FROM sales WHERE sales_id = order_sale_id) ELSE NULL END) AS "Sale number"
FROM orders;