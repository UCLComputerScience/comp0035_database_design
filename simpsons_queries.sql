--Cross product with JOIN
SELECT * FROM students JOIN grades;
--Joining with ON clauses
SELECT * FROM students JOIN grades ON id = student_id;
--Joining with ON clauses, disambiguate column names
SELECT * FROM students JOIN grades ON students.id = grades.student_id;
--Filtering columns in a join
SELECT name, course_id, grade FROM students JOIN grades ON id = student_id;
--Filtered join (JOIN with WHERE)
SELECT name, course_id, grade FROM students JOIN grades ON id = student_id WHERE name = 'Bart';
--Giving names to tables
SELECT s.name, g.* FROM students s
JOIN grades g ON s.id = g.student_id
WHERE g.grade <= 'C';
--Multi-way join
SELECT c.name FROM courses c
JOIN grades g ON g.course_id = c.id
JOIN students bart ON g.student_id = bart.id
WHERE bart.name = 'Bart' AND g.grade <= 'B-';
--Sub-optimal query
SELECT bart.course_id FROM grades bart
JOIN grades lisa ON lisa.course_id = bart.course_id
WHERE bart.student_id = 123 AND lisa.student_id = 888;
--Improved query, problem: requires us to know Bart/Lisa's Student IDs, and only returns course IDs, not names.
SELECT DISTINCT c.name
FROM courses c
JOIN grades g1 ON g1.course_id = c.id
JOIN students bart ON g1.student_id = bart.id
JOIN grades g2 ON g2.course_id = c.id
JOIN students lisa ON g2.student_id = lisa.id
WHERE bart.name = 'Bart' AND lisa.name = 'Lisa';

--Practice queries
--What are the names of all teachers Bart has had?
SELECT DISTINCT t.name
FROM teachers t
JOIN courses c ON c.teacher_id = t.id
JOIN grades g ON g.course_id = c.id
JOIN students s ON s.id = g.student_id WHERE s.name = 'Bart';
--How many total students has Ms. Krabappel taught, and what are their names?
SELECT DISTINCT s.name FROM students s
JOIN grades g ON s.id = g.student_id
JOIN courses c ON g.course_id = c.id
JOIN teachers t ON t.id = c.teacher_id
WHERE t.name = 'Krabappel';




