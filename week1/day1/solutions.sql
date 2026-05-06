================================================================================
DATABRICKS TRAINING - WEEK 1 DAY 1
SOLUTIONS TO 65 SQL QUERIES WITH DETAILED EXPLANATIONS
================================================================================

================================================================================
SECTION 1: BASIC SELECT QUERIES (5 QUERIES)
================================================================================

Q1: Get all employee records
QUERY: SELECT * FROM Employee;

EXPLANATION:
- SELECT * retrieves all columns from the Employee table
- No WHERE clause means all rows are returned
- Useful for seeing complete data structure

EXPECTED OUTPUT:
7 rows with all employee information (emp_id, name, age, salary, department_id, hire_date)

KEY LEARNING:
- SELECT * is useful for exploration but inefficient for large tables
- Specify column names when you only need specific data

---

Q2: Get specific columns (name and salary)
QUERY: SELECT name, salary FROM Employee;

EXPLANATION:
- SELECT specifies exact columns needed: name and salary
- More efficient than SELECT * because less data is transferred
- Clear what information you're retrieving

EXPECTED OUTPUT:
7 rows showing only name and salary columns

KEY LEARNING:
- Always specify columns in production queries
- Improves performance and code readability

---

Q3: Get all departments
QUERY: SELECT * FROM Department;

EXPLANATION:
- Retrieves all departments in the organization
- Shows department structure

EXPECTED OUTPUT:
4 rows with departments: IT, HR, Finance, Marketing

---

Q4: Get employee names and their ages
QUERY: SELECT name, age FROM Employee;

EXPLANATION:
- Similar to Q2 but retrieves different columns
- Shows age distribution in organization

EXPECTED OUTPUT:
7 rows with employee names and ages

---

Q5: Get all projects
QUERY: SELECT * FROM Project;

EXPLANATION:
- Retrieves all projects in the system
- Shows project names and departments

EXPECTED OUTPUT:
7 rows with all project information

================================================================================
SECTION 2: WHERE CLAUSE - SIMPLE CONDITIONS (10 QUERIES)
================================================================================

Q6: Find employees older than 30
QUERY: SELECT * FROM Employee WHERE age > 30;

EXPLANATION:
- WHERE clause filters rows based on condition
- age > 30 means select only employees with age greater than 30
- Comparison operator: > (greater than)

EXPECTED OUTPUT:
4 rows (Jane Smith-34, Bob Brown-45, David Green-38, Eve Black-40)

KEY LEARNING:
- WHERE reduces result set to relevant data
- Comparison operators: =, >, <, >=, <=, <>

---

Q7: Find employees with salary greater than 50000
QUERY: SELECT * FROM Employee WHERE salary > 50000;

EXPLANATION:
- Filters employees by salary threshold
- Useful for identifying high earners

EXPECTED OUTPUT:
4 rows (Jane Smith-60000, Bob Brown-80000, David Green-70000, Eve Black-55000)

---

Q8: Find employees in department 1
QUERY: SELECT * FROM Employee WHERE department_id = 1;

EXPLANATION:
- Equality operator (=) matches exact value
- Filters by department_id = 1 (IT department)

EXPECTED OUTPUT:
2 rows (John Doe, Bob Brown)

---

Q9: Find employees with salary exactly 50000
QUERY: SELECT * FROM Employee WHERE salary = 50000;

EXPLANATION:
- = operator for exact match
- Two employees have exactly 50000 salary

EXPECTED OUTPUT:
2 rows (John Doe, Charlie P.)

---

Q10: Find employees NOT in department 2
QUERY: SELECT * FROM Employee WHERE department_id <> 2;

EXPLANATION:
- <> means "not equal to" (or != in some databases)
- Returns all except HR department employees

EXPECTED OUTPUT:
5 rows (all except Jane Smith and Charlie P.)

KEY LEARNING:
- <> and != both mean "not equal to"
- Different databases may prefer one over the other

---

Q11: Find employees younger than 30
QUERY: SELECT * FROM Employee WHERE age < 30;

EXPLANATION:
- < operator for less than comparison
- Finds junior employees

EXPECTED OUTPUT:
3 rows (John Doe-28, Alice Blue-25, Charlie P.-29)

---

Q12: Find employees hired after 2020
QUERY: SELECT * FROM Employee WHERE hire_date > '2020-01-01';

