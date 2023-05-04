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