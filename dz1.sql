use airport;

SELECT
*
FROM clients
WHERE age > 40;


SELECT
*
FROM clients
WHERE name LIKE '%Egor%';


SELECT
*
FROM tickets
WHERE service_class IN('Economy','PremiumEconomy') 
AND price > 40000;


SELECT
departure,
arrival
FROM trips
WHERE status IN('Cancelled','Delayed');


SELECT * 
FROM clients 
ORDER BY SUBSTRING_INDEX(name, ' ', -1);


SELECT * 
FROM clients 
ORDER BY age DESC;


SELECT *
FROM tickets
WHERE service_class NOT IN ('Economy') 
ORDER BY price DESC;


SELECT
side_number,
CASE
WHEN production_year<=2000
	THEN 'old'
WHEN production_year>2000 AND production_year<=2010
	THEN 'mid'
WHEN production_year>2010
	THEN 'new'
END AS data_age
FROM airliners
WHERE distance<=10000
ORDER BY production_year ASC;


SELECT
id,
trip_id,
CASE
	WHEN service_class ='Economy'
		THEN price*0.85
	WHEN service_class ='Business'
		THEN price*0.9
	WHEN service_class ='PremiumEconomy'
		THEN price*0.8
END AS new_price
FROM tickets
WHERE trip_id IN('LL4S1G8PQW','0SE4S0HRRU','JQF04Q8I9G');