================================================================================
DATABRICKS TRAINING - WEEK 1 DAY 1
65 SQL PRACTICE QUERIES - SOLUTIONS & EXPLANATIONS
================================================================================

================================================================================
SECTION 1: BASIC SELECT QUERIES (5 QUERIES)
================================================================================

Q1: Get all employee records
---
Query:
SELECT * FROM Employee;

Solution:
This query retrieves ALL columns from ALL rows in the Employee table.

Expected Output:
emp_id | name        | age | salary    | department_id | hire_date
-------|-------------|-----|-----------|---------------|----------
1      | John Doe    | 28  | 50000.00  | 1             | 2020-01-15
2      | Jane Smith  | 34  | 60000.00  | 2             | 2019-07-23
3      | Bob Brown   | 45  | 80000.00  | 1             | 2018-02-12
4      | Alice Blue  | 25  | 45000.00  | 3             | 2021-03-22
5      | Charlie P.  | 29  | 50000.00  | 2             | 2019-12-01
6      | David Green | 38  | 70000.00  | 4             | 2022-05-18
7      | Eve Black   | 40  | 55000.00  | 3             | 2021-08-30

Key Points:
- SELECT * retrieves all columns
- No filtering means all rows are returned
- Use specific columns when you only need some data

---

Q2: Get specific columns (name and salary)
---
Query:
SELECT name, salary FROM Employee;

Solution:
This query retrieves only name and salary columns from the Employee table.

Expected Output:
name        | salary
------------|----------
John Doe    | 50000.00
Jane Smith  | 60000.00
Bob Brown   | 80000.00
Alice Blue  | 45000.00
Charlie P.  | 50000.00
David Green | 70000.00
Eve Black   | 55000.00

Key Points:
- Reduces data transfer by specifying only needed columns
- More efficient than SELECT *
- Makes query results cleaner and faster

---

Q3: Get all departments
---
Query:
SELECT * FROM Department;

Expected Output:
dept_id | name
--------|----------
1       | IT
2       | HR
3       | Finance
4       | Marketing

---

Q4: Get employee names and their ages
---
Query:
SELECT name, age FROM Employee;

Expected Output:
name        | age
------------|-----
John Doe    | 28
Jane Smith  | 34
Bob Brown   | 45
Alice Blue  | 25
Charlie P.  | 29
David Green | 38
Eve Black   | 40

---

Q5: Get all projects
---
Query:
SELECT * FROM Project;

Expected Output:
project_id | name             | department_id | budget
-----------|------------------|---------------|----------
1          | Project Alpha    | 1             | 100000.00
2          | Project Beta     | 2             | 80000.00
3          | Project Gamma    | 1             | 120000.00
4          | Project Delta    | 3             | 90000.00
5          | Project Epsilon  | 4             | 110000.00
6          | Project Zeta     | 4             | 95000.00
7          | Project Eta      | 3             | 85000.00

================================================================================
SECTION 2: WHERE CLAUSE - SIMPLE CONDITIONS (10 QUERIES)
================================================================================

Q6: Find employees older than 30
---
Query:
SELECT * FROM Employee WHERE age > 30;

Explanation:
WHERE age > 30 filters rows to show only employees whose age is greater than 30.

Expected Output:
4 rows (Jane Smith-34, Bob Brown-45, David Green-38, Eve Black-40)

---

Q7: Find employees with salary greater than 50000
---
Query:
SELECT * FROM Employee WHERE salary > 50000;

Explanation:
Retrieves all employees earning more than 50000.

Expected Output:
5 rows (Jane Smith-60000, Bob Brown-80000, David Green-70000, Eve Black-55000, and others)

---

Q8: Find employees in department 1
---
Query:
SELECT * FROM Employee WHERE department_id = 1;

Explanation:
Filters employees by exact department match.

Expected Output:
2 rows (John Doe and Bob Brown)

---

Q9: Find employees with salary exactly 50000
---
Query:
SELECT * FROM Employee WHERE salary = 50000;

Explanation:
Uses = operator for exact match.

Expected Output:
2 rows (John Doe and Charlie P.)

Key Points:
- = is used for exact equality
- Returns only rows that match the value exactly

---

Q10: Find employees NOT in department 2
---
Query:
SELECT * FROM Employee WHERE department_id <> 2;

Explanation:
<> or != operator means "not equal to".

