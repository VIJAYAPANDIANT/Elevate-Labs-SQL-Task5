# 📊 Elevate Labs - SQL Task 5
Welcome to SQL Task 5 of my Elevate Labs internship! This project demonstrates intermediate SQL querying techniques, focusing on aggregate functions, grouping data, and filtering grouped results.

## 🎯 Task Objective
The primary goal of this task is to:
- **Aggregate Data:** Use functions like `COUNT`, `SUM`, `AVG`, `MIN`, and `MAX` to perform statistical analysis.
- **Group Data:** Group rows that have the same values using `GROUP BY`.
- **Filter Groups:** Apply the `HAVING` clause to filter aggregated results.
- **Differentiate Filtering:** Understand the difference between `WHERE` (filters rows before grouping) and `HAVING` (filters groups).
- **Handle Nulls:** Understand how aggregate functions handle `NULL` values.

## 🛠️ Prerequisites
To successfully run the scripts in this project, ensure you have the following:
- **SQL Server:** MySQL, MariaDB, or any compatible SQL engine.
- **SQL Client:** A command-line interface (CLI) or a graphical tool like MySQL Workbench.

## 🏗️ Database Schema
The project uses a `students` table to demonstrate aggregation and grouping techniques.

**`students` Table Structure**
| Column Name | Data Type | Description |
| :--- | :--- | :--- |
| `id` | INT | Primary Key (Auto Increment) |
| `name` | VARCHAR(50) | Student Name |
| `age` | INT | Student Age |
| `email` | VARCHAR(100) | Email Address |
| `department` | VARCHAR(50) | Department Name |
| `marks` | INT | Student Marks |

## 💻 How to Use
1. Open your SQL client.
2. Load the `task5.sql` script.
3. Execute the script sequentially to:
   - Create the `task5` database.
   - Create the `students` table.
   - Insert the sample data.
   - Run the various aggregate and grouping queries.

## 🚀 Key Operations

### 1. Basic Aggregate Functions
```sql
SELECT COUNT(*) AS total_students FROM students;
SELECT SUM(marks) AS total_marks FROM students;
SELECT AVG(marks) AS average_marks FROM students;
SELECT MIN(marks) AS minimum_marks, MAX(marks) AS maximum_marks FROM students;
```

### 2. Grouping Data (GROUP BY)
```sql
SELECT department, COUNT(*) AS total_students FROM students GROUP BY department;
SELECT department, AVG(marks) AS avg_marks FROM students GROUP BY department;
```

### 3. Filtering Grouped Data (HAVING)
```sql
SELECT department, COUNT(*) AS total_students FROM students GROUP BY department HAVING COUNT(*) > 2;
SELECT department, AVG(marks) AS avg_marks FROM students GROUP BY department HAVING AVG(marks) > 80;
```

### 4. WHERE vs HAVING
```sql
-- WHERE filters rows BEFORE grouping
SELECT department, COUNT(*) AS total_students FROM students WHERE age > 18 GROUP BY department;

-- HAVING filters AFTER grouping
SELECT department, COUNT(*) AS total_students FROM students GROUP BY department HAVING COUNT(*) > 1;
```

### 5. NULL Handling
```sql
-- COUNT ignores NULL values in specific columns
SELECT COUNT(marks) AS marks_count FROM students;
```

> [!TIP]
> You can execute the different `SELECT` queries individually to observe how aggregate functions calculate values and how `GROUP BY` and `HAVING` manipulate the result set.

---
<div align="center">
  Submitted by: Vijayapandian T | Elevate Labs SQL Internship Task 5
</div>