EXPLANATION:
- Date comparison in YYYY-MM-DD format
- > operator works with dates

EXPECTED OUTPUT:
3 rows (Alice Blue-2021-03-22, Eve Black-2021-08-30, David Green-2022-05-18)

KEY LEARNING:
- Date format must be correct: YYYY-MM-DD
- Dates are compared chronologically

---

Q13: Find employees hired before 2019
QUERY: SELECT * FROM Employee WHERE hire_date < '2019-01-01';

EXPLANATION:
- Finds employees hired in 2018 or earlier
- Bob Brown is the only one hired before 2019

EXPECTED OUTPUT:
1 row (Bob Brown-2018-02-12)

---

Q14: Find employees with salary between 50000 and 70000
QUERY: SELECT * FROM Employee WHERE salary BETWEEN 50000 AND 70000;

EXPLANATION:
- BETWEEN operator for range queries
- Inclusive on both ends (50000 and 70000 included)

EXPECTED OUTPUT:
4 rows (John Doe-50000, Jane Smith-60000, Charlie P.-50000, Eve Black-55000)

---

Q15: Find employees in specific departments
QUERY: SELECT * FROM Employee WHERE department_id IN (1, 3);

EXPLANATION:
- IN operator for multiple specific values
- More readable than: department_id = 1 OR department_id = 3

EXPECTED OUTPUT:
4 rows (John Doe, Bob Brown, Alice Blue, Eve Black)

KEY LEARNING:
- IN is cleaner than multiple OR conditions
- Useful for checking against a list of values

================================================================================
SECTION 3: LIKE OPERATOR - STRING MATCHING (10 QUERIES)
================================================================================

Q16: Names starting with 'J'
QUERY: SELECT * FROM Employee WHERE name LIKE 'J%';

EXPLANATION:
- % is wildcard meaning "any characters"
- J% means starts with J, followed by anything
- Case sensitive in most databases

EXPECTED OUTPUT:
2 rows (John Doe, Jane Smith)

KEY LEARNING:
- % = any number of characters (0 or more)
- _ = exactly one character
- LIKE is case sensitive

---

Q17: Names ending with 'e'
QUERY: SELECT * FROM Employee WHERE name LIKE '%e';

EXPLANATION:
- %e means anything ending with lowercase 'e'
- Finds names with 'e' as last character

EXPECTED OUTPUT:
5 rows (John Doe, Jane Smith, Alice Blue, Charlie P., Eve Black)

---

Q18: Names containing 'a'
QUERY: SELECT * FROM Employee WHERE name LIKE '%a%';

EXPLANATION:
- %a% means 'a' anywhere in the name
- Most flexible pattern

EXPECTED OUTPUT:
6 rows (all except Bob Brown)

---

Q19: Names containing 'o'
QUERY: SELECT * FROM Employee WHERE name LIKE '%o%';

EXPLANATION:
- Finds names with letter 'o' anywhere

EXPECTED OUTPUT:
2 rows (John Doe, Bob Brown)

---

Q20: Second character is 'o'
QUERY: SELECT * FROM Employee WHERE name LIKE '_o%';

EXPLANATION:
- _ matches exactly one character
- _o% means: first char (any), second char is 'o', rest is anything

EXPECTED OUTPUT:
2 rows (John Doe, Bob Brown)

KEY LEARNING:
- _ matches exactly ONE character, not zero
- _o% means "second character must be 'o'"

---

Q21: Names with 'B' at start and 'n' at end
QUERY: SELECT * FROM Employee WHERE name LIKE 'B%n';

EXPLANATION:
- B% means starts with B
- %n means ends with n
- Combined: B%n = starts with B and ends with n

EXPECTED OUTPUT:
1 row (Bob Brown)

---

Q22: Names NOT starting with 'J'
QUERY: SELECT * FROM Employee WHERE name NOT LIKE 'J%';

EXPLANATION:
- NOT LIKE reverses the LIKE condition
- Returns all names except those starting with 'J'

EXPECTED OUTPUT:
5 rows (all except John Doe, Jane Smith)

KEY LEARNING:
- NOT LIKE is opposite of LIKE
- Useful for exclusion patterns

---

Q23: Names with exactly 4 characters
QUERY: SELECT * FROM Employee WHERE name LIKE '____';

EXPLANATION:
- Four _ underscores match exactly 4 characters
- Eve (3 chars), Bob (3 chars) don't match

