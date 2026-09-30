SET search_path TO homework;

DROP TABLE IF EXISTS staff_members CASCADE;
DROP TABLE IF EXISTS departments CASCADE;
DROP TABLE IF EXISTS customers CASCADE;
DROP TABLE IF EXISTS courses CASCADE;
DROP TABLE IF EXISTS tickets CASCADE;
DROP TABLE IF EXISTS accounts CASCADE;
DROP TABLE IF EXISTS orders CASCADE;

CREATE TABLE customers (
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    age INTEGER
);


CREATE TABLE departments (
    id INTEGER PRIMARY KEY ,
    name VARCHAR(100) NOT NULL
);


CREATE TABLE staff_members (
    id INTEGER PRIMARY KEY ,
    name VARCHAR(100) NOT NULL ,
    salary DECIMAL ,
    department_id INTEGER  REFERENCES departments(id)
);


CREATE TABLE courses (
    id INTEGER PRIMARY KEY,
    title VARCHAR(100)
);
ALTER TABLE courses
    ADD COLUMN duration INTEGER;


CREATE TABLE accounts (
    username VARCHAR(50),
    password VARCHAR (50)
);
ALTER TABLE accounts
    ALTER COLUMN password SET DATA TYPE VARCHAR(255);


CREATE TABLE tickets (
    id INTEGER PRIMARY KEY,
    title VARCHAR(100),
    price DECIMAL(10, 2),
    status VARCHAR(20)
);
ALTER TABLE tickets
    ADD CONSTRAINT chk_price_positive CHECK (price > 0),
    ALTER COLUMN status SET DEFAULT 'NEW';

CREATE TABLE old_orders (
    id INTEGER PRIMARY KEY,
    order_date DATE,
    total_price DECIMAL(10, 2)
);
ALTER TABLE old_orders RENAME TO orders;
ALTER TABLE orders ADD COLUMN customer_id INTEGER;
ALTER TABLE orders RENAME COLUMN total_price TO amount;
ALTER TABLE orders DROP COLUMN customer_id;
DROP TABLE orders;