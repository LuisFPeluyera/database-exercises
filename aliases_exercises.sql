SELECT CONCAT(last_name, first_name) AS 'full_name' from employees LIMIT 10;

SELECT CONCAT(emp_no, ' - ', last_name, ', ', first_name) AS 'full_name', birth_date AS 'DOB' from employees LIMIT 10;