# 📊 Databricks Training Repository

**Databricks Data Engineering Training - Week-wise SQL and Data Practice**

---

## 📌 Overview

This repository contains my **structured learning journey** through the **Databricks Data Engineering Training program**. It documents:

- ✅ Daily SQL practice and exercises
- ✅ Database schema understanding
- ✅ Query optimization techniques
- ✅ Data manipulation and transformation
- ✅ Real-world data scenarios

**Goal:** Build strong data engineering fundamentals with consistent, documented practice.

---

## 📁 Repository Structure

```
databricks-training/
│
├── README.md (this file - main documentation)
│
├── week1/
│   ├── day1/
│   │   ├── README.md (day-specific learning notes)
│   │   ├── queries.sql (practice queries)
│   │   ├── solutions.sql (detailed solutions)
│   │   └── output.txt (execution results)
│   │
│   ├── day2/
│   │   ├── README.md
│   │   ├── queries.sql
│   │   ├── solutions.sql
│   │   └── output.txt
│   │
│   ├── day3/ ... day5/
│   └── (weekly assignments and projects)
│
├── week2/
│   └── (advanced SQL concepts)
│
├── week3/
│   └── (joins, aggregations, window functions)
│
└── resources/
    ├── database_schema.sql (complete schema reference)
    └── notes.md (general learning notes)
```

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| **SQL** | Query language for database manipulation |
| **DB Fiddle** | Online SQL practice environment |
| **Databricks** | Unified analytics platform |
| **MySQL 8+** | Database engine used for practice |
| **Git & GitHub** | Version control and portfolio documentation |

---

## 📚 Learning Path

### **Week 1: SQL Fundamentals**
- Day 1: Basic SELECT, WHERE, String Matching (TODAY)
- Day 2: Sorting, Aggregations, GROUP BY
- Day 3: Joins (INNER, LEFT, RIGHT)
- Day 4: Subqueries and Correlated Queries
- Day 5: Review and Combined Queries

### **Week 2: Advanced SQL**
- Window Functions
- Complex Joins
- CTEs (Common Table Expressions)
- Query Optimization

### **Week 3+: Data Engineering**
- Data modeling
- ETL processes
- Performance tuning
- Real-world projects

---

## 🎯 What Each Day Contains

### **README.md** (Learning Documentation)
- Topics covered
- Key SQL concepts with examples
- Database schema explanation
- Checklist of queries executed
- Resources and references
- Observations and challenges

### **queries.sql** (Practice Problems)
- 65+ SQL queries organized by difficulty
- Schema creation and sample data
- Well-commented code
- Copy-paste ready for DB Fiddle

### **solutions.sql** (Detailed Answers)
- Complete solutions for all queries
- Explanations of query logic
- Expected results
- Performance notes
- Common mistakes to avoid

### **output.txt** (Execution Results)
- Actual query outputs
- Formatted result tables
- Query-by-query breakdown
- Summary statistics
- Key observations

---

## 📊 Progress Tracking

| Week | Topics | Status | Progress |
|------|--------|--------|----------|
| Week 1 | SELECT, WHERE, LIKE, GROUP BY, HAVING, ORDER BY, JOINs | 🚀 In Progress | Day 1 ✅ |
| Week 2 | Advanced JOINs, Window Functions, CTEs | ⏳ Upcoming | - |
| Week 3 | Data Aggregation, Optimization | ⏳ Upcoming | - |
| Week 4+ | Projects & Real-world scenarios | ⏳ Upcoming | - |

---

## 🔥 Key Learning Points

### **SQL Fundamentals**
```sql
-- SELECT: Retrieve data
SELECT * FROM Employee;

-- WHERE: Filter rows
SELECT * FROM Employee WHERE salary > 50000;

-- GROUP BY: Aggregate data
SELECT department_id, AVG(salary) 
FROM Employee 
GROUP BY department_id;

-- JOIN: Combine tables
SELECT e.name, d.name 
FROM Employee e 
JOIN Department d ON e.department_id = d.department_id;
```

