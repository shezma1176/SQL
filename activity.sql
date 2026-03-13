CREATE TABLE result(
idno TEXT PRIMARY KEY,
Sname TEXT,
grade TEXT,
GPA INTEGER,
CITY TEXT
);

INSERT INTO result (idno, Sname, grade, GPA, CITY) VALUES
('234', 'Orien', '9', 5, 'British Columbia'),
('194', 'Mari', '8', 4.5, 'Italy'),
('156', 'Eno', '7', 5, 'Malaysia'),
('945', 'Jordan', '4', 4, 'Australia'),
('224', 'Rebzy', '3', 4, 'USA');

SELECT * FROM result;