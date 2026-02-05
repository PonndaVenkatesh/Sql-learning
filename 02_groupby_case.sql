  -- GROUP BY & CASE WHEN
-- DAY 4: CASE WHEN

-- Categorize employees by salary
SELECT name, salary,
       CASE
           WHEN salary >= 80000 THEN 'High'
           WHEN salary >= 50000 THEN 'Medium'
           ELSE 'Low'
       END
FROM employees;

split files and added case when