EXPECTED OUTPUT:
0 rows (no employee has exactly 4-character first name in this format)

Note: This counts individual names; if first and last name together, count differently

---

Q24: Names starting with 'D'
QUERY: SELECT * FROM Employee WHERE name LIKE 'D%';

EXPLANATION:
- Simple pattern: starts with D

EXPECTED OUTPUT:
1 row (David Green)

---

Q25: Names ending with 'e' or 'n'
QUERY: SELECT * FROM Employee WHERE name LIKE '%e' OR name LIKE '%n';

EXPLANATION:
- Combines two LIKE conditions with OR
- Returns names ending with 'e' OR 'n'

EXPECTED OUTPUT:
6 rows (John Doe, Jane Smith, Alice Blue, Charlie P., Eve Black, Bob Brown)

================================================================================
SECTION 4: COMBINED CONDITIONS - AND/OR (10 QUERIES)
================================================================================

Q26: Age > 30 AND salary > 60000
QUERY: SELECT * FROM Employee WHERE age > 30 AND salary > 60000;

EXPLANATION:
- AND means BOTH conditions must be true
- age > 30: Jane, Bob, David, Eve
- salary > 60000: Jane, Bob, David
- Intersection: Jane, Bob, David

EXPECTED OUTPUT:
3 rows (Jane Smith, Bob Brown, David Green)

KEY LEARNING:
- AND is more restrictive than OR
- Narrows down results

---

Q27: Department 1 OR Department 2
QUERY: SELECT * FROM Employee WHERE department_id = 1 OR department_id = 2;

EXPLANATION:
- OR means at least one condition must be true
- More inclusive than AND

EXPECTED OUTPUT:
4 rows (John Doe, Bob Brown, Jane Smith, Charlie P.)

KEY LEARNING:
- OR is broader than AND
- Returns more results

---

Q28: Age > 25 AND department_id = 3
QUERY: SELECT * FROM Employee WHERE age > 25 AND department_id = 3;

EXPLANATION:
- Combines age and department conditions
- All Finance employees older than 25

EXPECTED OUTPUT:
1 row (Eve Black-40)

Note: Alice Blue is in Finance but age 25, so not included (needs > 25)

---

Q29: Name starts with 'J' AND salary > 50000
QUERY: SELECT * FROM Employee WHERE name LIKE 'J%' AND salary > 50000;

EXPLANATION:
- Combines LIKE pattern with salary condition
- Names starting with J (John, Jane) who earn > 50000

EXPECTED OUTPUT:
2 rows (Jane Smith-60000)

Note: John Doe starts with J but salary = 50000, so not included

---

Q30: Age between 30 and 40 AND department = 1
QUERY: SELECT * FROM Employee WHERE age BETWEEN 30 AND 40 AND department_id = 1;

EXPLANATION:
- BETWEEN is more readable than age >= 30 AND age <= 40
- Further filtered by department

EXPECTED OUTPUT:
0 rows (Bob Brown is dept 1 but age 45, not between 30-40)

---

Q31: Salary > 60000 OR age < 30
QUERY: SELECT * FROM Employee WHERE salary > 60000 OR age < 30;

EXPLANATION:
- salary > 60000: Jane, Bob, David
- age < 30: John, Alice, Charlie
- OR combines both: all six

EXPECTED OUTPUT:
6 rows (all except Eve Black)

---

Q32: (Department = 1 OR Department = 4) AND salary > 50000
QUERY: SELECT * FROM Employee WHERE (department_id = 1 OR department_id = 4) AND salary > 50000;

EXPLANATION:
- Parentheses control operator precedence
- First: department 1 or 4
- Then: salary > 50000
- John Doe (dept 1, salary 50000) is excluded

EXPECTED OUTPUT:
2 rows (Bob Brown-dept 1, David Green-dept 4)

KEY LEARNING:
- Parentheses define condition grouping
- Ensure correct logical flow

---

Q33: NOT (age < 30 AND department_id = 2)
QUERY: SELECT * FROM Employee WHERE NOT (age < 30 AND department_id = 2);

EXPLANATION:
- NOT reverses entire condition
- Condition: age < 30 AND dept = 2 (young HR employees)
- NOT this: all except young HR employees

EXPECTED OUTPUT:
6 rows (all except Charlie P.)

---

