
-- TASK 5: AGGREGATE FUNCTIONS & GROUP BY

-- 1. Create Database
CREATE DATABASE IF NOT EXISTS task5;

-- 2. Use Database
USE task5;

-- 3. Create Students Table
CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    email VARCHAR(100),
    department VARCHAR(50),
    marks INT
);

-- 4. Insert Sample Data
INSERT INTO students (name, age, email, department, marks) VALUES
('Arun', 18, 'arun@gmail.com', 'CSE', 85),
('Priya', 19, 'priya@gmail.com', 'ECE', 78),
('Karthik', 18, 'karthik@gmail.com', 'CSE', 90),
('Divya', 20, 'divya@gmail.com', 'EEE', 72),
('Suresh', 19, 'suresh@gmail.com', 'CSE', 88),
('Meena', 20, 'meena@gmail.com', 'ECE', NULL);

-- 5. View All Records
SELECT * FROM students;


-- AGGREGATE FUNCTIONS


-- 6. COUNT - Total Students
SELECT COUNT(*) AS total_students
FROM students;

-- 7. SUM - Total Marks
SELECT SUM(marks) AS total_marks
FROM students;

-- 8. AVG - Average Marks
SELECT AVG(marks) AS average_marks
FROM students;

-- 9. MIN and MAX Marks
SELECT 
    MIN(marks) AS minimum_marks,
    MAX(marks) AS maximum_marks
FROM students;

-- GROUP BY CLAUSE

-- 10. Group Students by Age
SELECT age, COUNT(*) AS student_count
FROM students
GROUP BY age;

-- 11. Department-wise Student Count 
SELECT department, COUNT(*) AS total_students
FROM students
GROUP BY department;

-- 12. Department-wise Average Marks
SELECT department, AVG(marks) AS avg_marks
FROM students
GROUP BY department;


-- HAVING CLAUSE

-- 13. Departments with More Than 2 Students
SELECT department, COUNT(*) AS total_students
FROM students
GROUP BY department
HAVING COUNT(*) > 2;

-- 14. Departments with Average Marks > 80
SELECT department, AVG(marks) AS avg_marks
FROM students
GROUP BY department
HAVING AVG(marks) > 80;


-- WHERE vs HAVING


-- 15. WHERE filters rows BEFORE grouping
SELECT department, COUNT(*) AS total_students
FROM students
WHERE age > 18
GROUP BY department;

-- 16. HAVING filters AFTER grouping
SELECT department, COUNT(*) AS total_students
FROM students
GROUP BY department
HAVING COUNT(*) > 1;

-- NULL Handling in Aggregates

-- 17. COUNT ignores NULL values
SELECT COUNT(marks) AS marks_count
FROM students;
