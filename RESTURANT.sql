-- Create Restaurant table

CREATE TABLE IF NOT EXISTS Restaurant (
name TEXT,
neighborhood TEXT,
cuisine TEXT,
review REAL,
price TEXT,
health TEXT

);

-- Insert data

INSERT INTO Restaurant (name, neighborhood, cuisine, review, price, health)
VALUES
('Peter', 'Brooklyn', 'Steak', 4.4, '$$$$', 'A'),
('Jongro', 'Midtown', 'Korean', 3.5, '$$', 'A'),
('Pocha', 'Midtown', 'Pizza', 4.0, '$$$', 'B'),
('Lighthouse', 'Queens', 'Chinese', 3.9, '$', 'A'),
('Minca', 'Downtown', 'American', 4.6, '$$$', ''),
('Marea', 'Chinatown', 'Chinese', 3.0, '$$', ''),
('Dirty Candy', 'Uptown', 'Italian', 4.9, '$$$$', 'B'),
('Di Fara Pizza', 'Brooklyn', 'Pizza', 3.8, '$$', 'A'),
('Golden Unicorn', 'Uptown', 'Italian', 3.8, '$$', 'A');

-- 1) Distinct neighborhoods
SELECT DISTINCT neighborhood
FROM Restaurant;
-- 2) Distinct cuisine types
SELECT DISTINCT cuisine
FROM Restaurant;


-- 3) Chinese takeout options
SELECT *
FROM Restaurant
WHERE cuisine = "Chinese";

-- 4) Restaurants with reviews 4 and above
SELECT *
FROM Restaurant
WHERE review >= 4.0;


-- 5) Italian restaurants with $$ to $$$
SELECT *
FROM Restaurant
WHERE cuisine = "Italian"
AND price IN ('$$', '$$$');
