================================================================================
DATABRICKS TRAINING - WEEK 1 DAY 1
SQL SOLUTIONS AND OUTPUTS - MAY 5, 2026
================================================================================

Date: 2026-05-05
Total Solutions: 32

================================================================================
SECTION 1: BASIC SELECT QUERIES - SOLUTIONS (5 QUERIES)
================================================================================

--- SOLUTION Q1: Get all employee records ---
SELECT * FROM Employee;

OUTPUT:
emp_id | name        | age | salary   | department_id | hire_date
-------|-------------|-----|----------|---------------|----------
1      | John Doe    | 28  | 50000.00 | 1             | 2020-01-15
2      | Jane Smith  | 34  | 60000.00 | 2             | 2019-07-23
3      | Bob Brown   | 45  | 80000.00 | 1             | 2018-02-12
4      | Alice Blue  | 25  | 45000.00 | 3             | 2021-03-22
5      | Charlie P.  | 29  | 50000.00 | 2             | 2019-12-01
6      | David Green | 38  | 70000.00 | 4             | 2022-05-18
7      | Eve Black   | 40  | 55000.00 | 3             | 2021-08-30

EXPLANATION:
- SELECT * retrieves ALL columns from the Employee table
- Shows complete employee information including ID, name, age, salary, department, and hire date
- Total 7 employees returned

KEY LEARNING POINT:
Use SELECT * when you need all data, but in production systems, specify exact columns for better performance

---

--- SOLUTION Q2: Get specific columns (name and salary) ---
SELECT name, salary FROM Employee;

OUTPUT:
name        | salary
------------|----------
John Doe    | 50000.00
Jane Smith  | 60000.00
Bob Brown   | 80000.00
Alice Blue  | 45000.00
Charlie P.  | 50000.00
David Green | 70000.00
Eve Black   | 55000.00

EXPLANATION:
- SELECT name, salary retrieves only the name and salary columns
- Omits unnecessary columns (age, department_id, hire_date)
- More efficient than SELECT *

KEY LEARNING POINT:
Always specify exact columns needed - reduces data transfer and improves performance

---

--- SOLUTION Q3: Get all departments ---
SELECT * FROM Department;

OUTPUT:
dept_id | name
--------|----------
1       | IT
2       | HR
3       | Finance
4       | Marketing

EXPLANATION:
- Shows all 4 departments in the company
- Simple SELECT to retrieve all department records
- Department table is relatively small with just 4 records

KEY LEARNING POINT:
Master table lookups help understand data relationships

---

--- SOLUTION Q4: Get employee names and their ages ---
SELECT name, age FROM Employee;

OUTPUT:
name        | age
------------|----
John Doe    | 28
Jane Smith  | 34
Bob Brown   | 45
Alice Blue  | 25
Charlie P.  | 29
David Green | 38
Eve Black   | 40

EXPLANATION:
- Selects only name and age columns
- Shows age distribution of employees
- 7 employees total with ages ranging from 25 to 45

KEY LEARNING POINT:
Using specific columns makes output focused and meaningful

---

--- SOLUTION Q5: Get all projects with their budgets ---
SELECT * FROM Project;

OUTPUT:
project_id | name              | department_id | budget
-----------|-------------------|---------------|----------
1          | Project Alpha     | 1             | 100000.00
2          | Project Beta      | 2             | 80000.00
3          | Project Gamma     | 1             | 120000.00
4          | Project Delta     | 3             | 90000.00
5          | Project Epsilon   | 4             | 110000.00
6          | Project Zeta      | 4             | 95000.00
7          | Project Eta       | 3             | 85000.00

EXPLANATION:
- Shows all 7 projects with their assigned departments and budgets
- Total project budget: $775,000
- Projects are distributed across all 4 departments

KEY LEARNING POINT:
Data is interconnected - projects belong to specific departments

================================================================================
SECTION 2: WHERE CLAUSE - SOLUTIONS (10 QUERIES)
================================================================================

--- SOLUTION Q6: Find employees older than 30 ---
SELECT * FROM Employee WHERE age > 30;

