================================================================================
DATABRICKS TRAINING - WEEK 1 DAY 1
65 SQL PRACTICE QUERIES
================================================================================

Database: Employee, Department, Project
Date: 2026-05-06

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
SECTION 1: BASIC SELECT QUERIES (5 QUERIES)
================================================================================

-- Q1: Get all employee records
SELECT * FROM Employee;

-- Q2: Get specific columns (name and salary)
SELECT name, salary FROM Employee;

-- Q3: Get all departments
SELECT * FROM Department;

-- Q4: Get employee names and their ages
SELECT name, age FROM Employee;

-- Q5: Get all projects
SELECT * FROM Project;

================================================================================
SECTION 2: WHERE CLAUSE - SIMPLE CONDITIONS (10 QUERIES)
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

-- Q15: Find employees in specific departments
SELECT * FROM Employee WHERE department_id IN (1, 3);

================================================================================
SECTION 3: LIKE OPERATOR - STRING MATCHING (10 QUERIES)
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
SECTION 4: COMBINED CONDITIONS - AND/OR (10 QUERIES)
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

-- Q33: NOT (age < 30 AND department_id = 2)
SELECT * FROM Employee WHERE NOT (age < 30 AND department_id = 2);

-- Q34: Age >= 30 AND (department_id = 1 OR department_id = 3)
SELECT * FROM Employee WHERE age >= 30 AND (department_id = 1 OR department_id = 3);

-- Q35: Name contains 'a' AND salary > 50000
SELECT * FROM Employee WHERE name LIKE '%a%' AND salary > 50000;

================================================================================
SECTION 5: AGGREGATE FUNCTIONS (10 QUERIES)
================================================================================

-- Q36: Count total employees
SELECT COUNT(*) as total_employees FROM Employee;

-- Q37: Sum of all salaries
SELECT SUM(salary) as total_salary FROM Employee;

-- Q38: Average salary
SELECT AVG(salary) as average_salary FROM Employee;

-- Q39: Maximum salary
SELECT MAX(salary) as highest_salary FROM Employee;

-- Q40: Minimum salary
SELECT MIN(salary) as lowest_salary FROM Employee;

-- Q41: Count employees in department 1
SELECT COUNT(*) as dept1_count FROM Employee WHERE department_id = 1;

-- Q42: Average age of all employees
SELECT AVG(age) as average_age FROM Employee;

-- Q43: Sum of all project budgets
SELECT SUM(budget) as total_budget FROM Project;

-- Q44: Average project budget
SELECT AVG(budget) as avg_budget FROM Project;

-- Q45: Count of all projects
SELECT COUNT(*) as total_projects FROM Project;

================================================================================
SECTION 6: ORDER BY - SORTING (5 QUERIES)
================================================================================

-- Q46: Sort employees by salary ascending
SELECT * FROM Employee ORDER BY salary ASC;

-- Q47: Sort employees by salary descending
SELECT * FROM Employee ORDER BY salary DESC;

-- Q48: Sort employees by age ascending
SELECT * FROM Employee ORDER BY age ASC;

-- Q49: Sort by department, then by salary descending
SELECT * FROM Employee ORDER BY department_id ASC, salary DESC;

-- Q50: Sort projects by budget descending
SELECT * FROM Project ORDER BY budget DESC;

================================================================================
SECTION 7: GROUP BY - DATA GROUPING (5 QUERIES)
================================================================================

-- Q51: Count employees per department
SELECT department_id, COUNT(*) as employee_count FROM Employee GROUP BY department_id;

-- Q52: Average salary per department
SELECT department_id, AVG(salary) as avg_salary FROM Employee GROUP BY department_id;

-- Q53: Total salary per department
SELECT department_id, SUM(salary) as total_salary FROM Employee GROUP BY department_id;

-- Q54: Count projects per department
SELECT department_id, COUNT(*) as project_count FROM Project GROUP BY department_id;

-- Q55: Average age per department
SELECT department_id, AVG(age) as avg_age FROM Employee GROUP BY department_id;

================================================================================
SECTION 8: HAVING CLAUSE - FILTERING GROUPS (5 QUERIES)
================================================================================

-- Q56: Departments with average salary > 55000
SELECT department_id, AVG(salary) as avg_salary FROM Employee GROUP BY department_id HAVING AVG(salary) > 55000;

-- Q57: Departments with more than 1 employee
SELECT department_id, COUNT(*) as emp_count FROM Employee GROUP BY department_id HAVING COUNT(*) > 1;

-- Q58: Departments with total salary > 100000
SELECT department_id, SUM(salary) as total_sal FROM Employee GROUP BY department_id HAVING SUM(salary) > 100000;

-- Q59: Departments with average age > 33
SELECT department_id, AVG(age) as avg_age FROM Employee GROUP BY department_id HAVING AVG(age) > 33;

-- Q60: Departments with at least 1 employee
SELECT department_id, COUNT(*) FROM Employee GROUP BY department_id HAVING COUNT(*) >= 1;

================================================================================
SECTION 9: JOINS - COMBINING TABLES (10 QUERIES)
================================================================================

-- Q61: Employee with their department names
SELECT e.name, d.name as department FROM Employee e JOIN Department d ON e.department_id = d.dept_id;

-- Q62: Projects with their department names
SELECT p.name, d.name as department FROM Project p JOIN Department d ON p.department_id = d.dept_id;

-- Q63: Employees and their departments (using INNER JOIN)
SELECT e.name, e.salary, d.name FROM Employee e INNER JOIN Department d ON e.department_id = d.dept_id;

-- Q64: All employees with their departments (LEFT JOIN)
SELECT e.name, d.name FROM Employee e LEFT JOIN Department d ON e.department_id = d.dept_id;

-- Q65: All departments with their employees count
SELECT d.name, COUNT(e.emp_id) as emp_count FROM Department d LEFT JOIN Employee e ON d.dept_id = e.department_id GROUP BY d.dept_id, d.name;

-- BONUS Q66: Employees in IT department with their projects
SELECT DISTINCT e.name, p.name FROM Employee e JOIN Project p ON e.department_id = p.department_id WHERE e.department_id = 1;

-- BONUS Q67: Departments with total project budget
SELECT d.name, SUM(p.budget) as total_budget FROM Department d LEFT JOIN Project p ON d.dept_id = p.department_id GROUP BY d.dept_id, d.name;

-- BONUS Q68: Employees with their department and highest salary in that department
SELECT e.name, d.name, (SELECT MAX(salary) FROM Employee WHERE department_id = e.department_id) as dept_max_salary FROM Employee e JOIN Department d ON e.department_id = d.dept_id;

================================================================================
END OF QUERY FILE
================================================================================

INSTRUCTIONS FOR USE:
1. Copy the SCHEMA CREATION section to the LEFT side of DB Fiddle
2. Copy individual queries to the RIGHT side of DB Fiddle
3. Execute and observe outputs
4. Compare with solutions.sql for explanations
5. Document your outputs in output.txt