Q34: Age >= 30 AND (department_id = 1 OR department_id = 3)
QUERY: SELECT * FROM Employee WHERE age >= 30 AND (department_id = 1 OR department_id = 3);

EXPLANATION:
- Age 30 or older
- AND in department 1 or 3

EXPECTED OUTPUT:
3 rows (Jane-dept 2 is excluded, Bob-dept 1, Eve-dept 3)

---

Q35: Name contains 'a' AND salary > 50000
QUERY: SELECT * FROM Employee WHERE name LIKE '%a%' AND salary > 50000;

EXPLANATION:
- Names with 'a' in them
- Who earn more than 50000

EXPECTED OUTPUT:
4 rows (Jane Smith, Alice Blue, Charlie P., Eve Black)

================================================================================
SECTION 5: AGGREGATE FUNCTIONS (10 QUERIES)
================================================================================

Q36: Count total employees
QUERY: SELECT COUNT(*) as total_employees FROM Employee;

EXPLANATION:
- COUNT(*) counts all rows
- AS alias renames the result column
- Returns single value: 7

EXPECTED OUTPUT:
1 row: total_employees = 7

KEY LEARNING:
- COUNT(*) counts all rows including NULL
- COUNT(column) ignores NULL values
- Aggregate functions return single values

---

Q37: Sum of all salaries
QUERY: SELECT SUM(salary) as total_salary FROM Employee;

EXPLANATION:
- SUM adds all salary values
- 50000 + 60000 + 80000 + 45000 + 50000 + 70000 + 55000 = 410000

EXPECTED OUTPUT:
1 row: total_salary = 410000.00

Note: Exact value may vary; calculate: 50+60+80+45+50+70+55 = 410 (in thousands)

---

Q38: Average salary
QUERY: SELECT AVG(salary) as average_salary FROM Employee;

EXPLANATION:
- AVG calculates mean
- 410000 / 7 = 58571.43

EXPECTED OUTPUT:
1 row: average_salary ≈ 58571.43

KEY LEARNING:
- AVG ignores NULL values
- Uses COUNT(non-NULL values) in denominator

---

Q39: Maximum salary
QUERY: SELECT MAX(salary) as highest_salary FROM Employee;

EXPLANATION:
- MAX finds highest value
- Bob Brown earns 80000 (highest)

EXPECTED OUTPUT:
1 row: highest_salary = 80000.00

---

Q40: Minimum salary
QUERY: SELECT MIN(salary) as lowest_salary FROM Employee;

EXPLANATION:
- MIN finds lowest value
- Alice Blue earns 45000 (lowest)

EXPECTED OUTPUT:
1 row: lowest_salary = 45000.00

---

Q41: Count employees in department 1
QUERY: SELECT COUNT(*) as dept1_count FROM Employee WHERE department_id = 1;

EXPLANATION:
- Combines COUNT with WHERE
- Only counts employees in IT (dept 1)

EXPECTED OUTPUT:
1 row: dept1_count = 2

---

Q42: Average age of all employees
QUERY: SELECT AVG(age) as average_age FROM Employee;

EXPLANATION:
- Average of all ages
- (28+34+45+25+29+38+40) / 7 = 33.57

EXPECTED OUTPUT:
1 row: average_age ≈ 33.57

---

Q43: Sum of all project budgets
QUERY: SELECT SUM(budget) as total_budget FROM Project;

EXPLANATION:
- Total project investment

EXPECTED OUTPUT:
1 row with sum of all project budgets

---

Q44: Average project budget
QUERY: SELECT AVG(budget) as avg_budget FROM Project;

EXPLANATION:
- Mean project investment size

EXPECTED OUTPUT:
1 row with average budget

---

Q45: Count of all projects
QUERY: SELECT COUNT(*) as total_projects FROM Project;

EXPLANATION:
- How many projects exist

EXPECTED OUTPUT:
1 row: total_projects = 7

================================================================================
SECTION 6: ORDER BY - SORTING (5 QUERIES)
================================================================================

Q46: Sort employees by salary ascending
QUERY: SELECT * FROM Employee ORDER BY salary ASC;

EXPLANATION:
- ORDER BY sorts results
- ASC = ascending (lowest to highest)
- Default is ASC if not specified

EXPECTED OUTPUT:
7 rows sorted: Alice-45000, John-50000, Charlie-50000, Eve-55000, Jane-60000, David-70000, Bob-80000