OUTPUT:
emp_id | name        | age | salary   | department_id | hire_date
-------|-------------|-----|----------|---------------|----------
2      | Jane Smith  | 34  | 60000.00 | 2             | 2019-07-23
3      | Bob Brown   | 45  | 80000.00 | 1             | 2018-02-12
6      | David Green | 38  | 70000.00 | 4             | 2022-05-18
7      | Eve Black   | 40  | 55000.00 | 3             | 2021-08-30

RESULTS: 4 employees are older than 30
EXPLANATION:
- WHERE clause filters records based on age > 30
- Bob Brown is the oldest at 45 years
- Jane Smith is the youngest in this filtered set at 34 years

---

--- SOLUTION Q7: Find employees with salary greater than 50000 ---
SELECT * FROM Employee WHERE salary > 50000;

OUTPUT:
emp_id | name        | age | salary   | department_id | hire_date
-------|-------------|-----|----------|---------------|----------
2      | Jane Smith  | 34  | 60000.00 | 2             | 2019-07-23
3      | Bob Brown   | 45  | 80000.00 | 1             | 2018-02-12
6      | David Green | 38  | 70000.00 | 4             | 2022-05-18
7      | Eve Black   | 40  | 55000.00 | 3             | 2021-08-30

RESULTS: 4 employees earn more than 50,000
EXPLANATION:
- Filters employees with salary > 50000
- Bob Brown has highest salary: 80,000
- Jane Smith: 60,000, David Green: 70,000, Eve Black: 55,000

---

--- SOLUTION Q8: Find employees in department 1 ---
SELECT * FROM Employee WHERE department_id = 1;

OUTPUT:
emp_id | name      | age | salary   | department_id | hire_date
-------|-----------|-----|----------|---------------|----------
1      | John Doe  | 28  | 50000.00 | 1             | 2020-01-15
3      | Bob Brown | 45  | 80000.00 | 1             | 2018-02-12

RESULTS: 2 employees in IT department
EXPLANATION:
- Department_id = 1 is the IT department
- John Doe (entry-level) and Bob Brown (senior) are IT employees
- Both are in same department but different salary levels

---

--- SOLUTION Q9: Find employees with salary exactly 50000 ---
SELECT * FROM Employee WHERE salary = 50000;

OUTPUT:
emp_id | name       | age | salary   | department_id | hire_date
-------|------------|-----|----------|---------------|----------
1      | John Doe   | 28  | 50000.00 | 1             | 2020-01-15
5      | Charlie P. | 29  | 50000.00 | 2             | 2019-12-01

RESULTS: 2 employees with exactly 50,000 salary
EXPLANATION:
- Exact match using = operator
- Both employees have identical salaries but work in different departments
- John Doe in IT, Charlie P. in HR

---

--- SOLUTION Q10: Find employees NOT in department 2 ---
SELECT * FROM Employee WHERE department_id <> 2;

OUTPUT:
emp_id | name        | age | salary   | department_id | hire_date
-------|-------------|-----|----------|---------------|----------
1      | John Doe    | 28  | 50000.00 | 1             | 2020-01-15
3      | Bob Brown   | 45  | 80000.00 | 1             | 2018-02-12
4      | Alice Blue  | 25  | 45000.00 | 3             | 2021-03-22
6      | David Green | 38  | 70000.00 | 4             | 2022-05-18
7      | Eve Black   | 40  | 55000.00 | 3             | 2021-08-30

RESULTS: 5 employees not in HR department (dept_id 2)
EXPLANATION:
- <> means "not equal to"
- Excludes Charlie P. and Jane Smith who are in HR
- Returns employees in IT (1), Finance (3), and Marketing (4)

---

--- SOLUTION Q11: Find employees younger than 30 ---
SELECT * FROM Employee WHERE age < 30;

OUTPUT:
emp_id | name       | age | salary   | department_id | hire_date
-------|------------|-----|----------|---------------|----------
1      | John Doe   | 28  | 50000.00 | 1             | 2020-01-15
4      | Alice Blue | 25  | 45000.00 | 3             | 2021-03-22
5      | Charlie P. | 29  | 50000.00 | 2             | 2019-12-01

RESULTS: 3 employees younger than 30
EXPLANATION:
- Age < 30 filters junior employees
- Alice Blue is youngest at 25 years
- These are typically newer employees (younger join dates)

---

--- SOLUTION Q12: Find employees hired after 2020 ---
SELECT * FROM Employee WHERE hire_date > '2020-01-01';

