DROP TABLE IF EXISTS courses;
CREATE TABLE courses (
id INTEGER UNSIGNED NOT NULL PRIMARY KEY, 
name TEXT DEFAULT NULL, 
teacher_id INTEGER UNSIGNED NOT NULL
);
INSERT INTO courses VALUES
(10001, 'Computer Science 142', 1234),
(10002, 'Computer Science 143', 5678),
(10003, 'Computer Science 190M', 9012),
(10004, 'Informatics 100', 1234);

DROP TABLE IF EXISTS grades;
CREATE TABLE grades (
student_id INTEGER NOT NULL, 
course_id INTEGER NOT NULL, 
grade varchar(2) DEFAULT NULL
);
INSERT INTO grades VALUES
(123, 10001, 'B-'),
(123, 10002, 'C'),
(456, 10001, 'B+'),
(888, 10002, 'A+'),
(888, 10003, 'A+'),
(404, 10004, 'D+'),
(404, 10002, 'B'),
(456, 10002, 'D-');

DROP TABLE IF EXISTS students;
CREATE TABLE students (
id INTEGER NOT NULL PRIMARY KEY, 
name TEXT DEFAULT NULL, 
email TEXT DEFAULT NULL,
password TEXT DEFAULT NULL
);
INSERT INTO students VALUES
(123, 'Bart', 'bart@fox.com', 'bartman'),
(404, 'Ralph', 'ralph@fox.com', 'catfood'),
(456, 'Milhouse', 'milhouse@fox.com', 'fallout'),
(888, 'Lisa', 'lisa@fox.com', 'vegan');

DROP TABLE IF EXISTS teachers;
CREATE TABLE teachers (
id INTEGER NOT NULL PRIMARY KEY, 
name VARCHAR(32) DEFAULT NULL
);

INSERT INTO teachers VALUES
(1234, 'Krabappel'),
(5678, 'Hoover'),
(9012, 'Stepp');
