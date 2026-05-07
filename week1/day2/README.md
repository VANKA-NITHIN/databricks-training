# Databricks Training - Week 1 Day 2

## SQL Practice Queries & Solutions

This repository contains SQL practice queries and detailed solutions for **Databricks Training - Week 1 Day 2**.

## Topics Covered

- ORDER BY
- Aggregate Functions
- GROUP BY
- HAVING Clause
- JOINs

---

# Database Schema

## Department Table

```sql
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    name VARCHAR(50)
);
```

## Employee Table

```sql
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    salary DECIMAL(10, 2),
    department_id INT,
    hire_date DATE,
    FOREIGN KEY (department_id) REFERENCES Department(dept_id)
);
```

## Project Table

```sql
CREATE TABLE Project (
    project_id INT PRIMARY KEY,
    name VARCHAR(100),
    department_id INT,
    budget DECIMAL(15, 2),
    FOREIGN KEY (department_id) REFERENCES Department(dept_id)
);
```

---

# Sample Data

## Departments

```sql
INSERT INTO Department VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing');
```

## Employees

```sql
INSERT INTO Employee VALUES
(1, 'John Doe', 28, 50000.00, 1, '2020-01-15'),
(2, 'Jane Smith', 34, 60000.00, 2, '2019-07-23'),
(3, 'Bob Brown', 45, 80000.00, 1, '2018-02-12'),
(4, 'Alice Blue', 25, 45000.00, 3, '2021-03-22'),
(5, 'Charlie P.', 29, 50000.00, 2, '2019-12-01'),
(6, 'David Green', 38, 70000.00, 4, '2022-05-18'),
(7, 'Eve Black', 40, 55000.00, 3, '2021-08-30');
```

## Projects

```sql
INSERT INTO Project VALUES
(1, 'Project Alpha', 1, 100000.00),
(2, 'Project Beta', 2, 80000.00),
(3, 'Project Gamma', 1, 120000.00),
(4, 'Project Delta', 3, 90000.00),
(5, 'Project Epsilon', 4, 110000.00),
(6, 'Project Zeta', 4, 95000.00),
(7, 'Project Eta', 3, 85000.00);
```

---

# SQL Concepts Practiced

## 1. ORDER BY

### Sort employees by salary ascending

```sql
SELECT * FROM Employee ORDER BY salary ASC;
```

### Sort employees by salary descending

```sql
SELECT * FROM Employee ORDER BY salary DESC;
```

### Multiple column sorting

```sql
SELECT * FROM Employee
ORDER BY department_id ASC, salary DESC;
```

---

## 2. Aggregate Functions

### Count total employees

```sql
SELECT COUNT(*) AS total_employees
FROM Employee;
```

### Average salary

```sql
SELECT AVG(salary) AS average_salary
FROM Employee;
```

### Total salary

```sql
SELECT SUM(salary) AS total_salary
FROM Employee;
```

---

## 3. GROUP BY

### Employees per department

```sql
SELECT department_id,
       COUNT(*) AS employee_count
FROM Employee
GROUP BY department_id;
```

### Average salary per department

```sql
SELECT department_id,
       AVG(salary) AS average_salary
FROM Employee
GROUP BY department_id;
```

---

## 4. HAVING Clause

### Departments with average salary greater than 55000

```sql
SELECT department_id,
       AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id
HAVING AVG(salary) > 55000;
```

---

## 5. JOINs

### Employee with department names

```sql
SELECT e.name,
       d.name AS department
FROM Employee e
JOIN Department d
ON e.department_id = d.dept_id;
```

### Projects with department names

```sql
SELECT p.name AS project_name,
       d.name AS department
FROM Project p
JOIN Department d
ON p.department_id = d.dept_id;
```

---

# Total Queries Practiced

| Section | Queries |
|----------|----------|
| ORDER BY | 5 |
| Aggregate Functions | 10 |
| GROUP BY | 5 |
| HAVING | 5 |
| JOINs | 8 |
| Total | 33 |

---

# Key Learnings

- Sorting data using ORDER BY
- Using aggregate functions
- Grouping data with GROUP BY
- Filtering grouped data using HAVING
- Combining tables using JOINs
- Writing optimized SQL queries
- Understanding relational database concepts

---

# Repository Structure

```text
databricks-training/
│
├── Week-1/
│   ├── Day-1/
│   └── Day-2/
│       ├── queries.sql
│       ├── solutions.sql
│       └── README.md
```

---

# How to Run

1. Open Databricks SQL or DB Fiddle
2. Execute schema creation scripts
3. Insert sample data
4. Run SQL queries
5. Verify outputs

---

# Technologies Used

- SQL
- Databricks
- DB Fiddle
- Relational Databases

---

# Author

Nithin Vanka
