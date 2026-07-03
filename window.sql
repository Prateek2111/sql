SELECT name, department, salary, 
SUM(salary) OVER(ORDER BY salary ROWS BETWEEN unbounded preceding and unbounded following) AS "Total",
AVG(salary) OVER(PARTITION BY department ORDER BY salary) AS "Average",
COUNT(salary) OVER(PARTITION BY department ORDER BY salary) AS "Count"
FROM employee;

-- SUM(salary) OVER(PARTITION BY department ORDER BY salary ROWS BETWEEN unbounded preceding and unbounded following) AS "Total"

SELECT name, department, salary, 
row_number() OVER(PARTITION BY department ORDER BY salary ) AS "Row Number"
FROM employee;

SELECT name, department, salary, 
ROW_NUMBER() OVER(ORDER BY salary ) AS "Row Number"
FROM employee;

SELECT name, department, salary, 
last_value(salary) OVER(ORDER BY salary ) AS "first"
FROM employee;
