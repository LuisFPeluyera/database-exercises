SELECT DISTINCT title from titles;

SELECT last_name from employees WHERE last_name like 'E%' AND last_name like '%E' GROUP BY last_name ORDER BY last_name;

SELECT DISTINCT last_name from employees WHERE last_name like '%q%' AND last_name NOT like '%qu%';

SELECT COUNT(last_name), last_name from employees WHERE last_name like '%q%' AND last_name NOT like '%qu%' GROUP BY last_name;

SELECT COUNT(*), gender from employees WHERE (first_name ='Irena' OR first_name ='Vidya' OR first_name = 'Maya') GROUP BY gender;