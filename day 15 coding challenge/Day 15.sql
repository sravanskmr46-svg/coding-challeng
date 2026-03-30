create database Student_Management 
use student_Management

CREATE TABLE students ( 
    student_id INT PRIMARY KEY, 
    student_name VARCHAR(50), 
    gender VARCHAR(10), 
    city VARCHAR(50), 
    join_year INT 
);

CREATE TABLE courses ( 
    course_id INT PRIMARY KEY, 
    course_name VARCHAR(100), 
    department VARCHAR(50) 
); 
  
CREATE TABLE marks ( 
    mark_id INT PRIMARY KEY, 
    student_id INT, 
    course_id INT, 
    marks INT, 
    FOREIGN KEY (student_id) REFERENCES students(student_id), 
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
    );
    
  -- 1
  SELECT * FROM students;
  
  -- 2
  SELECT student_name, city FROM students;
  
  -- 3
  SELECT * FROM courses;
  
  -- 4 
  SELECT * FROM students
WHERE city = 'Tumakuru';

-- 5
SELECT * FROM students
WHERE join_year = 2024;

-- 6
SELECT * FROM students
WHERE gender = 'F';

-- 7
SELECT * FROM marks
WHERE marks > 80;

-- 8
SELECT course_name FROM courses
WHERE department = 'Commerce';

-- 9
SELECT * FROM students
WHERE city != 'Bengaluru';
    
-- 10
SELECT * FROM marks
WHERE marks BETWEEN 70 AND 90;

-- 11
SELECT * FROM students
ORDER BY student_name ASC;

-- 12
SELECT * FROM marks
ORDER BY marks DESC;

-- 13
SELECT * FROM students
ORDER BY join_year DESC;

-- 14
SELECT COUNT(*) AS total_students FROM students;

-- 15
SELECT AVG(marks) AS average_marks FROM marks;

-- 16
SELECT MAX(marks) AS highest_marks FROM marks;

-- 17
SELECT MIN(marks) AS lowest_marks FROM marks;

-- 18
SELECT SUM(marks) AS total_marks FROM marks;