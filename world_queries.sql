/*Queries from the lecture slides*/
SELECT name, code FROM countries;
SELECT language FROM languages;
SELECT DISTINCT language FROM languages;
SELECT name, population FROM cities WHERE country_code = "FSM";
SELECT name, gnp FROM countries WHERE gnp > 2000000;
SELECT * FROM cities WHERE country_code = 'USA' AND population >= 2000000;
SELECT code, name, population FROM countries WHERE name LIKE 'United%';
SELECT code, name, population FROM countries WHERE name LIKE 'United%' ORDER BY population;
SELECT * FROM countries ORDER BY population DESC;
SELECT * FROM countries ORDER BY population DESC, gnp;
SELECT name FROM cities WHERE name LIKE 'K%' LIMIT 5;
SELECT COUNT (*) FROM countries;
SELECT COUNT(*) AS total_cust FROM countries;
SELECT continent, COUNT(name) FROM countries GROUP BY continent;