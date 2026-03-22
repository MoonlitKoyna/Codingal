-- Create Employee Table

CREATE TABLE IF NOT EXISTS Employees (
    id INTEGER,
    name TEXT,
    company TEXT,
    department TEXT,
    salary REAL
);

-- Insert Data into Employees Table

INSERT INTO Employees (id, name, company, department, salary)
VALUES
(1, 'Tarun', 'DXC', 'IT', 50000),
(2, 'Aman', 'DXC', 'HR', 40000),
(3, 'Rohit', 'DXC', 'Finance', 45000),
(4, 'Ankit', 'TCS', 'IT', 42000),
(5, 'Karan', 'DXC', 'IT', 47000),
(6, 'Sonia', 'DXC', 'Finance', 38000);

-- Display All Records

SELECT *
FROM Employees;

-- Employees working in DXC

SELECT *
FROM Employees
WHERE company = 'DXC';

-- Employees in DXC and IT Department

SELECT *
FROM Employees
WHERE company = 'DXC'
AND department = 'IT';

-- Employees with salary greater than 45000

SELECT *
FROM Employees
WHERE salary > 45000;

-- Employees whose name starts with 'A'

SELECT *
FROM Employees
WHERE name LIKE 'A%';

-- Employees whose name contains 'ar'

SELECT *
FROM Employees
WHERE name LIKE '%ar%';