CREATE TABLE IF NOT EXISTS students(
student_id TEXT PRIMARY KEY,
student_name TEXT,
city TEXT,
grade TEXT,
GPA INTEGER
);

INSERT INTO students (student_id, student_name, city, grade, GPA) VALUES
('5001', 'James Hoog', 'New York', '7', 5),
('5002', 'Nail Knite', 'Paris', '7', 5),
('5005', 'Pit Alex', 'London', '7', 4.5),
('5006', 'MC Lycon', 'Paris', '3', 4),
('5004', 'Paul Adam', 'Rome', '6', 4);

SELECT * FROM students;