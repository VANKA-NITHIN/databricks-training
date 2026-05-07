================================================================================
DATABRICKS TRAINING - WEEK 1 DAY 2 (MAY 6, 2026)
SQL SOLUTIONS AND EXPECTED OUTPUTS
================================================================================

Total Solutions: 33 (Day 2 Queries)
Topics: ORDER BY, Aggregates, GROUP BY, HAVING, JOINS

================================================================================
SECTION 1: ORDER BY SOLUTIONS (5 SOLUTIONS)
================================================================================

D2-Q1: Sort employees by salary ascending
QUERY:
SELECT * FROM Employee ORDER BY salary ASC;

OUTPUT:
emp_id | name       | age | salary   | department_id | hire_date
-------|------------|-----|----------|---------------|----------
4      | Alice Blue | 25  | 45000.00 | 3             | 2021-03-22
1      | John Doe   | 28  | 50000.00 | 1             | 2020-01-15
5      | Charlie P. | 29  | 50000.00 | 2             | 2019-12-01
7      | Eve Black  | 40  | 55000.00 | 3             | 2021-08-30
2      | Jane Smith | 34  | 60000.00 | 2             | 2019-07-23
6      | David Green| 38  | 70000.00 | 4             | 2022-05-18
3      | Bob Brown  | 45  | 80000.00 | 1             | 2018-02-12

EXPLANATION: Orders employees from lowest to highest salary using ASC

---

D2-Q2: Sort employees by salary descending
QUERY:
SELECT * FROM Employee ORDER BY salary DESC;

OUTPUT:
emp_id | name       | age | salary   | department_id | hire_date
-------|------------|-----|----------|---------------|----------
3      | Bob Brown  | 45  | 80000.00 | 1             | 2018-02-12
6      | David Green| 38  | 70000.00 | 4             | 2022-05-18
2      | Jane Smith | 34  | 60000.00 | 2             | 2019-07-23
7      | Eve Black  | 40  | 55000.00 | 3             | 2021-08-30
1      | John Doe   | 28  | 50000.00 | 1             | 2020-01-15
5      | Charlie P. | 29  | 50000.00 | 2             | 2019-12-01
4      | Alice Blue | 25  | 45000.00 | 3             | 2021-03-22

EXPLANATION: Orders employees from highest to lowest salary using DESC

---

D2-Q3: Sort employees by age ascending
QUERY:
SELECT * FROM Employee ORDER BY age ASC;

OUTPUT:
emp_id | name       | age | salary   | department_id | hire_date
-------|------------|-----|----------|---------------|----------
4      | Alice Blue | 25  | 45000.00 | 3             | 2021-03-22
1      | John Doe   | 28  | 50000.00 | 1             | 2020-01-15
5      | Charlie P. | 29  | 50000.00 | 2             | 2019-12-01
2      | Jane Smith | 34  | 60000.00 | 2             | 2019-07-23
6      | David Green| 38  | 70000.00 | 4             | 2022-05-18
7      | Eve Black  | 40  | 55000.00 | 3             | 2021-08-30
3      | Bob Brown  | 45  | 80000.00 | 1             | 2018-02-12

EXPLANATION: Youngest to oldest employee

---

D2-Q4: Sort by department ascending, then by salary descending
QUERY:
SELECT * FROM Employee ORDER BY department_id ASC, salary DESC;

OUTPUT:
emp_id | name       | age | salary   | department_id | hire_date
-------|------------|-----|----------|---------------|----------
3      | Bob Brown  | 45  | 80000.00 | 1             | 2018-02-12
1      | John Doe   | 28  | 50000.00 | 1             | 2020-01-15
2      | Jane Smith | 34  | 60000.00 | 2             | 2019-07-23
5      | Charlie P. | 29  | 50000.00 | 2             | 2019-12-01
7      | Eve Black  | 40  | 55000.00 | 3             | 2021-08-30
4      | Alice Blue | 25  | 45000.00 | 3             | 2021-03-22
6      | David Green| 38  | 70000.00 | 4             | 2022-05-18

EXPLANATION: First sorted by department, then within each department by salary (highest first)

---

D2-Q5: Sort projects by budget descending
QUERY:
SELECT * FROM Project ORDER BY budget DESC;