OUTPUT:
emp_id | name       | age | salary   | department_id | hire_date
-------|------------|-----|----------|---------------|----------
4      | Alice Blue | 25  | 45000.00 | 3             | 2021-03-22
6      | David Green| 38  | 70000.00 | 4             | 2022-05-18
7      | Eve Black  | 40  | 55000.00 | 3             | 2021-08-30

RESULTS: 3 recent hires (after 2020-01-01)
EXPLANATION:
- Date comparison using > operator
- All 3 were hired in 2021 or 2022
- These are newer team members

---

--- SOLUTION Q13: Find employees hired before 2019 ---
SELECT * FROM Employee WHERE hire_date < '2019-01-01';

OUTPUT:
emp_id | name      | age | salary   | department_id | hire_date
-------|-----------|-----|----------|---------------|----------
3      | Bob Brown | 45  | 80000.00 | 1             | 2018-02-12

RESULTS: 1 long-time employee
EXPLANATION:
- Only Bob Brown was hired before 2019
- He's been with company since 2018 (8+ years)
- Most senior employee by tenure
- Also highest salary: 80,000

---

--- SOLUTION Q14: Find employees with salary between 50000 and 70000 ---
SELECT * FROM Employee WHERE salary BETWEEN 50000 AND 70000;

OUTPUT:
emp_id | name        | age | salary   | department_id | hire_date
-------|-------------|-----|----------|---------------|----------
2      | Jane Smith  | 34  | 60000.00 | 2             | 2019-07-23
6      | David Green | 38  | 70000.00 | 4             | 2022-05-18
7      | Eve Black   | 40  | 55000.00 | 3             | 2021-08-30

RESULTS: 3 employees in salary range
EXPLANATION:
- BETWEEN includes both boundaries (50000 and 70000)
- Range queries useful for salary bands, age groups, etc.
- All 3 are mid-level employees

KEY LEARNING POINT:
BETWEEN is inclusive of start and end values

---

--- SOLUTION Q15: Find employees in specific departments (1 or 3) ---
SELECT * FROM Employee WHERE department_id IN (1, 3);

OUTPUT:
emp_id | name       | age | salary   | department_id | hire_date
-------|------------|-----|----------|---------------|----------
1      | John Doe   | 28  | 50000.00 | 1             | 2020-01-15
3      | Bob Brown  | 45  | 80000.00 | 1             | 2018-02-12
4      | Alice Blue | 25  | 45000.00 | 3             | 2021-03-22
7      | Eve Black  | 40  | 55000.00 | 3             | 2021-08-30

RESULTS: 4 employees in IT or Finance departments
EXPLANATION:
- IN operator checks if value is in list
- Department 1 (IT): John Doe, Bob Brown
- Department 3 (Finance): Alice Blue, Eve Black
- Excludes HR (2) and Marketing (4)

KEY LEARNING POINT:
IN operator replaces multiple OR conditions and is more readable

================================================================================
SECTION 3: LIKE OPERATOR - SOLUTIONS (10 QUERIES)
================================================================================

--- SOLUTION Q16: Names starting with 'J' ---
SELECT * FROM Employee WHERE name LIKE 'J%';

OUTPUT:
emp_id | name       | age | salary   | department_id | hire_date
-------|------------|-----|----------|---------------|----------
1      | John Doe   | 28  | 50000.00 | 1             | 2020-01-15
2      | Jane Smith | 34  | 60000.00 | 2             | 2019-07-23

RESULTS: 2 employees with names starting with 'J'
EXPLANATION:
- LIKE 'J%' matches names beginning with J
- % wildcard means "any characters after J"
- Matches: John, Jane
- Does not match: Bob, Alice, Charlie, David, Eve

KEY LEARNING POINT:
% wildcard matches zero or more characters

---

--- SOLUTION Q17: Names ending with 'e' ---
SELECT * FROM Employee WHERE name LIKE '%e';

OUTPUT:
emp_id | name      | age | salary   | department_id | hire_date
-------|-----------|-----|----------|---------------|----------
3      | Bob Brown | 45  | 80000.00 | 1             | 2018-02-12
7      | Eve Black | 40  | 55000.00 | 3             | 2021-08-30

