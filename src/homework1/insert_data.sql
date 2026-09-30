SET search_path TO homework;

INSERT INTO customers (id, first_name, last_name, email, age) VALUES
    (1, 'Алиса', 'Смит', 'alice@example.com', 25),
    (2, 'Боб', 'Джонс', 'bob@example.com', 34),
    (3, 'Чарли', 'Браун', 'charlie@example.com', 28),
    (4, 'Диана', 'Принс', 'diana@example.com', 41),
    (5, 'Итан', 'Хант', 'ethan@example.com', 22);

UPDATE customers
SET first_name = 'Александр',
    email = 'alexander.new@example.com',
    age = 29
WHERE id = 3;

UPDATE staff_members
SET salary = salary * 1.1
WHERE department_id = 2;


DELETE FROM customers
WHERE age < 19;


UPDATE staff_members
SET department_id = 1
WHERE department_id = 3;

DELETE FROM departments
WHERE id = 3;