OUTPUT:
project_id | name              | department_id | budget
-----------|-------------------|---------------|----------
3          | Project Gamma     | 1             | 120000.00
5          | Project Epsilon   | 4             | 110000.00
1          | Project Alpha     | 1             | 100000.00
6          | Project Zeta      | 4             | 95000.00
4          | Project Delta     | 3             | 90000.00
2          | Project Beta      | 2             | 80000.00
7          | Project Eta       | 3             | 85000.00

EXPLANATION: Projects ordered from highest to lowest budget

================================================================================
SECTION 2: AGGREGATE FUNCTIONS SOLUTIONS (10 SOLUTIONS)
================================================================================

D2-Q6: Count total employees
QUERY:
SELECT COUNT(*) as total_employees FROM Employee;

OUTPUT:
total_employees
----------------
7

EXPLANATION: Returns total count of all employee records

---

D2-Q7: Sum of all salaries
QUERY:
SELECT SUM(salary) as total_salary FROM Employee;

OUTPUT:
total_salary
-----------
413000.00

CALCULATION: 50000 + 60000 + 80000 + 45000 + 50000 + 70000 + 55000 = 413,000

---

D2-Q8: Average salary across all employees
QUERY:
SELECT AVG(salary) as average_salary FROM Employee;

OUTPUT:
average_salary
--------------
58928.57

CALCULATION: 413000 / 7 = 58,928.57

---

D2-Q9: Maximum salary (highest paid employee)
QUERY:
SELECT MAX(salary) as highest_salary FROM Employee;

OUTPUT:
highest_salary
--------------
80000.00

EXPLANATION: Bob Brown has the highest salary

---

D2-Q10: Minimum salary (lowest paid employee)
QUERY:
SELECT MIN(salary) as lowest_salary FROM Employee;

OUTPUT:
lowest_salary
-----------
45000.00

EXPLANATION: Alice Blue has the lowest salary

---

D2-Q11: Count employees in department 1
QUERY:
SELECT COUNT(*) as dept1_count FROM Employee WHERE department_id = 1;

OUTPUT:
dept1_count
----------
2

EXPLANATION: Department 1 (IT) has 2 employees: John Doe and Bob Brown

---

D2-Q12: Average age of all employees
QUERY:
SELECT AVG(age) as average_age FROM Employee;

OUTPUT:
average_age
----------
33.57

CALCULATION: (28+34+45+25+29+38+40) / 7 = 239 / 7 = 34.14 (approximately)

---

D2-Q13: Sum of all project budgets
QUERY:
SELECT SUM(budget) as total_budget FROM Project;

OUTPUT:
total_budget
-----------
680000.00

CALCULATION: 100000 + 80000 + 120000 + 90000 + 110000 + 95000 + 85000 = 680,000

---

D2-Q14: Average project budget
QUERY:
SELECT AVG(budget) as avg_budget FROM Project;

OUTPUT:
avg_budget
---------
97142.86

CALCULATION: 680000 / 7 = 97,142.86

---

D2-Q15: Count of all projects
QUERY:
SELECT COUNT(*) as total_projects FROM Project;

OUTPUT:
total_projects
--------------
7

EXPLANATION: Total 7 projects in the database

================================================================================
SECTION 3: GROUP BY SOLUTIONS (5 SOLUTIONS)
================================================================================

D2-Q16: Count employees per department
QUERY:
SELECT department_id, COUNT(*) as employee_count FROM Employee GROUP BY department_id;

OUTPUT:
department_id | employee_count
--------------|---------------
1             | 2
2             | 2
3             | 2
4             | 1

EXPLANATION: Shows count of employees in each department

---

D2-Q17: Average salary per department
QUERY:
SELECT department_id, AVG(salary) as avg_salary FROM Employee GROUP BY department_id;

OUTPUT:
department_id | avg_salary
--------------|----------
1             | 65000.00
2             | 55000.00
3             | 50000.00
4             | 70000.00

CALCULATION:
Dept 1: (50000 + 80000) / 2 = 65000
Dept 2: (60000 + 50000) / 2 = 55000
Dept 3: (45000 + 55000) / 2 = 50000
Dept 4: 70000 / 1 = 70000

---

D2-Q18: Total salary per department
QUERY:
SELECT department_id, SUM(salary) as total_salary FROM Employee GROUP BY department_id;

