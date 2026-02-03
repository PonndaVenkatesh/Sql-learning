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

-- ====================================
-- DAY 2: FILTERING & SORTING
-- ====================================

-- Filter employees from IT department
SELECT *
FROM employees
WHERE department = 'IT';

-- Filter using multiple conditions
SELECT *
FROM employees
WHERE department = 'Sales'
  AND salary > 50000;

-- Using OR condition
SELECT *
FROM employees
WHERE department = 'HR'
   OR department = 'Finance';

-- Sort employees by salary (highest first)
SELECT *
FROM employees
ORDER BY salary DESC;

-- Sort by department then salary
SELECT *
FROM employees
ORDER BY department, salary DESC;

-- Limit output rows
SELECT *
FROM employees
LIMIT 5;




