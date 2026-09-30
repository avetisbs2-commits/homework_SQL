
SET search_path TO homework;

SELECT *
FROM customers;

SELECT *
FROM customers
WHERE age BETWEEN 18 AND 35
  AND email LIKE '%@gmail.com';


SELECT *
FROM staff_members
WHERE salary > 2000
ORDER BY salary DESC;


SELECT *
FROM departments;


SELECT * FROM courses;
SELECT * FROM tickets
WHERE price > 50 AND
      title IS NOT NULL AND
      status IN ('NEW' , 'OPEN');

SELECT
    s.name AS staff_name,
    s.salary,
    d.name AS department_name
FROM staff_members s
         INNER JOIN departments d
                    ON s.department_id = d.id;

SELECT
    d.id,
    d.name AS department_name,
    s.name AS staff_name
FROM departments d
         LEFT JOIN staff_members s
                   ON d.id = s.department_id;

SELECT
    s.name AS staff_name,
    s.salary,
    s.department_id,
    d.name AS department_name
FROM departments d
         RIGHT JOIN staff_members s
                    ON d.id = s.department_id;

SELECT
    s.name AS staff_name,
    d.name AS department_name
FROM departments d
         FULL OUTER JOIN staff_members s
                         ON d.id = s.department_id;