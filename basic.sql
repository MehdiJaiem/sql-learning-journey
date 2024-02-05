CREATE TABLE IF NOT EXISTS employees (
id INT AUTO_INCREMENT PRIMARY KEY, 
name  VARCHAR(100),
position VARCHAR (100),
salary DECIMAL (10,2),
hired_date DATE
);

INSERT INTO employees (name, position, salary, hired_date)
VALUES ('John Doe', 'Software Engineer', 60000, '2021-01-15');
-- OR
INSERT INTO employees 
-- NULL is used for the id column because it's an AUTO_INCREMENT field, so MySQL will automatically assign a unique ID to each row.
VALUES
    (NULL, 'John Bridge', 'Software Engineer', 50000, '2022-01-15'),
    (NULL, 'Jane Smith', 'Project Manager', 65000, '2021-02-01'),
    (NULL, 'Emily Jones', 'Database Administrator', 70000, '2021-03-10'),
    (NULL, 'Camila Jaiem', 'Project Manager', 65000, '2024-03-10');

SELECT * FROM employees;

SELECT * FROM employees WHERE position = 'Software Engineer';

-- CRUD OPERAIONS: CREATE, READ (SELECT), UPDATE, DELETE

-- creating a new table for department information
CREATE TABLE IF NOT EXISTS departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

-- Select specific columns
SELECT name, salary FROM employees;

-- Select with sorting
SELECT * FROM employees ORDER BY salary DESC;

-- Select with a filter and limit
SELECT * FROM employees WHERE position = 'Software Engineer' LIMIT 10;

-- Updating existing records is done using the UPDATE statement. Here’s an example of how you would give all software engineers a raise
UPDATE employees SET salary = salary + 6000 WHERE position = 'Software Engineer';

SELECT * from employees