KEY LEARNING:
- ASC = ascending (lowest first)
- DESC = descending (highest first)
- Default is ASC

---

Q47: Sort employees by salary descending
QUERY: SELECT * FROM Employee ORDER BY salary DESC;

EXPLANATION:
- DESC = descending (highest to lowest)

EXPECTED OUTPUT:
7 rows sorted highest to lowest salary: Bob-80000, David-70000, Jane-60000, Eve-55000, John-50000, Charlie-50000, Alice-45000

---

Q48: Sort employees by age ascending
QUERY: SELECT * FROM Employee ORDER BY age ASC;

EXPLANATION:
- Youngest to oldest

EXPECTED OUTPUT:
7 rows: Alice-25, John-28, Charlie-29, Jane-34, David-38, Eve-40, Bob-45

---

Q49: Sort by department, then by salary descending
QUERY: SELECT * FROM Employee ORDER BY department_id ASC, salary DESC;

EXPLANATION:
- Primary sort: department ascending (1, 2, 3, 4)
- Secondary sort: within each department, highest salary first

EXPECTED OUTPUT:
Within each department, salaries from highest to lowest

KEY LEARNING:
- Multiple ORDER BY columns
- Sorted left to right in priority

---

Q50: Sort projects by budget descending
QUERY: SELECT * FROM Project ORDER BY budget DESC;

EXPLANATION:
- Most expensive projects first

EXPECTED OUTPUT:
7 projects sorted highest to lowest budget

================================================================================
SECTION 7: GROUP BY - DATA GROUPING (5 QUERIES)
================================================================================

Q51: Count employees per department
QUERY: SELECT department_id, COUNT(*) as employee_count FROM Employee GROUP BY department_id;

EXPLANATION:
- GROUP BY groups rows by department_id
- COUNT(*) counts employees in each group
- Produces one row per department

EXPECTED OUTPUT:
4 rows:
dept 1: 2 employees
dept 2: 2 employees
dept 3: 2 employees
dept 4: 1 employee

KEY LEARNING:
- GROUP BY creates groups
- Aggregate functions apply to each group separately
- Result is one row per group

---

Q52: Average salary per department
QUERY: SELECT department_id, AVG(salary) as avg_salary FROM Employee GROUP BY department_id;

EXPLANATION:
- One row per department with average salary

EXPECTED OUTPUT:
4 rows with department ID and average salary for each

---

Q53: Total salary per department
QUERY: SELECT department_id, SUM(salary) as total_salary FROM Employee GROUP BY department_id;

EXPLANATION:
- Total payroll by department

EXPECTED OUTPUT:
4 rows with department and total salary

---

Q54: Count projects per department
QUERY: SELECT department_id, COUNT(*) as project_count FROM Project GROUP BY department_id;

EXPLANATION:
- How many projects in each department

EXPECTED OUTPUT:
4 rows with project count per department

---

Q55: Average age per department
QUERY: SELECT department_id, AVG(age) as avg_age FROM Employee GROUP BY department_id;

EXPLANATION:
- Average employee age by department

EXPECTED OUTPUT:
4 rows with average age per department

================================================================================
SECTION 8: HAVING CLAUSE - FILTERING GROUPS (5 QUERIES)
================================================================================

Q56: Departments with average salary > 55000
QUERY: SELECT department_id, AVG(salary) as avg_salary FROM Employee GROUP BY department_id HAVING AVG(salary) > 55000;

EXPLANATION:
- GROUP BY creates groups
- HAVING filters the groups (like WHERE for groups)
- WHERE filters rows; HAVING filters groups

EXPECTED OUTPUT:
2 rows: departments 1 and 4 (those with avg salary > 55000)

KEY LEARNING:
- HAVING applies to groups, not individual rows
- Must use aggregate functions in HAVING
- WHERE filters before grouping; HAVING filters after

---

Q57: Departments with more than 1 employee
QUERY: SELECT department_id, COUNT(*) as emp_count FROM Employee GROUP BY department_id HAVING COUNT(*) > 1;

EXPLANATION:
- Only departments with 2 or more employees

EXPECTED OUTPUT:
3 rows: departments 1, 2, 3 (each has 2+ employees)

---

Q58: Departments with total salary > 100000
QUERY: SELECT department_id, SUM(salary) as total_sal FROM Employee GROUP BY department_id HAVING SUM(salary) > 100000;

