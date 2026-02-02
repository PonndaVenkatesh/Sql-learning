-- SELECT BASICS

-- Select all columns
SELECT * FROM employees;

-- Select specific columns
SELECT employee_id, name, department
FROM employees;

-- Limit number of rows
SELECT *
FROM employees
LIMIT 10;

-- Get unique departments
SELECT DISTINCT department
FROM employees;




