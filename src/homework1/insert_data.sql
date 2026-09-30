SET search_path TO homework;

INSERT INTO homework.departments (id, name) VALUES
     (1, 'First department'  ),
     (2, 'Second department' ),
     (3, 'Third department'),
     (4, 'Forth department');


DELETE FROM departments
WHERE id = 3;

INSERT INTO customers (id, first_name, last_name, email, age) VALUES
    (1, 'Алиса', 'Смит', 'alice@gmail.com', 25),
    (2, 'Боб', 'Джонс', 'bob@notgmail.com', 34),
    (3, 'Чарли', 'Браун', 'charlie@gmail.com', 28),
    (4, 'Диана', 'Принс', 'diana@gmail.com', 41),
    (5, 'Итан', 'Хант', 'ethan@gmail.com', 22);

UPDATE customers
SET first_name = 'Александр',
    email = 'alexander@gmail.com',
    age = 29
WHERE id = 3;

INSERT INTO homework.staff_members (id, name, salary, department_id) VALUES
         (1, 'Алиса Смит',  2500, 1),
         (2, 'Боб Джонс', 1850, 2),
         (3, 'Чарли Браун', 2222, 2),
         (4, 'Диана Принс', 1500 , NULL),
         (5, 'Итан Хант', 3000, 1);

UPDATE staff_members
SET salary = salary * 1.1
WHERE department_id = 2;


DELETE FROM customers
WHERE age < 19;


UPDATE staff_members
SET department_id = 1
WHERE department_id = 3;

INSERT INTO tickets (id, title, price, status) VALUES
      (1, 'ticket title1', 90, 'OPEN' ),
      (2, NULL, 51, 'NEW'),
      (3, 'ticket title2', 55, 'CLOSED'),
      (4, 'ticket title4', 34, 'NEW'),
      (5, 'ticket title5', 100, 'NEW');
