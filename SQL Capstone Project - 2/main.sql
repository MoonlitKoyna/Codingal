--Create Restaurant Table

CREATE TABLE IF NOT EXISTS Restaurant (
    name TEXT,
    neighborhood TEXT,
    cuisine TEXT,
    review REAL,
    price TEXT,
    health TEXT
);

--Insert Data into Restaurant Table

INSERT INTO Restaurant (name, neighborhood, cuisine, review, price, health)
VALUES
    ('Peter', 'Brooklyn', 'Steak', 4.4, '$$$$', 'A'),
    ('Jongro', 'Midtown', 'Korean', 3.5, '$$', 'A'),
    ('Pocha', 'Midtown', 'Pizza', 4.0, '$$$', 'B'),
    ('Lighthouse', 'Queens', 'Chinese', 4.2, '$', 'B'),
    ('Minca', 'Downtown', 'American', 4.6, '$$$','A'),
    ('Marea', 'Chinatown', 'Chinese', 3.0, '$$',''),
    ('Dirty Candy', 'Uptown', 'Italian', 4.9,'$$$$', 'B'),
    ('Di Fara Pizza', 'Brooklyn', 'Pizza', 3.8, '$$', 'A'),
    ('Golden Unicorn', 'Uptown', 'Italian', 3.8, '$$', 'A');

--1) Distinct Neighborhoods

SELECT DISTINCT neighborhood
FROM Restaurant;

--2) Distinct Cuisine Types

SELECT DISTINCT cuisine
FROM Restaurant;

--3) Chinese Takeout Options

SELECT *
FROM Restaurant
WHERE cuisine = 'Chinese';

--4) Restaurants with a review of 4.0 or higher

SELECT *
FROM Restaurant
WHERE review >= 4.0;

--5) Italian Restaurants with $$ to $$$

SELECT *
FROM Restaurant
WHERE cuisine = 'Italian'
    AND price IN ('$$', '$$$');

--6) Restaurants with exactly $$$

SELECT *
FROM Restaurant
WHERE price = '$$$';

--7) Restaurants name contains "Candy"

SELECT *
FROM Restaurant
WHERE name LIKE '%Candy%';

--8) Restaurants in Midtown , Downtown, or Chinatown

SELECT *
FROM Restaurant
WHERE neighborhood IN ('Midtown', 'Downtown', 'Chinatown');

--9) Health grade pending (empty value)

SELECT *
FROM Restaurant
WHERE health = '' or health IS NULL;

--10) Top 4 Restaurants by Review

SELECT *
FROM Restaurant
ORDER BY review DESC
LIMIT 4;
