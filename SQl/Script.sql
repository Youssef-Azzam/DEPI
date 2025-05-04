CREATE TABLE students (
    id SERIAL PRIMARY KEY, -- Unique ID for each student
    name VARCHAR(50) NOT NULL -- Name of the student
);
 
-- Create the courses table
CREATE TABLE courses (
    id SERIAL PRIMARY KEY, -- Unique ID for each course
    name VARCHAR(100) NOT NULL -- Name of the course
);
 
-- Create the enrollments table
CREATE TABLE enrollments (
    id SERIAL PRIMARY KEY, -- Unique ID for each enrollment record
    student_id INT REFERENCES students(id), -- Foreign key linking to the students table
    course_id INT REFERENCES courses(id) -- Foreign key linking to the courses table
);
 
-- Insert sample data into the students table
INSERT INTO students (name) VALUES
('Ali'),
('Sarah'),
('Ahmed'),
('Fatima');
 
-- Insert sample data into the courses table
INSERT INTO courses (name) VALUES
('Mathematics'),
('Physics'),
('Computer Science');
 
-- Insert sample data into the enrollments table
INSERT INTO enrollments (student_id, course_id) VALUES
(1, 1), -- Ali enrolled in Mathematics
(2, 1), -- Sarah enrolled in Mathematics
(3, 2), -- Ahmed enrolled in Physics
(4, 1), -- Fatima enrolled in Mathematics
(3, 3); -- Ahmed enrolled in Computer Science


SELECT c.name, sub.enrollments
FROM courses c
JOIN (
    -- Subquery to count the number of enrollments per course
SELECT course_id, COUNT(id) AS enrollments
FROM enrollments
GROUP BY course_id
) sub ON c.id = sub.course_id
WHERE sub.enrollments > 1; 


SELECT c.name, COUNT(e.id) AS enrollments
FROM courses c
LEFT JOIN enrollments e ON c.id = e.course_id
GROUP BY c.id; -- Group by course ID to calculate enrollments for each course

CREATE VIEW display0
AS

SELECT s.name AS Student_name, c.name, e.id
FROM  enrollments e
JOIN courses c ON c.id = e.course_id
JOIN students s ON s.id = e.student_id;

Select * FROM display0;


CREATE VIEW display1
AS

SELECT  c.name AS Course_name, e.id 
FROM  enrollments e
Left JOIN courses c ON c.id = e.course_id
where e.id is null; -- if (e.id == None)

Select * FROM display1;

CREATE VIEW display2
AS

SELECT  s.name AS Student_name, count(e.id) AS enroll_count 
FROM  enrollments e
JOIN students s ON s.id = e.student_id
GROUP BY Student_name;

Select * FROM display2;

CREATE VIEW display5 AS
SELECT c.name AS Student_name, COUNT(e.id) AS enroll_count 
FROM enrollments e
JOIN courses c ON c.id = e.course_id
GROUP BY c.name
HAVING COUNT(e.id) > 2;

SELECT * FROM display5;

CREATE VIEW display3 AS
SELECT s.name AS Student_name, COUNT(e.id) AS enroll_count 
FROM enrollments e
JOIN students s ON s.id = e.student_id
GROUP BY s.name
HAVING COUNT(e.id) > 2;

SELECT * FROM display3;


CREATE VIEW display6
AS

SELECT s.name AS Student_name, c.name, e.id
FROM  enrollments e
JOIN courses c ON c.id = e.course_id
JOIN students s ON s.id = e.student_id;

Select * FROM display6;

DROP VIEW display3