### **Database Schema Used**
- **Employee Table**: emp_id, name, age, salary, department_id, hire_date
- **Department Table**: dept_id, name, manager_id
- **Project Table**: project_id, name, department_id, budget

---

## 📝 How to Use This Repository

### **For Learning:**
1. Read the day-specific **README.md**
2. Study the SQL concepts and examples
3. Review the **queries.sql** for practice problems
4. Implement queries on DB Fiddle
5. Compare your outputs with **output.txt**
6. Study **solutions.sql** for optimization tips

### **For Practice:**
1. Go to **https://www.db-fiddle.com/**
2. Copy schema from `datacreation.sql`
3. Write your own queries
4. Execute and test
5. Check against provided solutions

### **For Reference:**
- Quick lookup of SQL syntax
- Common query patterns
- Database schema details
- Performance optimization tips

---

## 📺 YouTube Resources

**Recommended Playlist:** [SQL Tutorial Playlist](https://youtube.com/playlist?list=PLrZbzHGc7iABQ60q4X5IJOYaBM-ULmrVe&si=mOOtHOinKJe1pBqu)

**Videos to Watch:**
- Video 1: SQL Basics & SELECT Statement
- Video 2: WHERE Clause & Filtering
- Video 3: Aggregate Functions
- Video 4: GROUP BY & HAVING
- Video 5: JOINs Explained

---

## 💡 Best Practices Followed

✅ **Consistent folder structure** - Week/Day organization  
✅ **Clean SQL formatting** - Proper indentation and comments  
✅ **Comprehensive documentation** - Every query explained  
✅ **Daily commits** - Regular progress updates  
✅ **Output documentation** - Results tracked and explained  
✅ **Portfolio quality** - Professional presentation  

---

## 🚀 Getting Started

### **Today (Day 1):**
1. ✅ Create GitHub account (if needed)
2. ✅ Clone/view this repository
3. ⏳ Watch YouTube videos 1-2
4. ⏳ Practice queries on DB Fiddle
5. ⏳ Document learnings in README

### **Before Submission:**
1. Ensure all files are in place
2. Verify folder structure matches template
3. Check that all 65 queries are present
4. Confirm output.txt has sample results
5. Validate README is detailed and informative

---

## 📋 Submission Checklist

- [x] Repository created: `databricks-training`
- [x] Main README written: `README.md`
- [x] Week 1 folder created
- [x] Day 1 folder created with:
  - [x] README.md (learning notes)
  - [x] queries.sql (65 queries)
  - [x] solutions.sql (solutions)
  - [x] output.txt (results)
- [ ] Watch 2 YouTube videos
- [ ] Practice 15-20 queries on DB Fiddle
- [ ] Update Day 1 README with learnings
- [ ] Submit Google Form

---

## 📧 About Me

**Name:** VANKA-NITHIN  
**Email:** 24pa5a1239@vishnu.edu.in  
**Roll Number:** 24PA5A1239  
**Program:** Databricks Data Engineering Training

---

## 🎓 Learning Philosophy

> "Consistency beats perfection. Structure beats improvisation. Documentation beats assumptions."

This repository is maintained with:
- Daily updates
- Clean code practices
- Detailed documentation
- Professional presentation
- Portfolio mindset

---

## 📞 Additional Resources

| Resource | Link |
|----------|------|
| DB Fiddle | https://www.db-fiddle.com/ |
| Databricks Docs | https://docs.databricks.com/ |
| SQL Tutorial | [YouTube Playlist](https://youtube.com/playlist?list=PLrZbzHGc7iABQ60q4X5IJOYaBM-ULmrVe) |

---

## ✨ Status: ACTIVE LEARNING

Last Updated: **2026-05-06**  
Current Focus: **Week 1 - SQL Fundamentals**  
Next Milestone: **Week 1 Day 1 Submission** ✅

---

**Remember:** This repository is your professional portfolio. Keep it clean, documented, and updated! 🚀
