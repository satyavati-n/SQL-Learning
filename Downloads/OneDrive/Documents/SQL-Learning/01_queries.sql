-- SQL BASICS PRACTICE


-- 1. CREATE DATABASE

CREATE DATABASE company;


-- 2. CREATE EMPLOYEE TABLE

CREATE TABLE employee (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(50),
    department VARCHAR(50),
    hire_date DATE,
    salary NUMERIC(10,2)
);


-- 3. VIEW TABLE

SELECT * FROM employee;


-- 4. INSERT DATA INTO EMPLOYEE

INSERT INTO employee (name, position, department, hire_date, salary)
VALUES
    ('Satyavati Nelwade', 'Data Analyst', 'Data Science', '2022-05-15', 65000.00),
    ('Vaishnavi Patil', 'Software Engineer', 'IT', '2021-09-20', 75000.00),
    ('Geeta Nelwade', 'HR Manager', 'Human Resources', '2019-03-10', 82000.00),
    ('Anjali Sangme', 'Marketing Specialist', 'Marketing', '2020-11-25', 58000.00),
    ('Shivani Biradar', 'Sales Executive', 'Sales', '2023-02-12', 62000.00);


-- 5. TRUNCATE TABLE

TRUNCATE TABLE employee;


-- 6. TRUNCATE TABLE AND RESTART IDENTITY

TRUNCATE TABLE employee RESTART IDENTITY;


-- 7. CREATE SECOND EMPLOYEE TABLE

CREATE TABLE employee2 (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(50),
    department VARCHAR(50),
    hire_date DATE,
    salary NUMERIC(10,2)
);


-- 8. VIEW EMPLOYEE2 TABLE

SELECT * FROM employee2;


-- 9. INSERT DATA INTO EMPLOYEE2

INSERT INTO employee2 (
    employee_id,
    name,
    position,
    department,
    hire_date,
    salary
)
VALUES
    (101, 'Satyavati Nelwade', 'Data Analyst', 'Data Science', '2022-05-15', 65000.00),
    (102, 'Vaishnavi Patil', 'Software Engineer', 'IT', '2021-09-20', 75000.00),
    (103, 'Geeta Nelwade', 'HR Manager', 'Human Resources', '2019-03-10', 82000.00),
    (104, 'Anjali Sangme', 'Marketing Specialist', 'Marketing', '2020-11-25', 58000.00),
    (105, 'Shivani Biradar', 'Sales Executive', 'Sales', '2023-02-12', 62000.00);


-- 10. DELETE A SPECIFIC ROW

DELETE FROM employee2
WHERE employee_id = 105;


-- 11. DROP A COLUMN

ALTER TABLE employee2
DROP COLUMN salary;


-- 12. DROP TABLE

DROP TABLE IF EXISTS employee2;


-- 13. DROP DATABASE

DROP DATABASE IF EXISTS company2;


-- 14. CREATE USERS TABLE

DROP TABLE IF EXISTS users;

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INTEGER CHECK (age >= 18),
    reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- 15. INSERT DATA INTO USERS

INSERT INTO users (user_id, name, email, age)
VALUES
    (1, 'Satyavati Nelwade', 'satyavati@example.com', 25),
    (2, 'Vaishnavi Patil', 'vaishnavi@example.com', 19);


-- 16. VIEW USERS TABLE

SELECT * FROM users;
