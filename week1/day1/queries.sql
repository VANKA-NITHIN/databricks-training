================================================================================
DATABRICKS TRAINING - WEEK 1 DAY 1
SQL PRACTICE QUERIES - MAY 5, 2026
================================================================================

Date: 2026-05-05
Focus: SQL Basics, SELECT Statement, WHERE Clause, String Matching (LIKE)
Total Queries: 32

================================================================================
SCHEMA CREATION - COPY THIS TO LEFT SIDE OF DB FIDDLE
================================================================================

CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    salary DECIMAL(10, 2),
    department_id INT,
    hire_date DATE,
    FOREIGN KEY (department_id) REFERENCES Department(dept_id)
);

CREATE TABLE Project (
    project_id INT PRIMARY KEY,
    name VARCHAR(100),
    department_id INT,
    budget DECIMAL(15, 2),
    FOREIGN KEY (department_id) REFERENCES Department(dept_id)
);

INSERT INTO Department VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing');

INSERT INTO Employee VALUES
(1, 'John Doe', 28, 50000.00, 1, '2020-01-15'),
(2, 'Jane Smith', 34, 60000.00, 2, '2019-07-23'),
(3, 'Bob Brown', 45, 80000.00, 1, '2018-02-12'),
(4, 'Alice Blue', 25, 45000.00, 3, '2021-03-22'),
(5, 'Charlie P.', 29, 50000.00, 2, '2019-12-01'),
(6, 'David Green', 38, 70000.00, 4, '2022-05-18'),
(7, 'Eve Black', 40, 55000.00, 3, '2021-08-30');

INSERT INTO Project VALUES
(1, 'Project Alpha', 1, 100000.00),
(2, 'Project Beta', 2, 80000.00),
(3, 'Project Gamma', 1, 120000.00),
(4, 'Project Delta', 3, 90000.00),
(5, 'Project Epsilon', 4, 110000.00),
(6, 'Project Zeta', 4, 95000.00),
(7, 'Project Eta', 3, 85000.00);

================================================================================
SECTION 1: BASIC SELECT QUERIES (5 QUERIES) - MAY 5, 2026
================================================================================

-- Q1: Get all employee records
SELECT * FROM Employee;

-- Q2: Get specific columns (name and salary)
SELECT name, salary FROM Employee;

-- Q3: Get all departments
SELECT * FROM Department;

-- Q4: Get employee names and their ages
SELECT name, age FROM Employee;

-- Q5: Get all projects with their budgets
SELECT * FROM Project;

================================================================================
SECTION 2: WHERE CLAUSE - SIMPLE CONDITIONS (10 QUERIES) - MAY 5, 2026
================================================================================

-- Q6: Find employees older than 30
SELECT * FROM Employee WHERE age > 30;

-- Q7: Find employees with salary greater than 50000
SELECT * FROM Employee WHERE salary > 50000;

-- Q8: Find employees in department 1
SELECT * FROM Employee WHERE department_id = 1;

-- Q9: Find employees with salary exactly 50000
SELECT * FROM Employee WHERE salary = 50000;

-- Q10: Find employees NOT in department 2
SELECT * FROM Employee WHERE department_id <> 2;

-- Q11: Find employees younger than 30
SELECT * FROM Employee WHERE age < 30;

-- Q12: Find employees hired after 2020
SELECT * FROM Employee WHERE hire_date > '2020-01-01';

-- Q13: Find employees hired before 2019
SELECT * FROM Employee WHERE hire_date < '2019-01-01';

-- Q14: Find employees with salary between 50000 and 70000
SELECT * FROM Employee WHERE salary BETWEEN 50000 AND 70000;

-- Q15: Find employees in specific departments (1 or 3)
SELECT * FROM Employee WHERE department_id IN (1, 3);

================================================================================
SECTION 3: LIKE OPERATOR - STRING MATCHING (10 QUERIES) - MAY 5, 2026
================================================================================

-- Q16: Names starting with 'J'
SELECT * FROM Employee WHERE name LIKE 'J%';

-- Q17: Names ending with 'e'
SELECT * FROM Employee WHERE name LIKE '%e';

-- Q18: Names containing 'a'
SELECT * FROM Employee WHERE name LIKE '%a%';

-- Q19: Names containing 'o'
SELECT * FROM Employee WHERE name LIKE '%o%';

-- Q20: Second character is 'o'
SELECT * FROM Employee WHERE name LIKE '_o%';

-- Q21: Names with 'B' at start and 'n' at end
SELECT * FROM Employee WHERE name LIKE 'B%n';

-- Q22: Names NOT starting with 'J'
SELECT * FROM Employee WHERE name NOT LIKE 'J%';

-- Q23: Names with exactly 4 characters
SELECT * FROM Employee WHERE name LIKE '____';

-- Q24: Names starting with 'D'
SELECT * FROM Employee WHERE name LIKE 'D%';

-- Q25: Names ending with 'e' or 'n'
SELECT * FROM Employee WHERE name LIKE '%e' OR name LIKE '%n';

================================================================================
SECTION 4: COMBINED CONDITIONS - AND/OR (7 QUERIES) - MAY 5, 2026
================================================================================

-- Q26: Age > 30 AND salary > 60000
SELECT * FROM Employee WHERE age > 30 AND salary > 60000;

-- Q27: Department 1 OR Department 2
SELECT * FROM Employee WHERE department_id = 1 OR department_id = 2;

-- Q28: Age > 25 AND department_id = 3
SELECT * FROM Employee WHERE age > 25 AND department_id = 3;

-- Q29: Name starts with 'J' AND salary > 50000
SELECT * FROM Employee WHERE name LIKE 'J%' AND salary > 50000;

-- Q30: Age between 30 and 40 AND department = 1
SELECT * FROM Employee WHERE age BETWEEN 30 AND 40 AND department_id = 1;

-- Q31: Salary > 60000 OR age < 30
SELECT * FROM Employee WHERE salary > 60000 OR age < 30;

-- Q32: (Department = 1 OR Department = 4) AND salary > 50000
SELECT * FROM Employee WHERE (department_id = 1 OR department_id = 4) AND salary > 50000;

================================================================================
MAY 5, 2026 SUMMARY
================================================================================
Total Queries Practiced: 32
Topics Covered:
  - Basic SELECT statements
  - WHERE clause with simple conditions
  - LIKE operator for string matching
  - Combined conditions (AND/OR)
  - Logical operators and comparisons

================================================================================
END OF DAY 1 (MAY 5, 2026) QUERY FILE
================================================================================
