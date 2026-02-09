-- ====================================
-- JOINS
-- ====================================

-- INNER JOIN: employees with their department names
SELECT e.employee_id,
       e.name,
       d.department_name
FROM employees e
INNER JOIN departments d
    ON e.department_id = d.department_id;

-- LEFT JOIN: all customers and their orders (if any)
SELECT c.customer_id,
       c.customer_name,
       o.order_id,
       o.order_date
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id;

added basic joins
