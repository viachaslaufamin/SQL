CREATE database if not exists goods;
use goods;
CREATE TABLE goods (
id int primary key auto_increment, 
title varchar(64) not null,
quantity int not null
);

INSERT INTO goods (title, quantity) VALUES
('Aplle', 23),
('Banana', 34);

SELECT *
FROM goods;

ALTER TABLE goods
ADD COLUMN price INT DEFAULT 0;

ALTER TABLE goods
MODIFY COLUMN price NUMERIC(8, 2);

ALTER TABLE goods
MODIFY COLUMN price INT DEFAULT 0;

 ALTER TABLE goods
 CHANGE price item_price INT;
 
SET SQL_SAFE_UPDATES=0;

ALTER TABLE goods
DROP COLUMN item_price;