Expected Output:
5 rows (all except employees in department 2)

Key Points:
- <> and != both mean "not equal"
- Returns all employees except those matching the condition

---

Q11: Find employees younger than 30
---
Query:
SELECT * FROM Employee WHERE age < 30;

Explanation:
Returns employees with age less than 30.

Expected Output:
3 rows (John Doe-28, Alice Blue-25, Charlie P.-29)

---

Q12: Find employees hired after 2020
---
Query:
SELECT * FROM Employee WHERE hire_date > '2020-01-01';

Explanation:
Compares dates. Format must be 'YYYY-MM-DD'.

Expected Output:
3 rows (Alice Blue-2021-03-22, Eve Black-2021-08-30, David Green-2022-05-18)

Key Points:
- Date format: 'YYYY-MM-DD'
- Date comparison works like number comparison

---

Q13: Find employees hired before 2019
---
Query:
SELECT * FROM Employee WHERE hire_date < '2019-01-01';

Expected Output:
1 row (Bob Brown-2018-02-12)

---

Q14: Find employees with salary between 50000 and 70000
---
Query:
SELECT * FROM Employee WHERE salary BETWEEN 50000 AND 70000;

Explanation:
BETWEEN operator includes both endpoints (inclusive).

Expected Output:
4 rows (John Doe-50000, Charlie P.-50000, Eve Black-55000, David Green-70000)

Key Points:
- BETWEEN is inclusive on both ends
- Equivalent to: salary >= 50000 AND salary <= 70000

---

Q15: Find employees in specific departments
---
Query:
SELECT * FROM Employee WHERE department_id IN (1, 3);

Explanation:
IN operator checks if value is in a list.

Expected Output:
4 rows (employees from departments 1 and 3)

Key Points:
- IN (1, 3) is equivalent to: department_id = 1 OR department_id = 3
- Cleaner syntax for multiple OR conditions

================================================================================
SECTION 3: LIKE OPERATOR - STRING MATCHING (10 QUERIES)
================================================================================

Q16: Names starting with 'J'
---
Query:
SELECT * FROM Employee WHERE name LIKE 'J%';

Explanation:
% matches any number of characters.
J% means starts with J followed by anything.

Expected Output:
2 rows (John Doe, Jane Smith)

Key Points:
- % = any number of characters (0 or more)
- J% = starts with J
- %J = ends with J
- %J% = contains J

---

Q17: Names ending with 'e'
---
Query:
SELECT * FROM Employee WHERE name LIKE '%e';

Explanation:
%e matches any string ending with 'e'.

Expected Output:
5 rows (John Doe, Jane Smith, Alice Blue, Charlie P., Eve Black)

---

Q18: Names containing 'a'
---
Query:
SELECT * FROM Employee WHERE name LIKE '%a%';

Explanation:
%a% matches any string with 'a' anywhere in it.

Expected Output:
6 rows (Jane Smith, Bob Brown, Alice Blue, Charlie P., David Green, Eve Black)

---

Q19: Names containing 'o'
---
Query:
SELECT * FROM Employee WHERE name LIKE '%o%';

Expected Output:
3 rows (John Doe, Bob Brown, David Green)

---

Q20: Second character is 'o'
---
Query:
SELECT * FROM Employee WHERE name LIKE '_o%';

Explanation:
_ matches exactly one character.
_o% = any char, then 'o', then anything.

Expected Output:
2 rows (John Doe, Bob Brown)

Key Points:
- _ = exactly one character
- _o% = second character must be 'o'
- __a = third character must be 'a'

---

Q21: Names with 'B' at start and 'n' at end
---
Query:
SELECT * FROM Employee WHERE name LIKE 'B%n';

Expected Output:
1 row (Bob Brown)

---

Q22: Names NOT starting with 'J'
---
Query:
SELECT * FROM Employee WHERE name NOT LIKE 'J%';

Expected Output:
5 rows (all except John Doe, Jane Smith)

Key Points:
- NOT LIKE reverses the pattern match

---

Q23: Names with exactly 4 characters
---
Query:
SELECT * FROM Employee WHERE name LIKE '____';

Explanation:
Four underscores = exactly 4 characters.

Expected Output:
0 rows (no employee names are exactly 4 characters)

---

Q24: Names starting with 'D'
---
Query:
SELECT * FROM Employee WHERE name LIKE 'D%';

