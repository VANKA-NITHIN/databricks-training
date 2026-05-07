# Databricks Training - Week 1 Day 1

## SQL Practice Queries & Solutions

This repository contains SQL practice queries and detailed solutions for **Databricks Training - Week 1 Day 1**.

## Topics Covered

- SQL Basics
- SELECT Statement
- WHERE Clause
- LIKE Operator
- AND / OR Conditions
- Logical Operators

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

## 1. Basic SELECT Queries

### Get all employee records

```sql
SELECT * FROM Employee;
```

### Get employee names and salaries

```sql
SELECT name, salary FROM Employee;
```

### Get all departments

```sql
SELECT * FROM Department;
```

---

## 2. WHERE Clause

### Employees older than 30

```sql
SELECT * FROM Employee
WHERE age > 30;
```

### Employees with salary greater than 50000

```sql
SELECT * FROM Employee
WHERE salary > 50000;
```

### Employees in department 1

```sql
SELECT * FROM Employee
WHERE department_id = 1;
```

### Employees with salary between 50000 and 70000

```sql
SELECT * FROM Employee
WHERE salary BETWEEN 50000 AND 70000;
```

---

## 3. LIKE Operator

### Names starting with J

```sql
SELECT * FROM Employee
WHERE name LIKE 'J%';
```

### Names containing a

```sql
SELECT * FROM Employee
WHERE name LIKE '%a%';
```

### Names ending with e

```sql
SELECT * FROM Employee
WHERE name LIKE '%e';
```

### Second character is o

```sql
SELECT * FROM Employee
WHERE name LIKE '_o%';
```

---

## 4. Combined Conditions

### Age > 30 AND salary > 60000

```sql
SELECT * FROM Employee
WHERE age > 30 AND salary > 60000;
```

### Department 1 OR Department 2

```sql
SELECT * FROM Employee
WHERE department_id = 1 OR department_id = 2;
```

### Salary > 60000 OR age < 30

```sql
SELECT * FROM Employee
WHERE salary > 60000 OR age < 30;
```

---

# Total Queries Practiced

| Section | Queries |
|----------|----------|
| Basic SELECT Queries | 5 |
| WHERE Clause | 10 |
| LIKE Operator | 10 |
| Combined Conditions | 7 |
| Total | 32 |

---

# Key Learnings

- SQL SELECT statements
- Filtering data using WHERE clause
- Using comparison operators
- Pattern matching with LIKE
- Using logical operators AND / OR
- Writing optimized SQL queries
- Understanding relational database basics

---

# Technologies Used

- SQL
- Databricks SQL
- DB Fiddle
- Relational Database Concepts

---

# Repository Structure

```text
databricks-training/
│
├── Week-1/
│   ├── Day-1/
│   │   ├── queries.sql
│   │   ├── solutions.sql
│   │   └── README.md
```

---

# How to Run

1. Open Databricks SQL or DB Fiddle
2. Copy schema creation scripts
3. Run INSERT statements
4. Execute practice queries
5. Analyze outputs and explanations

---

# Learning Outcome

After completing this practice set, you will understand:
- SQL basic syntax
- Data retrieval using SELECT
- Filtering records using WHERE
- Pattern matching using LIKE
- Using logical operators
- Writing efficient SQL queries

---

# Author

Nithin Vanka