RESULTS: 2 employees with names ending in 'e'
EXPLANATION:
- LIKE '%e' matches names ending with letter e
- % before e matches any characters at start
- Matches: (Bob) Brow[n]e, Ev[e] - Wait, actually:
  - First word of Bob Brown: "Brown" ends in 'n' (no match)
  - "Eve" ends in 'e' but LIKE applies to full name 'Eve Black' ending in 'k'
  - Actually checking more carefully: "Jane Smith" ends in 'h', not 'e'
  
Let me recalculate:
Employees and last character of name:
- John Doe - ends in 'e' ✓
- Jane Smith - ends in 'h' ✗
- Bob Brown - ends in 'n' ✗
- Alice Blue - ends in 'e' ✓
- Charlie P. - ends in '.' ✗
- David Green - ends in 'n' ✗
- Eve Black - ends in 'k' ✗

CORRECTED OUTPUT:
emp_id | name      | age | salary   | department_id | hire_date
-------|-----------|-----|----------|---------------|----------
1      | John Doe  | 28  | 50000.00 | 1             | 2020-01-15
4      | Alice Blue| 25  | 45000.00 | 3             | 2021-03-22

RESULTS: 2 employees with names ending in 'e'
EXPLANATION:
- John Doe, Alice Blue both end with letter 'e'

---

--- SOLUTION Q18: Names containing 'a' ---
SELECT * FROM Employee WHERE name LIKE '%a%';

OUTPUT:
emp_id | name        | age | salary   | department_id | hire_date
-------|-------------|-----|----------|---------------|----------
2      | Jane Smith  | 34  | 60000.00 | 2             | 2019-07-23
4      | Alice Blue  | 25  | 45000.00 | 3             | 2021-03-22
5      | Charlie P.  | 29  | 50000.00 | 2             | 2019-12-01
6      | David Green | 38  | 70000.00 | 4             | 2022-05-18

RESULTS: 4 employees with letter 'a' in their name
EXPLANATION:
- LIKE '%a%' matches any name containing letter 'a' anywhere
- Jane Smith - contains 'a'
- Alice Blue - contains 'a'
- Charlie P. - contains 'a'
- David Green - contains 'a'
- Does not match: John, Bob, Eve (no 'a' in their names)

KEY LEARNING POINT:
Wildcards on both sides match pattern anywhere in string

---

--- SOLUTION Q19: Names containing 'o' ---
SELECT * FROM Employee WHERE name LIKE '%o%';

OUTPUT:
emp_id | name       | age | salary   | department_id | hire_date
-------|------------|-----|----------|---------------|----------
1      | John Doe   | 28  | 50000.00 | 1             | 2020-01-15
3      | Bob Brown  | 45  | 80000.00 | 1             | 2018-02-12
6      | David Green| 38  | 70000.00 | 4             | 2022-05-18

RESULTS: 3 employees with letter 'o' in their name
EXPLANATION:
- John (Jo), Bob (Bob), David (no o) - Wait, David doesn't have 'o'
- Actually: David Green doesn't contain 'o'

Let me recheck:
- John Doe - contains 'o' ✓
- Jane Smith - no 'o' ✗
- Bob Brown - contains 'o' ✓
- Alice Blue - no 'o' ✗
- Charlie P. - no 'o' ✗
- David Green - no 'o' ✗
- Eve Black - no 'o' ✗

CORRECTED OUTPUT:
emp_id | name      | age | salary   | department_id | hire_date
-------|-----------|-----|----------|---------------|----------
1      | John Doe  | 28  | 50000.00 | 1             | 2020-01-15
3      | Bob Brown | 45  | 80000.00 | 1             | 2018-02-12

RESULTS: 2 employees with letter 'o' in their name

---

--- SOLUTION Q20: Second character is 'o' ---
SELECT * FROM Employee WHERE name LIKE '_o%';

OUTPUT:
emp_id | name      | age | salary   | department_id | hire_date
-------|-----------|-----|----------|---------------|----------
3      | Bob Brown | 45  | 80000.00 | 1             | 2018-02-12
6      | David Green| 38 | 70000.00 | 4             | 2022-05-18

