--first use of clauses
USE sakira;
SELECT * 
FROM actor 
WHERE first_name = "a%"
ORDER BY last_name;
--end

-- using calculations after SELECT
USE sakila;
SELECT 
	payment_id,
    customer_id,
    rental_id + 100 --here
FROM payment;
--end

--task in course: 10% more expensive 
SELECT 
    first_name AS name,
    price AS 'unit price',
    price*1.1 AS 'new price'
FROM customer;
--end

--using WHERE and logical operators AND/OR
SELECT * 
FROM Customers
WHERE points > 1000 
    OR order_date >= '1990-01-01' 
    AND state = 'VA'
--end

--using NOT
SELECT *
FROM Customers
WHERE NOT (points > 1000 OR state = 'VA')
--end

--task in course: order #6 and total price greater than 30
SELECT *
FROM order_items 
WHERE order_id = 6
    AND unit_price * quantity > 30
--end

-- using IN/NOT IN
SELECT *
FROM products
WHERE quantity_in_stock IN (42, 38, 79) 
                --NOT IN (42, 38, 79)
--end

-- using BETWEEN
SELECT *
FROM Customers
WHERE points BETWEEN 1000 AND 3000
--end

--task in course
SELECT *
FROM Customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01'
--end

--using LIKE
SELECT *
FROM Customers
WHERE first_name LIKE '_b%' -- '_' - means 1 symbol, '%' means any number of symbols
--end
