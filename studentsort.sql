CREATE TABLE IF NOT EXISTS students (
id INT,
name VARCHAR(50),
department VARCHAR(50),
marks INT
);

INSERT INTO students VALUES
(1, 'Asha', 'CSE', 85),
(2, 'Ravi', 'ECE', 78),
(3, 'John', 'CSE', 92),
(4, 'Mina', 'EEE', 70),
(5, 'Karan', 'CSE', 85),
(6, 'Sara', 'ECE', 88);

-- show students who scored more than 80
SELECT *FROM students
WHERE marks>80;

-- display students sorted by marks
SELECT *FROM students
ORDER BY marks DESC;

SELECT *FROM students
ORDER BY marks ASC;

-- find average marks of each department
SELECT department, AVG(marks) AS avg_marks
FROM students
GROUP BY department;

-- find average marks of department where marks>75 and and sort by highest average
SELECT department, AVG(marks) AS avg_marks
FROM students
WHERE marks>75
GROUP BY department
ORDER BY avg_marks DESC;

-- find departments having more than 2 students
SELECT department,COUNT(*) AS total_students
FROM students
GROUP BY department
HAVING total_students>2;

-- find STUDENTS whose name starts with A
SELECT *FROM students
WHERE name LIKE 'A%';

-- find STUDENTS whose name ends with A
SELECT *FROM students
WHERE name LIKE '%a';

-- find STUDENTS whose names have r in middle
SELECT *FROM students
WHERE name LIKE '%r%';