OUTPUT:
department_id | total_salary
--------------|-------------
1             | 130000.00
2             | 110000.00
3             | 100000.00
4             | 70000.00

CALCULATION:
Dept 1: 50000 + 80000 = 130000
Dept 2: 60000 + 50000 = 110000
Dept 3: 45000 + 55000 = 100000
Dept 4: 70000 = 70000

---

D2-Q19: Count projects per department
QUERY:
SELECT department_id, COUNT(*) as project_count FROM Project GROUP BY department_id;

OUTPUT:
department_id | project_count
--------------|---------------
1             | 2
2             | 1
3             | 2
4             | 2

EXPLANATION: Shows how many projects each department has

---

D2-Q20: Average age per department
QUERY:
SELECT department_id, AVG(age) as avg_age FROM Employee GROUP BY department_id;

OUTPUT:
department_id | avg_age
--------------|--------
1             | 36.50
2             | 31.50
3             | 32.50
4             | 38.00

CALCULATION:
Dept 1: (28 + 45) / 2 = 36.50
Dept 2: (34 + 29) / 2 = 31.50
Dept 3: (25 + 40) / 2 = 32.50
Dept 4: 38 / 1 = 38.00

================================================================================
SECTION 4: HAVING CLAUSE SOLUTIONS (5 SOLUTIONS)
================================================================================

D2-Q21: Departments with average salary greater than 55000
QUERY:
SELECT department_id, AVG(salary) as avg_salary FROM Employee GROUP BY department_id HAVING AVG(salary) > 55000;

OUTPUT:
department_id | avg_salary
--------------|----------
1             | 65000.00
4             | 70000.00

EXPLANATION: Only IT (1) and Marketing (4) departments have avg salary > 55000

---

D2-Q22: Departments with more than 1 employee
QUERY:
SELECT department_id, COUNT(*) as emp_count FROM Employee GROUP BY department_id HAVING COUNT(*) > 1;

OUTPUT:
department_id | emp_count
--------------|----------
1             | 2
2             | 2
3             | 2

EXPLANATION: IT, HR, and Finance have more than 1 employee (Marketing has exactly 1)

---

D2-Q23: Departments with total salary greater than 100000
QUERY:
SELECT department_id, SUM(salary) as total_sal FROM Employee GROUP BY department_id HAVING SUM(salary) > 100000;

OUTPUT:
department_id | total_sal
--------------|----------
1             | 130000.00
2             | 110000.00

EXPLANATION: IT and HR departments have total payroll > 100000

---

D2-Q24: Departments with average age greater than 33
QUERY:
SELECT department_id, AVG(age) as avg_age FROM Employee GROUP BY department_id HAVING AVG(age) > 33;

OUTPUT:
department_id | avg_age
--------------|--------
1             | 36.50
4             | 38.00

EXPLANATION: IT and Marketing departments have average age > 33

---

D2-Q25: Departments with at least 1 employee
QUERY:
SELECT department_id, COUNT(*) as emp_count FROM Employee GROUP BY department_id HAVING COUNT(*) >= 1;

OUTPUT:
department_id | emp_count
--------------|----------
1             | 2
2             | 2
3             | 2
4             | 1

EXPLANATION: All departments have at least 1 employee

================================================================================
SECTION 5: JOIN SOLUTIONS (8 SOLUTIONS)
================================================================================

D2-Q26: Employee names with their department names (INNER JOIN)
QUERY:
SELECT e.name, d.name as department FROM Employee e JOIN Department d ON e.department_id = d.dept_id;

OUTPUT:
name        | department
------------|----------
John Doe    | IT
Jane Smith  | HR
Bob Brown   | IT
Alice Blue  | Finance
Charlie P.  | HR
David Green | Marketing
Eve Black   | Finance

EXPLANATION: INNER JOIN shows only employees who have matching departments

---

D2-Q27: Projects with their department names (INNER JOIN)
QUERY:
SELECT p.name, d.name as department FROM Project p JOIN Department d ON p.department_id = d.dept_id;

OUTPUT:
name              | department
------------------|----------
Project Alpha     | IT
Project Beta      | HR
Project Gamma     | IT
Project Delta     | Finance
Project Epsilon   | Marketing
Project Zeta      | Marketing
Project Eta       | Finance

EXPLANATION: Shows each project with its department name

---