EXPLANATION:
- _ (single underscore) matches exactly one character
- _o% means: [any char][o][any chars]
- Bob: B[o] ✓, David: D[a] ✗
- Wait: David is D-a-v, second char is 'a' not 'o'
- Actually, let me check all names:
  - John: J[o] ✓
  - Jane: J[a] ✗
  - Bob: B[o] ✓
  - Alice: A[l] ✗
  - Charlie: C[h] ✗
  - David: D[a] ✗
  - Eve: E[v] ✗

CORRECTED OUTPUT:
emp_id | name      | age | salary   | department_id | hire_date
-------|-----------|-----|----------|---------------|----------
1      | John Doe  | 28  | 50000.00 | 1             | 2020-01-15
3      | Bob Brown | 45  | 80000.00 | 1             | 2018-02-12

RESULTS: 2 employees with second character 'o'
KEY LEARNING POINT:
_ wildcard matches exactly one character (not zero, not multiple)

---

--- SOLUTION Q21: Names with 'B' at start and 'n' at end ---
SELECT * FROM Employee WHERE name LIKE 'B%n';

OUTPUT:
emp_id | name      | age | salary   | department_id | hire_date
-------|-----------|-----|----------|---------------|----------
3      | Bob Brown | 45  | 80000.00 | 1             | 2018-02-12

RESULTS: 1 employee matches pattern 'B%n'
EXPLANATION:
- Bob Brown: Starts with 'B' and ends with 'n' ✓
- Only Bob Brown matches this specific pattern

---

--- SOLUTION Q22: Names NOT starting with 'J' ---
SELECT * FROM Employee WHERE name NOT LIKE 'J%';

OUTPUT:
emp_id | name        | age | salary   | department_id | hire_date
-------|-------------|-----|----------|---------------|----------
3      | Bob Brown   | 45  | 80000.00 | 1             | 2018-02-12
4      | Alice Blue  | 25  | 45000.00 | 3             | 2021-03-22
5      | Charlie P.  | 29  | 50000.00 | 2             | 2019-12-01
6      | David Green | 38  | 70000.00 | 4             | 2022-05-18
7      | Eve Black   | 40  | 55000.00 | 3             | 2021-08-30

RESULTS: 5 employees whose names do NOT start with 'J'
EXPLANATION:
- Excludes John Doe and Jane Smith
- NOT keyword reverses the LIKE condition

KEY LEARNING POINT:
NOT LIKE reverses pattern matching

---

--- SOLUTION Q23: Names with exactly 4 characters ---
SELECT * FROM Employee WHERE name LIKE '____';

OUTPUT:
(No results)

EXPLANATION:
- ____ (four underscores) matches exactly 4 characters
- All employee names in our data are longer than 4 characters
- John (4), Jane (4), Bob (3), Alice (5), Charlie (7), David (5), Eve (3)
- Actually John and Jane are exactly 4 characters!

CORRECTED OUTPUT:
emp_id | name | age | salary   | department_id | hire_date
-------|------|-----|----------|---------------|----------
1      | John | 28  | 50000.00 | 1             | 2020-01-15
2      | Jane | 34  | 60000.00 | 2             | 2019-07-23

Wait, the names in our data include full names: "John Doe", "Jane Smith" (with last names)
So:
- "John Doe" has 8 characters (including space)
- "Jane Smith" has 10 characters
- All full names are > 4 characters

RESULTS: 0 employees - no full names match exactly 4 characters

---

--- SOLUTION Q24: Names starting with 'D' ---
SELECT * FROM Employee WHERE name LIKE 'D%';

OUTPUT:
emp_id | name        | age | salary   | department_id | hire_date
-------|-------------|-----|----------|---------------|----------
6      | David Green | 38  | 70000.00 | 4             | 2022-05-18

RESULTS: 1 employee with name starting with 'D'
EXPLANATION:
- Only David Green starts with 'D'

---

--- SOLUTION Q25: Names ending with 'e' or 'n' ---
SELECT * FROM Employee WHERE name LIKE '%e' OR name LIKE '%n';

OUTPUT:
emp_id | name        | age | salary   | department_id | hire_date
-------|-------------|-----|----------|---------------|----------
1      | John Doe    | 28  | 50000.00 | 1             | 2020-01-15
3      | Bob Brown   | 45  | 80000.00 | 1             | 2018-02-12
4      | Alice Blue  | 25  | 45000.00 | 3             | 2021-03-22
5      | Charlie P.  | 29  | 50000.00 | 2             | 2019-12-01

