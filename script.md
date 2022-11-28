# Первое задание.

Создайте таблицу с мобильными телефонами, используя графический интерфейс. Заполните БД данными.

    CREATE TABLE `My-First_DB`.product_phone (
        phone_id BIGINT auto_increment NOT NULL,
        phone_manufacturer varchar(30) NOT NULL,
        phone_model varchar(50) NOT NULL,
        phone_remains INT NULL,
        phone_price DECIMAL NULL,
        CONSTRAINT product_phone_PK PRIMARY KEY (phone_id)
    )
    ENGINE=InnoDB
    DEFAULT CHARSET=utf8mb4
    COLLATE=utf8mb4_0900_ai_ci
    AUTO_INCREMENT=1;

---

    INSERT INTO `My-First_DB`.product_phone (phone_manufacturer, phone_model, phone_remains, phone_price) 
    VALUES('Samsung', 'Galaxy A01 Core', 0, 3590);

    INSERT INTO `My-First_DB`.product_phone (phone_manufacturer, phone_model, phone_remains, phone_price) 
    VALUES('Samsung', 'alaxy A02', 4, 7990);

    INSERT INTO `My-First_DB`.product_phone (phone_manufacturer, phone_model, phone_remains, phone_price) 
    VALUES('Samsung', 'Galaxy A10', 6, 5490);

    INSERT INTO `My-First_DB`.product_phone (phone_manufacturer, phone_model, phone_remains, phone_price) 
    VALUES('Samsung', 'Galaxy J4+', 0, 6290);

    INSERT INTO `My-First_DB`.product_phone (phone_manufacturer, phone_model, phone_remains, phone_price) 
    VALUES('Samsung', 'Galaxy A03', 11, 6720);

    INSERT INTO `My-First_DB`.product_phone (phone_manufacturer, phone_model, phone_remains, phone_price) 
    VALUES('Samsung', 'Galaxy A11', 0, 7090);

    INSERT INTO `My-First_DB`.product_phone (phone_manufacturer, phone_model, phone_remains, phone_price) 
    VALUES('Samsung', 'Galaxy A20s', 0, 7990);

    INSERT INTO `My-First_DB`.product_phone (phone_manufacturer, phone_model, phone_remains, phone_price) 
    VALUES('Samsung', 'Galaxy A12', 0, 7990);

    INSERT INTO `My-First_DB`.product_phone (phone_manufacturer, phone_model, phone_remains, phone_price) 
    VALUES('Samsung', 'Galaxy J8', 15, 8790);

    INSERT INTO `My-First_DB`.product_phone (phone_manufacturer, phone_model, phone_remains, phone_price) 
    VALUES('Samsung', 'Galaxy A6', 10, 8990);

    INSERT INTO `My-First_DB`.product_phone (phone_manufacturer, phone_model, phone_remains, phone_price) 
    VALUES('Apple', 'iPhone 6', 0, 11163);

    INSERT INTO `My-First_DB`.product_phone (phone_manufacturer, phone_model, phone_remains, phone_price) 
    VALUES('Apple', 'iPhone 6S', 0, 20203);

    INSERT INTO `My-First_DB`.product_phone (phone_manufacturer, phone_model, phone_remains, phone_price) 
    VALUES('Apple', 'iPhone 7', 1, 9990);

    INSERT INTO `My-First_DB`.product_phone (phone_manufacturer, phone_model, phone_remains, phone_price) 
    VALUES('Apple', 'iPhone 7S', 5, 17749);

    INSERT INTO `My-First_DB`.product_phone (phone_manufacturer, phone_model, phone_remains, phone_price) 
    VALUES('Apple', 'iPhone 8', 0, 14990);

    INSERT INTO `My-First_DB`.product_phone (phone_manufacturer, phone_model, phone_remains, phone_price) 
    VALUES('Apple', 'iPhone 8S', 4, 20756);

    INSERT INTO `My-First_DB`.product_phone (phone_manufacturer, phone_model, phone_remains, phone_price) 
    VALUES('Apple', 'iPhone SE 2020', 1, 15990);

    INSERT INTO `My-First_DB`.product_phone (phone_manufacturer, phone_model, phone_remains, phone_price) 
    VALUES('Apple', 'iPhone X', 16, 22900);

    INSERT INTO `My-First_DB`.product_phone (phone_manufacturer, phone_model, phone_remains, phone_price) 
    VALUES('Apple', 'iPhone Xr', 20, 20990);

    INSERT INTO `My-First_DB`.product_phone (phone_manufacturer, phone_model, phone_remains, phone_price) 
    VALUES('Apple', 'iPhone Xs', 12, 22990);

    INSERT INTO `My-First_DB`.product_phone (phone_manufacturer, phone_model, phone_remains, phone_price) 
    VALUES('Apple', 'iPhone 11', 0, 27590);

---

Выведите название, производителя и цену для товаров, количество которых превышает '2'.

    SELECT phone_model, phone_manufacturer, phone_price
    FROM `My-First_DB`.product_phone
    WHERE phone_remains > 2;

---

Выведите весь ассортимент товаров марки “Samsung”.

    SELECT phone_model, phone_manufacturer, phone_price
    FROM `My-First_DB`.product_phone
    WHERE phone_manufacturer = 'Samsung';

---

    SELECT phone_model, phone_manufacturer, phone_price
    FROM `My-First_DB`.product_phone
    WHERE phone_manufacturer = 'Samsung' && phone_remains > 2;