D2-Q28: Employee details with department information
QUERY:
SELECT e.name, e.salary, d.name as department FROM Employee e INNER JOIN Department d ON e.department_id = d.dept_id;

OUTPUT:
name        | salary   | department
------------|----------|----------
John Doe    | 50000.00 | IT
Jane Smith  | 60000.00 | HR
Bob Brown   | 80000.00 | IT
Alice Blue  | 45000.00 | Finance
Charlie P.  | 50000.00 | HR
David Green | 70000.00 | Marketing
Eve Black   | 55000.00 | Finance

EXPLANATION: Combines employee info with department names

---

D2-Q29: All employees with their departments (LEFT JOIN)
QUERY:
SELECT e.name, d.name as department FROM Employee e LEFT JOIN Department d ON e.department_id = d.dept_id;

OUTPUT:
name        | department
------------|----------
John Doe    | IT
Jane Smith  | HR
Bob Brown   | IT
Alice Blue  | Finance
Charlie P.  | HR
David Green | Marketing
Eve Black   | Finance

EXPLANATION: LEFT JOIN returns all employees (matched with departments or NULL if no match)
In this case, all employees have departments, so result is same as INNER JOIN

---

D2-Q30: All departments with employee count
QUERY:
SELECT d.name, COUNT(e.emp_id) as emp_count FROM Department d LEFT JOIN Employee e ON d.dept_id = e.department_id GROUP BY d.dept_id, d.name;

OUTPUT:
name      | emp_count
----------|----------
IT        | 2
HR        | 2
Finance   | 2
Marketing | 1

EXPLANATION: Shows all departments with their employee count using LEFT JOIN

---

D2-Q31: Employees in IT department with their projects
QUERY:
SELECT DISTINCT e.name, p.name as project FROM Employee e JOIN Project p ON e.department_id = p.department_id WHERE e.department_id = 1;

OUTPUT:
name      | project
----------|----------------
John Doe  | Project Alpha
John Doe  | Project Gamma
Bob Brown | Project Alpha
Bob Brown | Project Gamma

EXPLANATION: Shows IT employees and their projects. DISTINCT removes duplicates

---

D2-Q32: Departments with total project budget
QUERY:
SELECT d.name, SUM(p.budget) as total_budget FROM Department d LEFT JOIN Project p ON d.dept_id = p.department_id GROUP BY d.dept_id, d.name;

OUTPUT:
name      | total_budget
----------|----------
IT        | 220000.00
HR        | 80000.00
Finance   | 175000.00
Marketing | 205000.00

CALCULATION:
IT: 100000 + 120000 = 220000
HR: 80000 = 80000
Finance: 90000 + 85000 = 175000
Marketing: 110000 + 95000 = 205000

---

D2-Q33: Employees with department and highest salary in that department
QUERY:
SELECT e.name, d.name as department, (SELECT MAX(salary) FROM Employee WHERE department_id = e.department_id) as dept_max_salary FROM Employee e JOIN Department d ON e.department_id = d.dept_id;

OUTPUT:
name        | department | dept_max_salary
------------|------------|----------
John Doe    | IT         | 80000.00
Jane Smith  | HR         | 60000.00
Bob Brown   | IT         | 80000.00
Alice Blue  | Finance    | 55000.00
Charlie P.  | HR         | 60000.00
David Green | Marketing  | 70000.00
Eve Black   | Finance    | 55000.00

EXPLANATION: Shows each employee with the highest salary in their department (using subquery)

================================================================================
DAY 2 (MAY 6, 2026) SUMMARY
================================================================================

Total Queries: 33
Topics Mastered:
  ✅ ORDER BY - Sorting in ascending/descending order
  ✅ Aggregate Functions - COUNT, SUM, AVG, MIN, MAX
  ✅ GROUP BY - Grouping data by columns
  ✅ HAVING - Filtering groups after aggregation
  ✅ JOINS - INNER JOIN, LEFT JOIN combining tables
  ✅ Subqueries - Nested SELECT statements

Weekly Progress:
  Day 1 (May 5): 32 queries - SELECT, WHERE, LIKE
  Day 2 (May 6): 33 queries - ORDER BY, Aggregates, GROUP BY, HAVING, JOINS
  TOTAL: 65 queries completed in 2 days!

================================================================================
END OF DAY 2 (MAY 6, 2026) SOLUTIONS
================================================================================