EXPLANATION:
- Names ending in 'e': John Doe (ends 'e'), Alice Blue (ends 'e')
- Names ending in 'n': Bob Brown (ends 'n'), Charlie P. (no), actually...
- Let me check last character:
  - John Doe: 'e' ✓
  - Jane Smith: 'h' ✗
  - Bob Brown: 'n' ✓
  - Alice Blue: 'e' ✓
  - Charlie P.: '.' ✗
  - David Green: 'n' ✓
  - Eve Black: 'k' ✗

CORRECTED OUTPUT:
emp_id | name        | age | salary   | department_id | hire_date
-------|-------------|-----|----------|---------------|----------
1      | John Doe    | 28  | 50000.00 | 1             | 2020-01-15
3      | Bob Brown   | 45  | 80000.00 | 1             | 2018-02-12
4      | Alice Blue  | 25  | 45000.00 | 3             | 2021-03-22
6      | David Green | 38  | 70000.00 | 4             | 2022-05-18

RESULTS: 4 employees whose names end in 'e' or 'n'

================================================================================
SECTION 4: COMBINED CONDITIONS - SOLUTIONS (7 QUERIES)
================================================================================

--- SOLUTION Q26: Age > 30 AND salary > 60000 ---
SELECT * FROM Employee WHERE age > 30 AND salary > 60000;

OUTPUT:
emp_id | name        | age | salary   | department_id | hire_date
-------|-------------|-----|----------|---------------|----------
3      | Bob Brown   | 45  | 80000.00 | 1             | 2018-02-12
6      | David Green | 38  | 70000.00 | 4             | 2022-05-18

RESULTS: 2 employees older than 30 AND earning more than 60,000
EXPLANATION:
- Both conditions must be TRUE
- Bob Brown: age 45 > 30 ✓ AND salary 80000 > 60000 ✓
- David Green: age 38 > 30 ✓ AND salary 70000 > 60000 ✓
- Jane Smith (age 34 > 30 ✓ but salary 60000 NOT > 60000 ✗)

---

--- SOLUTION Q27: Department 1 OR Department 2 ---
SELECT * FROM Employee WHERE department_id = 1 OR department_id = 2;

OUTPUT:
emp_id | name       | age | salary   | department_id | hire_date
-------|------------|-----|----------|---------------|----------
1      | John Doe   | 28  | 50000.00 | 1             | 2020-01-15
2      | Jane Smith | 34  | 60000.00 | 2             | 2019-07-23
3      | Bob Brown  | 45  | 80000.00 | 1             | 2018-02-12
5      | Charlie P. | 29  | 50000.00 | 2             | 2019-12-01

RESULTS: 4 employees in IT or HR departments
EXPLANATION:
- At least one condition must be TRUE
- Department 1 (IT): John Doe, Bob Brown
- Department 2 (HR): Jane Smith, Charlie P.

KEY LEARNING POINT:
OR returns rows where ANY condition is true

---

--- SOLUTION Q28: Age > 25 AND department_id = 3 ---
SELECT * FROM Employee WHERE age > 25 AND department_id = 3;

OUTPUT:
emp_id | name      | age | salary   | department_id | hire_date
-------|-----------|-----|----------|---------------|----------
7      | Eve Black | 40  | 55000.00 | 3             | 2021-08-30

RESULTS: 1 employee in Finance department and older than 25
EXPLANATION:
- Alice Blue is in Finance (dept 3) but age 25 NOT > 25
- Eve Black is in Finance (dept 3) AND age 40 > 25 ✓

---

--- SOLUTION Q29: Name starts with 'J' AND salary > 50000 ---
SELECT * FROM Employee WHERE name LIKE 'J%' AND salary > 50000;

OUTPUT:
emp_id | name       | age | salary   | department_id | hire_date
-------|------------|-----|----------|---------------|----------
2      | Jane Smith | 34  | 60000.00 | 2             | 2019-07-23

RESULTS: 1 employee
EXPLANATION:
- John Doe: name LIKE 'J%' ✓ BUT salary 50000 NOT > 50000 ✗
- Jane Smith: name LIKE 'J%' ✓ AND salary 60000 > 50000 ✓

---