Expected Output:
1 row (David Green)

---

Q25: Names ending with 'e' or 'n'
---
Query:
SELECT * FROM Employee WHERE name LIKE '%e' OR name LIKE '%n';

Explanation:
Combines two LIKE patterns with OR.

Expected Output:
6 rows (most employees)

================================================================================
SECTION 4: COMBINED CONDITIONS - AND/OR (10 QUERIES)
================================================================================

Q26: Age > 30 AND salary > 60000
---
Query:
SELECT * FROM Employee WHERE age > 30 AND salary > 60000;

Explanation:
Both conditions must be true for a row to be selected.

Expected Output:
3 rows (Jane Smith, Bob Brown, David Green)

Key Points:
- AND = both conditions must be true
- If either is false, row is excluded

---

Q27: Department 1 OR Department 2
---
Query:
SELECT * FROM Employee WHERE department_id = 1 OR department_id = 2;

Explanation:
At least one condition must be true.

Expected Output:
4 rows (employees from dept 1 or 2)

Key Points:
- OR = at least one condition must be true
- This is equivalent to: department_id IN (1, 2)

---

Q28: Age > 25 AND department_id = 3
---
Query:
SELECT * FROM Employee WHERE age > 25 AND department_id = 3;

Expected Output:
1 row (Eve Black - age 40)

---

Q29: Name starts with 'J' AND salary > 50000
---
Query:
SELECT * FROM Employee WHERE name LIKE 'J%' AND salary > 50000;

Expected Output:
1 row (Jane Smith - starts with J, salary 60000)

---

Q30: Age between 30 and 40 AND department = 1
---
Query:
SELECT * FROM Employee WHERE age BETWEEN 30 AND 40 AND department_id = 1;

Expected Output:
0 rows (department 1 employees are 28 and 45, not between 30-40)

---

Q31: Salary > 60000 OR age < 30
---
Query:
SELECT * FROM Employee WHERE salary > 60000 OR age < 30;

Explanation:
Returns rows where either condition is true.

Expected Output:
5 rows

---

Q32: (Department = 1 OR Department = 4) AND salary > 50000
---
Query:
SELECT * FROM Employee WHERE (department_id = 1 OR department_id = 4) AND salary > 50000;

Explanation:
Parentheses define operator precedence.

Expected Output:
3 rows (Bob Brown from dept 1, David Green from dept 4)

Key Points:
- () groups conditions together
- AND is evaluated before OR without parentheses

---

Q33: NOT (age < 30 AND department_id = 2)
---
Query:
SELECT * FROM Employee WHERE NOT (age < 30 AND department_id = 2);

Expected Output:
6 rows (excludes only employees < 30 in dept 2)

---

Q34: Age >= 30 AND (department_id = 1 OR department_id = 3)
---
Query:
SELECT * FROM Employee WHERE age >= 30 AND (department_id = 1 OR department_id = 3);

Expected Output:
3 rows (Bob Brown, Eve Black, and possibly others)

---

Q35: Name contains 'a' AND salary > 50000
---
Query:
SELECT * FROM Employee WHERE name LIKE '%a%' AND salary > 50000;

Expected Output:
4 rows

================================================================================
SECTION 5: AGGREGATE FUNCTIONS (10 QUERIES)
================================================================================

Q36: Count total employees
---
Query:
SELECT COUNT(*) as total_employees FROM Employee;

Explanation:
COUNT(*) counts all rows. AS renames the result column.

Expected Output:
total_employees
---------------
7

Key Points:
- COUNT(*) counts rows
- COUNT(column_name) counts non-NULL values
- AS creates an alias for column name

---

Q37: Sum of all salaries
---
Query:
SELECT SUM(salary) as total_salary FROM Employee;

Expected Output:
total_salary
-----------
413000.00

Calculation: 50000 + 60000 + 80000 + 45000 + 50000 + 70000 + 55000 = 413000

---

Q38: Average salary
---
Query:
SELECT AVG(salary) as average_salary FROM Employee;

Expected Output:
average_salary
--------------
58928.57

Calculation: 413000 / 7 ≈ 58928.57

---

Q39: Maximum salary
---
Query:
SELECT MAX(salary) as highest_salary FROM Employee;

Expected Output:
highest_salary
--------------
80000.00

(Bob Brown has the highest salary)

---

