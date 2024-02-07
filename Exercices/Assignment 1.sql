CREATE TABLE IF NOT EXISTS employees_2 ( 
employee_id int auto_increment primary key,
name VARCHAR(100),
position VARCHAR(100),
salary DECIMAL (10,2),
hired_date DATE,
department_id varchar(100)
);
CREATE TABLE IF NOT EXISTS departments_2 (
department_id INT AUTO_INCREMENT PRIMARY KEY,
department_name VARCHAR(100),
UNIQUE(department_name)
);

INSERT INTO employees_2
VALUES
    (NULL, 'John Bridge', 'Software Engineer', 50000, '2022-01-15',1),
    (NULL, 'Jane Smith', 'Project Manager', 65000, '2021-02-01',2),
    (NULL, 'Emily Jones', 'Pediatre', 70000, '2021-03-10',3),
    (NULL, 'Camila Jaiem', 'Project Manager', 65000, '2024-03-10',2),
    (NULL, 'Dudu', 'Software Engineer', 9, '1000-03-10',1),
    (NULL, 'Bubu', 'Pediatre', 9999999, '2022-09-09',3);
INSERT INTO departments_2
VALUES
	(NULL, 'Engineering'),
    (NULL, 'Marketing'),
    (NULL, 'Finance');

-- Write a query to find all employees in a specific department, e.g., 'Engineering'.
SELECT * FROM employees_2 WHERE department_id = 
(SELECT department_id FROM departments_2 WHERE department_name = 'Engineering');

-- Counting all number of employees
SELECT COUNT(*) FROM employees_2;

-- Write a query to list all employees, sorted by their salary in descending order.
SELECT name FROM employees_2 ORDER BY salary DESC;

-- Select one employee and give them a raise. Update their salary in the employees table.
UPDATE employees_2 SET salary = salary + 5000 WHERE name = 'Bubu';
SELECT * FROM employees_2 WHERE name="Bubu";
-- Delete an employee record from the employees table (choose an employee_id that exists in your table).
DELETE FROM employees_2 WHERE employee_id = 1;
SELECT * FROM employees_2;

-- Insert at least three new records into the employees table in a single query. Try to include a variety of positions and salaries.
INSERT INTO employees_2
VALUES(
	(NULL, 'Moncef', 'Knatri', 69, '1000-01-25',1),
    (NULL, 'Walid', 'Banzarti', 1, '2000-01-25',3),
    (NULL, 'Wassim', 'Pepe Onzima', 0, '2020-04-16')
);
-- READ AND SORT
-- Retrieve all employees, but sort them by their hired_date in ascending order.
SELECT * FROM employees_2 ORDER BY hired_date DESC;

-- Retrieve only the names and positions of employees, sorted by salary in descending order.
SELECT name, position FROM employees_2 ORDER BY salary DESC;

-- FILTERING DATA
SELECT * from employees_2 WHERE salary > 55000;
SELECT * FROM employees_2 WHERE YEAR(hired_date)=2021;