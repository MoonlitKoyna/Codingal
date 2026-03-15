--Create Customer Table

CREATE TABLE IF NOT EXISTS Customers (
    name TEXT,
    product TEXT,
    country TEXT
);

--Insert Data into Customers Table

INSERT INTO Customers (name, product, country)
VALUES
('Aman', 'Laptop', 'USA'),
('Arjun', 'Mobile', 'Germany'),
('Rohan', 'Headphones', 'Canada'),
('Ankita', 'Camera', 'Australia'),
('Karan', 'Tablet', 'Japan'),
('Aarav', 'Smart Watch', 'UK');

--1) Customers whose name starts with "A"

SELECT *
FROM Customers
WHERE name LIKE 'A%';

--2) Customers whose name contains "or"

SELECT *
FROM Customers
WHERE name LIKE '%or%';

--3) Show customer name, product, and export country

SELECT name, product, country
FROM Customers;

--4) Customers whose name starts with "A" OR contains "or"

SELECT *
FROM Customers
WHERE name LIKE 'A%'
OR name LIKE '%or%';