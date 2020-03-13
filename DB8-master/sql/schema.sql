DROP SCHEMA IF EXISTS tracking;
CREATE SCHEMA tracking;
USE tracking;

CREATE TABLE Customer (
                          customer_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
                          customer_title VARCHAR(45) NOT NULL,
                          PRIMARY KEY  (customer_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Shipment (
                          shipment_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
                          shipment_title VARCHAR(45) NOT NULL,
                          customer_id SMALLINT UNSIGNED,
                          PRIMARY KEY  (shipment_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Shipment_Status (
                          status_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
                          status_title VARCHAR(45) NOT NULL,
                          shipment_id SMALLINT UNSIGNED,
                          PRIMARY KEY  (status_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Customer (customer_id, customer_title)
VALUES (1,'Maria Sokolova'),
       (2,'Jacob Snow'),
       (3,'Ivan Semenov'),
       (4,'Igor Smith');

INSERT INTO Shipment (shipment_id, shipment_title, customer_id)
VALUES (1, 'Shipment', 1),
       (2, 'Shipment', 2),
       (3, 'Postal', 3),
       (4, 'Postal', 4),
       (5, 'Shipment', 1),
       (6, 'Shipment', 2),
       (7, 'Postal', 3),
       (8, 'Shipment', 4);

INSERT INTO Shipment_Status (shipment_id, status_title)
VALUES (1, 'Out for delivery'),
       (2, 'Delivered'),
       (3, 'Cancelled'),
       (4, 'Returned'),
       (5, 'Out for delivery'),
       (6, 'Delivered'),
       (7, 'Label created'),
       (8, 'Returned');

select * from Shipment where customer_id = 1;
