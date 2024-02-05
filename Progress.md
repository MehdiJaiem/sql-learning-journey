# Practical part

This document outlines the steps and exercises I've undertaken in my journey to learn SQL.

## Initial Setup

- Installed MySQL Server and MySQL Workbench.
- Created a GitHub repository to track my SQL scripts and learning progress.

## SQL Basics

### Creating a Database

- Created my first database named `testdb`.
  
  ```sql
  CREATE DATABASE testdb;

- Created a table called employees to store employee records.

```sql
CREATE TABLE IF NOT EXISTS employees (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(100),
    position VARCHAR(100),
    salary DECIMAL(10,2),
    hired_date DATE
);

