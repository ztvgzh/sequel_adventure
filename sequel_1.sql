--first use of clauses
USE sakira;
SELECT * 
FROM actor 
WHERE first_name = "a%"
ORDER BY last_name;

--end