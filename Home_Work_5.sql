use hr;
SELECT *
FROM employees;
 
 
SELECT *
FROM departments;

SELECT *
FROM locations;

SELECT *
FROM regions;


SELECT *
FROM countries;


SELECT 
t1.first_name,
t1.last_name,
t1.salary
FROM employees t1
INNER JOIN departments t2
ON t1.department_id = t2.department_id
INNER JOIN locations t3
ON t2.location_id = t3.location_id AND t3.city IN ('Oxford', 'South San Francisco');


SELECT 
t1.first_name,
t1.last_name,
t3.city
FROM employees t1
INNER JOIN departments t2
ON t1.department_id = t2.department_id
INNER JOIN locations t3
ON t2.location_id = t3.location_id;


SELECT 
t1.city,
t2.country_name
FROM locations t1
INNER JOIN countries t2
ON t1.country_id = t2.country_id;

