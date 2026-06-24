USE xyz;

Select * from employee;

SELECT AVG(salary) FROM employee;

SELECT MIN(age) FROM employee;

-- WHERE clause

SELECT name, salary
FROM employee
WHERE salary > (SELECT AVG(salary) FROM employee);

-- FROM
SELECT MIN(age) AS min_age FROM employee;

SELECT emp.name, emp.age
FROM employee emp, (SELECT MIN(age) AS min_age FROM employee) AS subquery
WHERE emp.age > subquery.min_age;

-- SELECT

SELECT age, (SELECT AVG(age) FROM employee) AS avg_age
FROM employee;

-- subqueries
