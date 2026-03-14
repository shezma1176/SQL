CREATE TABLE IF NOT EXISTS customer(
user_id INTEGER PRIMARY KEY AUTOINCREMENT,
mobile_no TEXT UNIQUE,
user_area TEXT,
address TEXT,
purchase_amount REAL,
purchase_date DATE
);


INSERT INTO customer (user_id, mobile_no, user_area, address, purchase_amount, purchase_date) VALUES
(1, '01712345678','Rail Road Area', 'Jessore', 1200.50, '2026-03-14'),
(2, '01734245658','Gulshan', 'Dhaka', 2450.50, '2026-01-20'),
(4, '01235234567','Rail Road Area', 'Jessore', 230.85, '2026-05-24'),
(5, '01767455622','KDA Avenue', 'Khulna', 940.00, '2026-03-03'),
(3, '01342156674','Mirpur', 'Dhaka', 3000.85, '2026-03-26');

SELECT * FROM customer;

SELECT * FROM customer WHERE user_area = 'Rail Road Area' AND address = 'Jessore';

SELECT * FROM customer WHERE address = 'Dhaka';

SELECT user_id, mobile_no, purchase_amount, purchase_date
FROM customer
WHERE purchase_amount =
(SELECT MIN(purchase_amount) FROM customer);


SELECT user_id, mobile_no, purchase_amount, purchase_date
FROM customer
WHERE purchase_amount =
(SELECT MAX(purchase_amount) FROM customer);

