
-- new database

CREATE DATABASE xyz;

USE xyz;

CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
department VARCHAR(50),
city VARCHAR(50),
salary INT);

INSERT INTO employee(id,name,age, department,city,salary)
VALUES (1, "rahul" , 25, "IT" , "Mumbai", 1500),
 (2, "afsara", 26, "HR", "Pune", 2000), 
 (3, "abhimanyu", 27, "IT" , "Mumbai", 2500), 
 (4, "aditya", 25, "Marketing" , "Surat", 2400), 
 (5, "raj", 24, "Finance", "Indore", 3000),
 (6, "kishan" , 25, "IT" , "Mumbai", 1500),
 (7, "anurag", 26, "HR", "Pune", 2000), 
 (8, "surya", 27, "IT" , "Mumbai", 2500), 
 (9, "prateek", 25, "Marketing" , "Surat", 2400), 
 (10, "pragati", 24, "Finance", "Indore", 3000);
 
 SELECT * FROM employee;
 
 -- question - 1
 SELECT city, COUNT(name)
 FROM employee
 GROUP BY city;
 
 -- question - 2. Write a query to find the maximum salary of employees in each city in descending order
 
 SELECT city, MAX(salary) AS max_salary
 FROM employee
 GROUP BY city
 ORDER BY max_salary DESC;
 
 -- question - 3 3. Write a query to display the department names alongside the total count of employees in each department, sorting the results by the total number of employees in descending order.
 
 SELECT department, AVG(salary) as avg_salary
 FROM employee
 GROUP BY department
 HAVING avg_salary>1200;
 
 
