-- Insert sample data into tables

-- Insert departments
INSERT INTO departments (department_id, department_name, location) VALUES
(1, 'Sales', 'New York'),
(2, 'Marketing', 'Chicago'),
(3, 'IT', 'San Francisco'),
(4, 'HR', 'New York'),
(5, 'Finance', 'Boston');

-- Insert employees
INSERT INTO employees (employee_id, first_name, last_name, email, department_id, salary, hire_date) VALUES
(101, 'John', 'Smith', 'john.smith@company.com', 1, 55000, '2022-03-15'),
(102, 'Sarah', 'Johnson', 'sarah.j@company.com', 1, 62000, '2021-07-22'),
(103, 'Mike', 'Williams', 'mike.w@company.com', 2, 48000, '2023-01-10'),
(104, 'Emily', 'Brown', 'emily.b@company.com', 2, 51000, '2022-11-05'),
(105, 'David', 'Jones', 'david.j@company.com', 3, 75000, '2020-05-18'),
(106, 'Lisa', 'Garcia', 'lisa.g@company.com', 3, 82000, '2019-09-30'),
(107, 'Tom', 'Martinez', 'tom.m@company.com', 3, 68000, '2021-12-01'),
(108, 'Anna', 'Davis', 'anna.d@company.com', 4, 45000, '2023-02-14'),
(109, 'James', 'Miller', 'james.m@company.com', 5, 71000, '2020-08-25'),
(110, 'Maria', 'Wilson', 'maria.w@company.com', 5, 69000, '2021-04-12'),
(111, 'Robert', 'Taylor', 'robert.t@company.com', 1, 58000, '2022-06-20'),
(112, 'Jennifer', 'Anderson', 'jennifer.a@company.com', 2, 53000, '2021-10-08');

-- Insert projects
INSERT INTO projects (project_id, project_name, start_date, end_date, status) VALUES
(201, 'Website Redesign', '2023-01-15', '2023-06-30', 'Completed'),
(202, 'Mobile App Launch', '2023-03-01', '2023-12-31', 'Active'),
(203, 'Customer Database Upgrade', '2023-05-10', '2023-09-15', 'Active'),
(204, 'Marketing Campaign Q3', '2023-07-01', '2023-09-30', 'Active'),
(205, 'HR System Migration', '2023-02-01', '2023-08-31', 'Completed');

-- Insert employee project assignments
INSERT INTO employee_projects (employee_id, project_id) VALUES
(105, 201),
(106, 201),
(107, 202),
(106, 203),
(103, 204),
(104, 204),
(108, 205),
(102, 202),
(111, 204);