--- SOLUTION Q30: Age between 30 and 40 AND department = 1 ---
SELECT * FROM Employee WHERE age BETWEEN 30 AND 40 AND department_id = 1;

OUTPUT:
emp_id | name      | age | salary   | department_id | hire_date
-------|-----------|-----|----------|---------------|----------
3      | Bob Brown | 45  | 80000.00 | 1             | 2018-02-12

Wait, Bob Brown is 45, not between 30-40. Let me recalculate:

Employees aged 30-40:
- Jane Smith: 34 (dept 2) ✗
- Bob Brown: 45 (dept 1) - 45 NOT BETWEEN 30-40 ✗
- David Green: 38 (dept 4) ✗

Actually, no employees match BOTH conditions:
- Need: age BETWEEN 30 AND 40 AND department_id = 1
- Bob Brown is in dept 1 but age 45 > 40
- John Doe is in dept 1 but age 28 < 30

CORRECTED OUTPUT:
(No results)

EXPLANATION:
- No employee in department 1 has age between 30-40

---

--- SOLUTION Q31: Salary > 60000 OR age < 30 ---
SELECT * FROM Employee WHERE salary > 60000 OR age < 30;

OUTPUT:
emp_id | name       | age | salary   | department_id | hire_date
-------|------------|-----|----------|---------------|----------
1      | John Doe   | 28  | 50000.00 | 1             | 2020-01-15
3      | Bob Brown  | 45  | 80000.00 | 1             | 2018-02-12
4      | Alice Blue | 25  | 45000.00 | 3             | 2021-03-22
5      | Charlie P. | 29  | 50000.00 | 2             | 2019-12-01
6      | David Green| 38  | 70000.00 | 4             | 2022-05-18

RESULTS: 5 employees
EXPLANATION:
- Salary > 60000: Bob Brown (80k), David Green (70k)
- Age < 30: John Doe (28), Alice Blue (25), Charlie P. (29)

---

--- SOLUTION Q32: (Department = 1 OR Department = 4) AND salary > 50000 ---
SELECT * FROM Employee WHERE (department_id = 1 OR department_id = 4) AND salary > 50000;

OUTPUT:
emp_id | name        | age | salary   | department_id | hire_date
-------|-------------|-----|----------|---------------|----------
3      | Bob Brown   | 45  | 80000.00 | 1             | 2018-02-12
6      | David Green | 38  | 70000.00 | 4             | 2022-05-18

RESULTS: 2 employees
EXPLANATION:
- First condition: department in (1, 4) 
- Second condition: salary > 50000
- Both must be true
- John Doe: dept 1 ✓ but salary 50000 NOT > 50000 ✗
- Bob Brown: dept 1 ✓ AND salary 80000 > 50000 ✓
- David Green: dept 4 ✓ AND salary 70000 > 50000 ✓

KEY LEARNING POINT:
Parentheses enforce operator precedence - AND has higher precedence than OR

================================================================================
MAY 5, 2026 - SUMMARY OF KEY CONCEPTS
================================================================================

1. SELECT CLAUSE:
   - SELECT * retrieves all columns
   - SELECT col1, col2 retrieves specific columns
   - Always specify exact columns for better performance

2. WHERE CLAUSE OPERATORS:
   - = (equal to)
   - <> or != (not equal to)
   - > (greater than)
   - < (less than)
   - >= (greater than or equal)
   - <= (less than or equal)
   - BETWEEN (inclusive range)
   - IN (multiple values)

3. STRING MATCHING (LIKE):
   - % matches zero or more characters
   - _ matches exactly one character
   - LIKE 'J%' - starts with J
   - LIKE '%e' - ends with e
   - LIKE '%a%' - contains a anywhere
   - LIKE '_o%' - second character is o
   - NOT LIKE reverses the condition

4. LOGICAL OPERATORS:
   - AND: All conditions must be TRUE
   - OR: At least one condition must be TRUE
   - NOT: Reverses/negates a condition
   - Use parentheses to control precedence

5. BEST PRACTICES:
   - Use specific column names instead of *
   - Use meaningful column aliases
   - Add comments to complex queries
   - Test with LIMIT before large operations
   - Use WHERE to filter early (improves performance)

================================================================================
END OF DAY 1 (MAY 5, 2026) SOLUTIONS
================================================================================
