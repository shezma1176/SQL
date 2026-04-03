CREATE TABLE IF NOT EXISTS salesman(
salesman_id TEXT PRIMARY KEY,
s_name TEXT,
city TEXT,
comission REAL
);

INSERT INTO salesman (salesman_id, s_name, city, comission) VALUES
('5001', 'James Hoog', 'New York', 0.15),
('5002', 'Nail Knite', 'Paris', 0.13),
('5005', 'Pit Alex', 'London', 0.11),
('5006', 'MC Lycon', 'Paris', 0.14),
('5004', 'Paul Adam', 'Rome', 0.12);

SELECT * FROM salesman;

CREATE TABLE IF NOT EXISTS customer(
customer_id TEXT PRIMARY KEY,
customer_name TEXT,
city TEXT,
grade TEXT,
salesman_id TEXT
);

INSERT INTO customer (customer_id, customer_name, city, grade, salesman_id) VALUES
("3002", "nick rimando","new york","100","5001"),
("3007","brad davis","new york","200","5001"),
("3005","graham zusi","california","200","5002"),
("3008","julian green","london","300","5002"),
("3004","fabian johnson","paris","300","5006"),
("3009","geoff cameron","berlin","100","5003"),
("3003","jozy altidor","moscow","200","5006"),
("3001","brad guzan","london","","5005");

SELECT * FROM customer;

CREATE TABLE IF NOT EXISTS orders(
ord_no TEXT PRIMARY KEY,
purch_amt REAL,
ord_date TEXT,
customer_id TEXT,
salesman_id TEXT
);


INSERT INTO orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES
('70001', 150.0, '2026-10-05', '3005', '5001'),
('70008', 270.65, '2026-05-20', '3001', '5005'),
('70003', 50.30, '2026-09-02', '3002', '5004'),
('70004', 110.25, '2026-10-15', '3004', '5002'),
('70010', 2400.0, '2026-07-05', '3007', '5006');

SELECT * FROM orders;

-- Matching customers and salesmen by city

SELECT customer.customer_name, salesman.s_name, salesman.city
FROM customer
JOIN salesman ON customer.city = salesman.city;

SELECT customer.customer_name, salesman.s_name
FROM customer
JOIN salesman ON customer.salesman_id = salesman.salesman_id;

-- Fetching orders where customer's city does not match salesman's city, <> not equal symbol

SELECT orders.ord_no, customer.customer_name, orders.customer_id, orders.salesman_id
FROM orders
JOIN customer ON orders.customer_id = customer.customer_id
JOIN salesman ON orders.salesman_id = salesman.salesman_id
WHERE customer.city <> salesman.city;

-- Fetching all orders with customer names

SELECT orders.ord_no, customer.customer_name
FROM orders
JOIN customer ON orders.customer_id = customer.customer_id;

-- Customers with grades

SELECT customer.customer_name AS "Customer", customer.grade AS "Grade"
FROM orders
JOIN salesman ON orders.salesman_id = customer.customer_id
JOIN customer ON orders.customer_id = customer.customer_id
WHERE customer.grade IS NOT NULL;

-- Customers with salesmen where commission is between 0.12 and 0.14

SELECT customer.customer_name AS "Customer",
customer.city AS "City",
salesman.s_name AS "Salesman",
salesman.comission 
FROM customer
JOIN salesman ON customer.salesman_id = salesman.salesman_id
WHERE salesman.comission BETWEEN 0.12 AND 0.14;


-- Calculating commissions for orders where customer grade is 200 or more

SELECT orders.ord_no, customer.customer_name, salesman.comission AS "Comission%",
orders.purch_amt * salesman.comission AS "Comission"
FROM orders
JOIN salesman ON orders.salesman_id = salesman.salesman_id
JOIN customer ON orders.customer_id = customer.customer_id
WHERE customer.grade >= 200;

-- Orders on a specific date

SELECT *
FROM customer
JOIN orders ON customer.customer_id = orders.customer_id
WHERE orders.ord_date = '2026-10-05';