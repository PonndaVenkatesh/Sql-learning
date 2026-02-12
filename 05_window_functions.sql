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

