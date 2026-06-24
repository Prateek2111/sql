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

-- Stored Procedure

-- without params
DELIMITER /
CREATE PROCEDURE getAllDetails()
BEGIN
SELECT * FROM employee;
END /
DELIMITER ;

CALL getAllDetails();

DROP PROCEDURE getAllDetails;

-- without params 

DELIMITER /
CREATE PROCEDURE getAllDetails(IN id int)
BEGIN
SELECT * FROM employee
WHERE id = id;
END /
DELIMITER ;

CALL getAllDetails(2);

-- view in sql

CREATE VIEW view1 AS
SELECT name, age, department FROM employee;

SELECT * FROM view1;






