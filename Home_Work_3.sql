-- 1
use learn;

SELECT *
FROM goods;

SELECT *
FROM goods_two;


SELECT 
t1.title,t1.in_stok,
t2.price
FROM goods t1
INNER JOIN goods_two t2
ON t1.title = t2.title;


use airport;
SELECT *
FROM airliners;
SELECT *
FROM clients;
SELECT *
FROM tickets;
SELECT *
FROM trips;
-- 2
SELECT
t1.id,t1.name,
t2.id,t2.price,t2.service_class
FROM clients t1
INNER JOIN tickets t2
ON t1.id = t2.client_id;
-- 3
SELECT
t1.id,t1.price,t1.service_class,
t2.departure, t2.arrival
FROM tickets t1
INNER JOIN trips t2
ON t1.trip_id = t2.id;

-- 4
SELECT *
FROM airliners
WHERE id NOT IN
				(SELECT DISTINCT airliner_id
				FROM trips);

-- 5
SELECT *
FROM clients
WHERE id NOT IN
				(SELECT DISTINCT client_id
				FROM tickets);
                
-- 6

SELECT
t1.*,
t2.*,
t3.*
FROM clients t1
INNER JOIN tickets t2
INNER JOIN trips t3
ON t1.id = t2.client_id && t2.trip_id=t3.id;
