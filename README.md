# Task 5 – Aggregate Functions & GROUP BY (SQL)

## Task Overview

This task focuses on understanding and implementing SQL **Aggregate Functions**
and the **GROUP BY** clause to perform statistical analysis on structured data.

The task is part of an internship learning program and helps build real-world
database querying skills required for backend development, data analysis, and interviews.

---

## Objective

- Learn how aggregate functions work in SQL
- Understand grouping of data using GROUP BY
- Apply HAVING to filter grouped results
- Analyze real-world datasets statistically

---

## 🛠 Tools Used

- MySQL Workbench (Primary Tool)
- Alternative tools:
  - PostgreSQL
  - BigQuery Sandbox

No paid tools were used.

---

## 🗄 Database Details

### Database Name

`task5`

### Table Name

`students`

### Table Structure

| Column Name || Data Type || Description |

| id |         | INT |      | Primary Key |
| name |       | VARCHAR |  | Student Name |
| age |        | INT |      | Student Age |
| email |      | VARCHAR |  | Email Address |
| department | | VARCHAR |  | Department Name |
| marks |      | INT |      | Student Marks |

## 📥 Data Insertion

Sample student records were inserted to simulate real-world academic data.
NULL values were intentionally included to understand how aggregates behave.

## Concepts Covered

### Aggregate Functions

- `COUNT()` – Counts rows
- `SUM()` – Adds values
- `AVG()` – Finds average
- `MIN()` – Finds minimum
- `MAX()` – Finds maximum

### GROUP BY

Used to group rows that have the same values in specified columns.

Example:

- Students grouped by age

- Students grouped by department

---

### HAVING Clause

Used to filter aggregated/grouped data.

Example:

- Departments with more than 2 students

- Departments with average marks greater than 80

---

### WHERE vs HAVING

     | WHERE |                  | HAVING |

| Filters rows |             | Filters groups |
| Executed before GROUP BY | | Executed after GROUP BY |
| Cannot use aggregates |    | Can use aggregates |

---

### NULL Handling

- `COUNT(*)` counts all rows
- `COUNT(column)` ignores NULL values
- Other aggregates ignore NULL automatically

---

## Real-World Use Cases

- Department-wise employee count
- Monthly sales analysis
- Average marks per class
- Customer-wise order totals
- Product category analysis

## Repository Structure

Task5-Aggregate-Functions/
│
├── task5.sql
├── README.md

## Final Outcome

By completing this task, the intern is able to:

- Perform statistical analysis using SQL
- Write optimized aggregate queries
- Understand SQL execution order
- Answer interview questions confidently

## Interview Questions Covered

- Difference between WHERE and HAVING
- Can aggregates be used without GROUP BY?
- How COUNT handles NULL values?
- Why HAVING exists?
- Real-world use of GROUP BY

## Conclusion

This task builds a strong foundation in SQL data analysis, which is essential
for backend development, data science, and database-driven applications.