EXPLANATION:
- Only high-payroll departments

EXPECTED OUTPUT:
2 rows: departments 1 and 2

---

Q59: Departments with average age > 33
QUERY: SELECT department_id, AVG(age) as avg_age FROM Employee GROUP BY department_id HAVING AVG(age) > 33;

EXPLANATION:
- Departments with older average workforce

EXPECTED OUTPUT:
2 rows: departments 1 and 4

---

Q60: Departments with at least 1 employee
QUERY: SELECT department_id, COUNT(*) FROM Employee GROUP BY department_id HAVING COUNT(*) >= 1;

EXPLANATION:
- All departments (all have >= 1 employee in this dataset)

EXPECTED OUTPUT:
4 rows (all departments)

================================================================================
SECTION 9: JOINS - COMBINING TABLES (10 QUERIES)
================================================================================

Q61: Employee with their department names
QUERY: SELECT e.name, d.name as department FROM Employee e JOIN Department d ON e.department_id = d.dept_id;

EXPLANATION:
- JOIN combines data from two tables
- ON specifies the connection condition
- e and d are aliases for shorter syntax

EXPECTED OUTPUT:
7 rows with employee names and department names

KEY LEARNING:
- JOIN combines rows from multiple tables
- ON specifies join condition
- Aliases (e, d) make queries more readable

---

Q62: Projects with their department names
QUERY: SELECT p.name, d.name as department FROM Project p JOIN Department d ON p.department_id = d.dept_id;

EXPLANATION:
- Similar to Q61 but for projects

EXPECTED OUTPUT:
7 rows with project names and department names

---

Q63: Employees and their departments (using INNER JOIN)
QUERY: SELECT e.name, e.salary, d.name FROM Employee e INNER JOIN Department d ON e.department_id = d.dept_id;

EXPLANATION:
- INNER JOIN is same as JOIN
- Returns only matching rows
- Employees with departments

EXPECTED OUTPUT:
7 rows with name, salary, and department

---

Q64: All employees with their departments (LEFT JOIN)
QUERY: SELECT e.name, d.name FROM Employee e LEFT JOIN Department d ON e.department_id = d.dept_id;

EXPLANATION:
- LEFT JOIN keeps all rows from left table
- If no match in right table, shows NULL

EXPECTED OUTPUT:
7 rows (all employees with their departments)

KEY LEARNING:
- LEFT JOIN: all left table rows, matching right rows
- RIGHT JOIN: all right table rows, matching left rows
- INNER JOIN: only matching rows from both

---

Q65: All departments with their employees count
QUERY: SELECT d.name, COUNT(e.emp_id) as emp_count FROM Department d LEFT JOIN Employee e ON d.dept_id = e.department_id GROUP BY d.dept_id, d.name;

EXPLANATION:
- LEFT JOIN keeps all departments
- GROUP BY counts employees
- Even departments with 0 employees show count as 0

EXPECTED OUTPUT:
4 rows with department names and employee counts

KEY LEARNING:
- LEFT JOIN with GROUP BY shows all groups even if empty
- COUNT(e.emp_id) counts non-NULL employee IDs

================================================================================
KEY CONCEPTS SUMMARY
================================================================================

1. SELECT: Retrieve data
   - SELECT column_name
   - SELECT *
   - SELECT DISTINCT

2. FROM: Specify table
   - FROM table_name

3. WHERE: Filter rows
   - WHERE condition
   - Operators: =, >, <, >=, <=, <>, BETWEEN, IN, LIKE, IS NULL

4. GROUP BY: Create groups
   - GROUP BY column

5. HAVING: Filter groups
   - HAVING aggregate_condition

6. ORDER BY: Sort results
   - ORDER BY column ASC/DESC

7. JOIN: Combine tables
   - JOIN, INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN

8. AGGREGATE FUNCTIONS:
   - COUNT(*) - count rows
   - SUM(column) - add values
   - AVG(column) - average
   - MIN(column) - minimum
   - MAX(column) - maximum

9. LOGICAL OPERATORS:
   - AND (all conditions true)
   - OR (at least one true)
   - NOT (reverse condition)

10. PATTERN MATCHING:
    - LIKE with % (any characters)
    - LIKE with _ (single character)

================================================================================
END OF SOLUTIONS DOCUMENT
================================================================================
