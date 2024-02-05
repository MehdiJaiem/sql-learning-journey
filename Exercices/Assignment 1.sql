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
SELECT name FROM employees_2 WHERE department_id=1;