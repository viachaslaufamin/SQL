use learn;
-- 1
create TABLE staff1(
id int primary key auto_increment,
name varchar(64),
surname varchar(64),
age int,
position varchar(64) 
);

select *
from staff1;

-- 2
INSERT INTO staff1( name, surname, age, position) VALUES ('Alex', 'Alexeev', 24, 'worker'),
														('Oleg', 'Olegov', 36, 'administration'),
                                                        ('Aleksandr', 'Aleksandrov', 18, 'security'),
                                                        ('Nikita', 'Nikitin', 22, 'worker'),
                                                        ('Viachaslau', 'Viachaslavov', 26, 'administration'),
                                                        ('Stsepan', 'Stsepanov', 34, 'security'),
                                                        ('Alina', 'Alinina', 27, 'worker'),
                                                        ('Valeria', 'Valerivna', 56, 'worker'),
                                                        ('Andrey', 'Andreev', 31, 'security'),
                                                        ('Alisa', 'Alisovna', 23, 'worker');

-- 3
ALTER TABLE staff1
ADD salary int default 0;

select *
from staff1;

-- 4
SET SQL_SAFE_UPDATES=0;

UPDATE staff1
SET salary = CASE
    WHEN position = 'worker' THEN 1000
    WHEN position = 'administration' THEN 5000
    WHEN position = 'security' THEN 2000
    else 0
END;

select *
from staff1;

-- 5

UPDATE staff1
SET salary = salary*2;

select *
from staff1;

-- 6
DELETE FROM staff1
WHERE age > 45;

select *
from staff1;

-- 7
CREATE VIEW worker AS
SELECT *
FROM staff1
WHERE position = 'worker';

CREATE VIEW administration AS
SELECT *
FROM staff1
WHERE position = 'administration';

CREATE VIEW security AS
SELECT *
FROM staff1
WHERE position = 'security';

select *
from staff1;
select *
from worker;
select *
from administration;
select *
from security;
                                                        
-- 8
CREATE TABLE administration_table AS
SELECT name, surname, position
FROM staff1
WHERE position = 'administration';

select *
from administration_table;

-- 9
ALTER TABLE administration_table
DROP COLUMN position;

select *
from administration_table;