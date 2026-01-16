# SQL Practice Project

A simple SQL project demonstrating basic queries for analyzing employee and project data.

## Table of Contents

- [About](https://github.com/ericjoye/select-statement-sql?tab=readme-ov-file#about)
- [Database Schema](https://github.com/ericjoye/select-statement-sql?tab=readme-ov-file#database-schema)
- [Files](https://github.com/ericjoye/select-statement-sql?tab=readme-ov-file#files)
- [Skills Demonstrated](https://github.com/ericjoye/select-statement-sql?tab=readme-ov-file#skills-demonstrated)
- [Sample Queries](https://github.com/ericjoye/select-statement-sql?tab=readme-ov-file#sample-queries)
- [Sample Output](https://github.com/ericjoye/select-statement-sql?tab=readme-ov-file#sample-output)
- [How to Use](https://github.com/ericjoye/select-statement-sql?tab=readme-ov-file#how-to-use)
- [Tools Used](https://github.com/ericjoye/select-statement-sql?tab=readme-ov-file#tools-used)

## About

This project contains sample database tables and SQL queries I created to practice and demonstrate basic SQL skills. The database includes employees, departments, and projects with relationships between them.

## Database Schema

- **departments** - Company departments and their locations
- **employees** - Employee information including salary and hire date
- **projects** - Company projects with status and dates
- **employee_projects** - Links employees to their assigned projects

## Files

- `create_tables.sql` - Creates the database tables
- `insert_data.sql` - Adds sample data to the tables
- `portfolio_select_examples.sql` - Example queries demonstrating different SQL techniques

## Skills Demonstrated

- Basic SELECT queries with filtering and sorting
- JOIN operations to combine data from multiple tables
- Aggregate functions (COUNT, AVG, MAX, MIN)
- GROUP BY and HAVING clauses
- Subqueries
- CASE statements for conditional logic
- Common Table Expressions (CTEs)

## Sample Queries

The project includes 7 different queries:

1. Find all Sales employees making over $50,000
2. List employees with their department names (using JOIN)
3. Count employees and calculate average salary by department
4. Find employees earning above company average (using subquery)
5. Show employees assigned to active projects
6. Categorize employees by salary level (using CASE)
7. Compare employee salaries to their department average (using CTE)

## Sample Output

**Query 1: Find all Sales employees making over $50,000**

| employee_id | first_name | last_name | email                    | salary |
|-------------|------------|-----------|--------------------------|--------|
| 102         | Sarah      | Johnson   | sarah.j@company.com      | 62000  |
| 111         | Robert     | Taylor    | robert.t@company.com     | 58000  |
| 101         | John       | Smith     | john.smith@company.com   | 55000  |

**Query 2: List employees with their department names**

| employee_id | first_name | last_name | department_name | hire_date  |
|-------------|------------|-----------|----------------|------------|
| 103         | Mike       | Williams  | Marketing      | 2023-01-10 |
| 104         | Emily      | Brown     | Marketing      | 2022-11-05 |
| 108         | Anna       | Davis     | HR             | 2023-02-14 |

**Query 3: Count employees and average salary by department**

| department_id | employee_count | avg_salary | max_salary | min_salary |
|---------------|----------------|------------|------------|------------|
| 3             | 3              | 75000      | 82000      | 68000      |
| 5             | 2              | 70000      | 71000      | 69000      |
| 1             | 3              | 58333      | 62000      | 55000      |

**Query 4: Find employees earning above company average**

| employee_id | first_name | last_name | salary |
|-------------|------------|-----------|--------|
| 106         | Lisa       | Garcia    | 82000  |
| 105         | David      | Jones     | 75000  |
| 109         | James      | Miller    | 71000  |
| 110         | Maria      | Wilson    | 69000  |
| 107         | Tom        | Martinez  | 68000  |

**Query 5: Show employees assigned to active projects**

| first_name | last_name | department_name | project_name              | project_duration_days |
|------------|-----------|----------------|---------------------------|-----------------------|
| Tom        | Martinez  | IT             | Mobile App Launch         | 305                   |
| Lisa       | Garcia    | IT             | Customer Database Upgrade | 128                   |
| Mike       | Williams  | Marketing      | Marketing Campaign Q3     | 91                    |

**Query 6: Categorize employees by salary level**

| employee_id | first_name | last_name | salary | salary_grade   |
|-------------|------------|-----------|--------|----------------|
| 108         | Anna       | Davis     | 45000  | Mid Level      |
| 103         | Mike       | Williams  | 48000  | Mid Level      |
| 104         | Emily      | Brown     | 51000  | Mid Level      |
| 112         | Jennifer   | Anderson  | 53000  | Mid Level      |
| 101         | John       | Smith     | 55000  | Mid Level      |

**Query 7: Compare employee salaries to their department average**

| first_name | last_name | salary | department_name | avg_dept_salary | pct_of_avg |
|------------|-----------|--------|----------------|-----------------|------------|
| Sarah      | Johnson   | 62000  | Sales          | 58333.33       | 106.29     |
| Robert     | Taylor    | 58000  | Sales          | 58333.33       | 99.43      |
| Lisa       | Garcia    | 82000  | IT             | 75000.00       | 109.33     |
| David      | Jones     | 75000  | IT             | 75000.00       | 100.00     |

## How to Use

1. Run `create_tables.sql` to create the tables
2. Run `insert_data.sql` to populate the tables with sample data
3. Try the queries in `portfolio_select_examples.sql` to see the results

## Tools Used

- SQL (works with MySQL, PostgreSQL, or similar databases)

---

This is a learning project created to practice SQL fundamentals.