Q40: Minimum salary
---
Query:
SELECT MIN(salary) as lowest_salary FROM Employee;

Expected Output:
lowest_salary
-------------
45000.00

(Alice Blue has the lowest salary)

---

Q41: Count employees in department 1
---
Query:
SELECT COUNT(*) as dept1_count FROM Employee WHERE department_id = 1;

Expected Output:
dept1_count
----------
2

(John Doe and Bob Brown)

---

Q42: Average age of all employees
---
Query:
SELECT AVG(age) as average_age FROM Employee;

Expected Output:
average_age
-----------
33.57

Calculation: (28+34+45+25+29+38+40) / 7 ≈ 33.57

---

Q43: Sum of all project budgets
---
Query:
SELECT SUM(budget) as total_budget FROM Project;

Expected Output:
total_budget
-----------
685000.00

---

Q44: Average project budget
---
Query:
SELECT AVG(budget) as avg_budget FROM Project;

Expected Output:
avg_budget
----------
97857.14

---

Q45: Count of all projects
---
Query:
SELECT COUNT(*) as total_projects FROM Project;

Expected Output:
total_projects
--------------
7

================================================================================
SECTION 6: ORDER BY - SORTING (5 QUERIES)
================================================================================

Q46: Sort employees by salary ascending
---
Query:
SELECT * FROM Employee ORDER BY salary ASC;

Explanation:
ASC = ascending (low to high). Default if not specified.

Expected Output:
Rows sorted by salary from lowest (45000) to highest (80000)

---

Q47: Sort employees by salary descending
---
Query:
SELECT * FROM Employee ORDER BY salary DESC;

Explanation:
DESC = descending (high to low).

Expected Output:
Rows sorted by salary from highest (80000) to lowest (45000)

---

Q48: Sort employees by age ascending
---
Query:
SELECT * FROM Employee ORDER BY age ASC;

Expected Output:
Alice Blue (25), John Doe (28), Charlie P (29), ...

---

Q49: Sort by department, then by salary descending
---
Query:
SELECT * FROM Employee ORDER BY department_id ASC, salary DESC;

Explanation:
Multiple ORDER BY columns. First by department (ascending), then by salary (descending) within each department.

Expected Output:
Dept 1: Bob Brown (80000), John Doe (50000)
Dept 2: Jane Smith (60000), Charlie P (50000)
...

---

Q50: Sort projects by budget descending
---
Query:
SELECT * FROM Project ORDER BY budget DESC;

Expected Output:
Project Gamma (120000), Project Epsilon (110000), ...

================================================================================
SECTION 7: GROUP BY - DATA GROUPING (5 QUERIES)
================================================================================

Q51: Count employees per department
---
Query:
SELECT department_id, COUNT(*) as employee_count FROM Employee GROUP BY department_id;

Explanation:
GROUP BY groups rows by department_id, then COUNT counts rows in each group.

Expected Output:
department_id | employee_count
--------------|---------------
1             | 2
2             | 2
3             | 2
4             | 1

Key Points:
- GROUP BY creates groups based on column values
- Aggregates (COUNT, SUM, AVG) are calculated per group

---

Q52: Average salary per department
---
Query:
SELECT department_id, AVG(salary) as avg_salary FROM Employee GROUP BY department_id;

Expected Output:
department_id | avg_salary
--------------|----------
1             | 65000.00
2             | 55000.00
3             | 50000.00
4             | 70000.00

---

Q53: Total salary per department
---
Query:
SELECT department_id, SUM(salary) as total_salary FROM Employee GROUP BY department_id;

Expected Output:
department_id | total_salary
--------------|-------------
1             | 130000.00
2             | 110000.00
3             | 100000.00
4             | 70000.00

---

Q54: Count projects per department
---
Query:
SELECT department_id, COUNT(*) as project_count FROM Project GROUP BY department_id;

Expected Output:
department_id | project_count
--------------|---------------
1             | 2
2             | 1
3             | 2
4             | 2

---

Q55: Average age per department
---
Query:
SELECT department_id, AVG(age) as avg_age FROM Employee GROUP BY department_id;

Expected Output:
department_id | avg_age
--------------|--------
1             | 36.50
2             | 31.50
3             | 32.50
4             | 38.00

================================================================================
SECTION 8: HAVING CLAUSE - FILTERING GROUPS (5 QUERIES)
================================================================================

