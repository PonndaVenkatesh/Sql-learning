-- =====================================
-- WINDOW FUNCTIONS - PART 1
-- =====================================

-- Window function basic idea:
-- We calculate something WITHOUT collapsing rows

-- -------------------------------------
-- ROW_NUMBER()
-- -------------------------------------

-- Assign a unique row number to each employee
SELECT employee_id,
       department,
       salary,
       ROW_NUMBER() OVER (
           ORDER BY salary DESC
       ) AS row_num
FROM employees;

-- -------------------------------------
-- PARTITION BY
-- -------------------------------------

-- Row number within each department
SELECT employee_id,
       department,
       salary,
       ROW_NUMBER() OVER (
           PARTITION BY department
           ORDER BY salary DESC
       ) AS dept_rank
FROM employees;




-- =====================================
-- DAY 9: RANK vs DENSE_RANK
-- =====================================

-- RANK(): skips numbers when there are ties
SELECT employee_id,
       department,
       salary,
       RANK() OVER (
           PARTITION BY department
           ORDER BY salary DESC
       ) AS rank_salary
FROM employees;

-- DENSE_RANK(): does NOT skip numbers
SELECT employee_id,
       department,
       salary,
       DENSE_RANK() OVER (
           PARTITION BY department
           ORDER BY salary DESC
       ) AS dense_rank_salary
FROM employees;

added rank and dense_rank window functions

-- =====================================
-- DAY 10: LAG & LEAD
-- =====================================

-- LAG: get previous row value
SELECT employee_id,
       department,
       salary,
       LAG(salary) OVER (
           PARTITION BY department
           ORDER BY salary DESC
       ) AS previous_salary
FROM employees;

-- LEAD: get next row value
SELECT employee_id,
       department,
       salary,
       LEAD(salary) OVER (
           PARTITION BY department
           ORDER BY salary DESC
       ) AS next_salary
FROM employees;

added lag and lead window functions



