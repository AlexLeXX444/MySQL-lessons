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

CREATE TABLE receipts
(
    receipt_id INT NOT NULL AUTO_INCREMENT,
    receipt_number DOUBLE NOT NULL,
    receipt_good_id INT,
    PRIMARY KEY (receipt_id, receipt_number),
    FOREIGN KEY (receipt_good_id) REFERENCES goods (good_id)
);

CREATE TABLE sales
(
    sale_id INT NOT NULL AUTO_INCREMENT,
    sale_date_time TIMESTAMP NOT NULL,
    sale_total_cost DECIMAL,
    sale_receipt_number DOUBLE NOT NULL,
    PRIMARY KEY (sale_id),
    FOREIGN KEY (sale_receipt_number) REFERENCES receipts (receipt_number)
);