use employees;

SELECT first_name, last_name from employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name,first_name;

SELECT last_name from employees WHERE last_name like 'E%';

SELECT last_name from employees WHERE last_name like '%q%';

SELECT first_name from employees WHERE (first_name ='Irena' OR first_name ='Vidya' OR first_name = 'Maya') AND gender = 'M';

SELECT last_name, emp_no from employees WHERE last_name like 'E%' OR last_name like '%E' ORDER BY emp_no;

SELECT concat(first_name, last_name) from employees WHERE last_name like 'E%' AND last_name like '%E';

SELECT last_name from employees WHERE last_name like '%q%' AND last_name NOT like '%qu%' ;



SELECT first_name, last_name, birth_date from employees WHERE DAY(birth_date) = 25 AND MONTH(birth_date) = 12;

SELECT first_name, last_name, birth_date from employees WHERE DAY(birth_date) = 25 AND MONTH(birth_date) = 12 AND YEAR(hire_date)  BETWEEN  1990 AND 2000;

SELECT first_name, last_name, birth_date from employees WHERE DAY(birth_date) = 25 AND MONTH(birth_date) = 12 AND YEAR(hire_date)  BETWEEN  1990 AND 2000 ORDER BY hire_date DESC;

SELECT DATEDIFF(current_date, hire_date), first_name, last_name FROM employees WHERE MONTH(birth_date) = '12' AND DAYOFMONTH(birth_date) = '25' AND YEAR(hire_date) >= '1990' AND YEAR(hire_date) <= '1999' ORDER BY birth_date, hire_date DESC;



INSERT INTO albums (artist_name, album_name, release_date, sales,genre)
VALUES ('Michael Jackson','Thriller',1982,51.2, 'Pop, post-disco, funk, rock');