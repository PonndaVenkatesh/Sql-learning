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

added where order by and limit queries

-- ====================================
-- DAY 3: GROUP BY & HAVING
-- ====================================

-- Count employees per department
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;

-- Average salary per department
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

-- Filter groups using HAVING
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department
HAVING COUNT(*) > 10;

-- Departments with high average salary
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 60000;

added group by queries






