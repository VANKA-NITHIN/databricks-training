================================================================================
DATABRICKS TRAINING - WEEK 1 DAY 2
SQL PRACTICE QUERIES - MAY 6, 2026
================================================================================

Date: 2026-05-06
Focus: ORDER BY, Aggregates, GROUP BY, HAVING, JOINS
Total Queries: 33

================================================================================
SCHEMA CREATION - SAME AS DAY 1 (COPY TO LEFT SIDE OF DB FIDDLE)
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
SECTION 1: ORDER BY - SORTING (5 QUERIES) - MAY 6, 2026
================================================================================

-- Q1: Sort employees by salary ascending (lowest to highest)
SELECT * FROM Employee ORDER BY salary ASC;

-- Q2: Sort employees by salary descending (highest to lowest)
SELECT * FROM Employee ORDER BY salary DESC;

-- Q3: Sort employees by age ascending
SELECT * FROM Employee ORDER BY age ASC;

-- Q4: Sort by department, then by salary descending (multiple columns)
SELECT * FROM Employee ORDER BY department_id ASC, salary DESC;

-- Q5: Sort projects by budget descending
SELECT * FROM Project ORDER BY budget DESC;

================================================================================
SECTION 2: AGGREGATE FUNCTIONS (10 QUERIES) - MAY 6, 2026
================================================================================

-- Q6: Count total number of employees
SELECT COUNT(*) as total_employees FROM Employee;

-- Q7: Sum of all employee salaries
SELECT SUM(salary) as total_salary FROM Employee;

-- Q8: Average salary of all employees
SELECT AVG(salary) as average_salary FROM Employee;

-- Q9: Maximum salary among all employees
SELECT MAX(salary) as highest_salary FROM Employee;

-- Q10: Minimum salary among all employees
SELECT MIN(salary) as lowest_salary FROM Employee;

-- Q11: Count employees in department 1 (IT)
SELECT COUNT(*) as it_employee_count FROM Employee WHERE department_id = 1;

-- Q12: Average age of all employees
SELECT AVG(age) as average_age FROM Employee;

-- Q13: Sum of all project budgets
SELECT SUM(budget) as total_project_budget FROM Project;

-- Q14: Average project budget
SELECT AVG(budget) as average_budget FROM Project;

-- Q15: Count total number of projects
SELECT COUNT(*) as total_projects FROM Project;

================================================================================
SECTION 3: GROUP BY - GROUPING DATA (5 QUERIES) - MAY 6, 2026
================================================================================

-- Q16: Count employees per department
SELECT department_id, COUNT(*) as employee_count FROM Employee GROUP BY department_id;

-- Q17: Average salary per department
SELECT department_id, AVG(salary) as average_salary FROM Employee GROUP BY department_id;

-- Q18: Total salary expense per department
SELECT department_id, SUM(salary) as total_salary FROM Employee GROUP BY department_id;

-- Q19: Count projects per department
SELECT department_id, COUNT(*) as project_count FROM Project GROUP BY department_id;

-- Q20: Average employee age per department
SELECT department_id, AVG(age) as average_age FROM Employee GROUP BY department_id;

================================================================================
SECTION 4: HAVING CLAUSE - FILTERING GROUPS (5 QUERIES) - MAY 6, 2026
================================================================================

-- Q21: Departments with average salary greater than 55000
SELECT department_id, AVG(salary) as avg_salary FROM Employee GROUP BY department_id HAVING AVG(salary) > 55000;

-- Q22: Departments with more than 1 employee
SELECT department_id, COUNT(*) as emp_count FROM Employee GROUP BY department_id HAVING COUNT(*) > 1;

-- Q23: Departments with total salary expense greater than 100000
SELECT department_id, SUM(salary) as total_salary FROM Employee GROUP BY department_id HAVING SUM(salary) > 100000;

-- Q24: Departments with average age greater than 33
SELECT department_id, AVG(age) as avg_age FROM Employee GROUP BY department_id HAVING AVG(age) > 33;

-- Q25: Departments with at least 1 employee
SELECT department_id, COUNT(*) as emp_count FROM Employee GROUP BY department_id HAVING COUNT(*) >= 1;

================================================================================
SECTION 5: JOINS - COMBINING TABLES (8 QUERIES) - MAY 6, 2026
================================================================================

-- Q26: Show employees with their department names (INNER JOIN)
SELECT e.emp_id, e.name, e.salary, d.name as department FROM Employee e INNER JOIN Department d ON e.department_id = d.dept_id;

-- Q27: Show projects with their department names (INNER JOIN)
SELECT p.project_id, p.name as project_name, d.name as department, p.budget FROM Project p INNER JOIN Department d ON p.department_id = d.dept_id;

-- Q28: List all employees with their departments and salaries (using JOIN)
SELECT e.name, e.salary, e.age, d.name as department FROM Employee e JOIN Department d ON e.department_id = d.dept_id;

-- Q29: Show all employees with their departments (LEFT JOIN - includes all employees)
SELECT e.name, e.department_id, d.name as department FROM Employee e LEFT JOIN Department d ON e.department_id = d.dept_id;

-- Q30: Count employees per department with department names
SELECT d.name as department, COUNT(e.emp_id) as employee_count FROM Department d LEFT JOIN Employee e ON d.dept_id = e.department_id GROUP BY d.dept_id, d.name;

-- Q31: Show employees and their projects (multi-table JOIN)
SELECT DISTINCT e.name as employee, p.name as project FROM Employee e JOIN Project p ON e.department_id = p.department_id;

-- Q32: Calculate total project budget per department with names
SELECT d.name as department, SUM(p.budget) as total_budget FROM Department d LEFT JOIN Project p ON d.dept_id = p.department_id GROUP BY d.dept_id, d.name;

-- Q33: Complex query - employees with their department and highest salary in that department
SELECT e.name, d.name as department, e.salary, (SELECT MAX(salary) FROM Employee WHERE department_id = e.department_id) as dept_max_salary FROM Employee e JOIN Department d ON e.department_id = d.dept_id;

================================================================================
MAY 6, 2026 SUMMARY
================================================================================
Total Queries Practiced: 33
Topics Covered:
  - ORDER BY for sorting data
  - Aggregate functions (COUNT, SUM, AVG, MIN, MAX)
  - GROUP BY for grouping data
  - HAVING for filtering grouped results
  - JOINS for combining multiple tables

================================================================================
END OF DAY 2 (MAY 6, 2026) QUERY FILE
================================================================================
