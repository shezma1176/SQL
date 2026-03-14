CREATE TABLE IF NOT EXISTS student_info(
roll_no TEXT PRIMARY KEY,
name TEXT NOT NULL,
address TEXT,
phone TEXT,
age INTEGER
);

INSERT INTO student_info (roll_no, name, address, phone, age) VALUES
('1', 'Ram', 'Delhi', '******', 11),
('2', 'Ramesh', 'Gurgaon', '******', 13),
('3', 'Sujit', 'Rohtak', '******', 12),
('4', 'Suresh', 'Delhi', '******', 11),
('5', 'Aman', 'Rohtak', '******', 11);

SELECT * FROM student_info;

SELECT * FROM student_info WHERE age = 11 AND address = 'Delhi';

SELECT * FROM student_info WHERE age = 11 AND name = 'Ram';

SELECT * FROM student_info WHERE name = 'Ram' OR name = 'Sujit';

SELECT * FROM student_info WHERE age = 11 AND (name = 'Ram' OR name = 'Aman');