Q56: Departments with average salary > 55000
---
Query:
SELECT department_id, AVG(salary) as avg_salary FROM Employee GROUP BY department_id HAVING AVG(salary) > 55000;

Explanation:
WHERE filters rows before grouping. HAVING filters groups after grouping.

Expected Output:
department_id | avg_salary
--------------|----------
1             | 65000.00
4             | 70000.00

Key Points:
- HAVING is used with GROUP BY
- WHERE filters rows, HAVING filters groups
- Use HAVING when filtering on aggregate results

---

Q57: Departments with more than 1 employee
---
Query:
SELECT department_id, COUNT(*) as emp_count FROM Employee GROUP BY department_id HAVING COUNT(*) > 1;

Expected Output:
department_id | emp_count
--------------|----------
1             | 2
2             | 2
3             | 2

(Department 4 has only 1 employee, so excluded)

---

Q58: Departments with total salary > 100000
---
Query:
SELECT department_id, SUM(salary) as total_sal FROM Employee GROUP BY department_id HAVING SUM(salary) > 100000;

Expected Output:
department_id | total_sal
--------------|----------
1             | 130000.00
2             | 110000.00

---

Q59: Departments with average age > 33
---
Query:
SELECT department_id, AVG(age) as avg_age FROM Employee GROUP BY department_id HAVING AVG(age) > 33;

Expected Output:
department_id | avg_age
--------------|--------
1             | 36.50
4             | 38.00

---

Q60: Departments with at least 1 employee
---
Query:
SELECT department_id, COUNT(*) FROM Employee GROUP BY department_id HAVING COUNT(*) >= 1;

Expected Output:
All 4 departments (each has at least 1 employee)

================================================================================
SECTION 9: JOINS - COMBINING TABLES (10+ QUERIES)
================================================================================

Q61: Employee with their department names
---
Query:
SELECT e.name, d.name as department FROM Employee e JOIN Department d ON e.department_id = d.dept_id;

Explanation:
JOIN combines rows from two tables based on a matching condition.
e and d are table aliases.

Expected Output:
name        | department
------------|----------
John Doe    | IT
Jane Smith  | HR
Bob Brown   | IT
...

Key Points:
- e is alias for Employee table
- d is alias for Department table
- ON specifies the join condition

---

Q62: Projects with their department names
---
Query:
SELECT p.name, d.name as department FROM Project p JOIN Department d ON p.department_id = d.dept_id;

Expected Output:
name             | department
-----------------|----------
Project Alpha    | IT
Project Beta     | HR
...

---

Q63: Employees and their departments (using INNER JOIN)
---
Query:
SELECT e.name, e.salary, d.name FROM Employee e INNER JOIN Department d ON e.department_id = d.dept_id;

Expected Output:
name        | salary   | name
------------|----------|-----
John Doe    | 50000.00 | IT
Jane Smith  | 60000.00 | HR
...

---

Q64: All employees with their departments (LEFT JOIN)
---
Query:
SELECT e.name, d.name FROM Employee e LEFT JOIN Department d ON e.department_id = d.dept_id;

Explanation:
LEFT JOIN returns all rows from left table, matching right table if available.

Expected Output:
name        | name
------------|----------
John Doe    | IT
Jane Smith  | HR
...

---

Q65: All departments with their employees count
---
Query:
SELECT d.name, COUNT(e.emp_id) as emp_count FROM Department d LEFT JOIN Employee e ON d.dept_id = e.department_id GROUP BY d.dept_id, d.name;

Explanation:
Complex query combining LEFT JOIN, GROUP BY, and COUNT.

Expected Output:
name      | emp_count
----------|----------
IT        | 2
HR        | 2
Finance   | 2
Marketing | 1

================================================================================
KEY CONCEPTS SUMMARY
================================================================================

SELECT   - Choose columns
FROM     - Table source
WHERE    - Filter rows before grouping
LIKE     - Pattern matching (%=any, _=one)
AND/OR   - Combine conditions
=, <, >  - Comparison operators
BETWEEN  - Range check
IN       - Value in list
COUNT    - Count rows
SUM      - Add values
AVG      - Average value
MIN/MAX  - Minimum/Maximum
ORDER BY - Sort results
GROUP BY - Group rows
HAVING   - Filter groups
JOIN     - Combine tables
AS       - Create aliases

================================================================================
END OF SOLUTIONS
================================================================================
