CREATE DATABASE ecomm;

USE ecomm;

CREATE TABLE customer(
	id INT,
    name VARCHAR(10)
);


INSERT INTO customer(id, name)
VALUES(1, "Prateek"),
(2, "Pragati"),
(3, "Ayush"),
(4, "Ajit"),
(5, "Kanishka"),
(6, "Jiya");

SELECT * FROM customer;

USE ecomm;

CREATE TABLE orders(
	id INT PRIMARY KEY,
    ordername VARCHAR(50)
);

DROP TABLE orders;

INSERT INTO orders(id, ordername)
VALUES(2, "Fruits"),
(3, "Ball"),
(4, "Utensils");

SELECT * FROM orders;

-- Inner Joins
SELECT customer.id, customer.name, orders.ordername
FROM customer
INNER JOIN orders
ON customer.id = orders.id;


-- Left/Right Joins
SELECT customer.id, customer.name, orders.ordername
FROM customer
LEFT JOIN orders
ON customer.id = orders.id;

-- Full Joins

SELECT customer.id, customer.name, orders.ordername
FROM customer
LEFT JOIN orders
ON customer.id = orders.id

UNION

SELECT customer.id, customer.name, orders.ordername
FROM customer
RIGHT JOIN orders
ON customer.id = orders.id;


-- Cross Joins

SELECT customer.id, customer.name, orders.ordername
FROM customer
CROSS JOIN orders;


