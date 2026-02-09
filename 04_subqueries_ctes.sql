-- =====================================
-- SUBQUERIES & CTEs
-- =====================================

-- -------------------------------------
-- SUBQUERY
-- -------------------------------------

-- Employees earning more than average salary
SELECT *
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

-- -------------------------------------
-- CTE (Common Table Expression)
-- -------------------------------------

WITH avg_salary AS (
    SELECT AVG(salary) AS avg_sal
    FROM employees
)
SELECT *
FROM employees
WHERE salary > (SELECT avg_sal FROM avg_salary);

added subqueries and ctes
