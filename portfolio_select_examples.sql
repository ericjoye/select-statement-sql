-- SQL Query Examples
-- Basic queries for analyzing employee and project data

-- Query 1: Find all Sales employees making over $50,000
SELECT
    employee_id,
    first_name,
    last_name,
    email,
    salary
FROM employees
WHERE department = 'Sales'
    AND salary > 50000
ORDER BY salary DESC;

-- Query 2: List employees with their department names
SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    d.department_name,
    e.hire_date
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id
WHERE e.hire_date >= '2023-01-01';

-- Query 3: Count employees and average salary by department
SELECT
    department_id,
    COUNT(*) AS employee_count,
    AVG(salary) AS avg_salary,
    MAX(salary) AS max_salary,
    MIN(salary) AS min_salary
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5
ORDER BY avg_salary DESC;

-- Query 4: Find employees earning above company average
SELECT
    employee_id,
    first_name,
    last_name,
    salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
)
ORDER BY salary DESC;

-- Query 5: Show employees assigned to active projects
SELECT
    e.first_name,
    e.last_name,
    d.department_name,
    p.project_name,
    DATEDIFF(p.end_date, p.start_date) AS project_duration_days
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id
LEFT JOIN employee_projects ep ON e.employee_id = ep.employee_id
LEFT JOIN projects p ON ep.project_id = p.project_id
WHERE p.status = 'Active';

-- Query 6: Categorize employees by salary level
SELECT
    employee_id,
    first_name,
    last_name,
    salary,
    CASE
        WHEN salary < 40000 THEN 'Entry Level'
        WHEN salary BETWEEN 40000 AND 70000 THEN 'Mid Level'
        WHEN salary BETWEEN 70001 AND 100000 THEN 'Senior Level'
        ELSE 'Executive Level'
    END AS salary_grade
FROM employees
ORDER BY salary;

-- Query 7: Compare employee salaries to their department average
WITH DepartmentStats AS (
    SELECT
        department_id,
        COUNT(*) AS emp_count,
        AVG(salary) AS avg_dept_salary
    FROM employees
    GROUP BY department_id
)
SELECT
    e.first_name,
    e.last_name,
    e.salary,
    d.department_name,
    ds.avg_dept_salary,
    ROUND((e.salary / ds.avg_dept_salary) * 100, 2) AS pct_of_avg
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id
INNER JOIN DepartmentStats ds ON e.department_id = ds.department_id
WHERE e.salary > ds.avg_dept_salary
ORDER BY pct_of_avg DESC;
