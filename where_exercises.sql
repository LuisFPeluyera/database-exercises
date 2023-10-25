use employees;

SELECT first_name from employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT last_name from employees WHERE last_name like 'E%';

SELECT last_name from employees WHERE last_name like '%q%';

SELECT first_name from employees WHERE (first_name ='Irena' OR first_name ='Vidya' OR first_name = 'Maya') AND gender = 'M';

SELECT last_name from employees WHERE last_name like 'E%' OR last_name like '%E';

SELECT last_name from employees WHERE last_name like 'E%' AND last_name like '%E';

SELECT last_name from employees WHERE last_name like '%q%' AND last_name NOT like '%qu%' ;

