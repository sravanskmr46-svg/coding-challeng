SELECT * FROM company.sales;
SELECT customer_name, city 
FROM Sales;

SELECT product_name, price 
FROM Sales;

SELECT * 
FROM Sales
WHERE city = 'Bangalore';

SELECT * 
FROM Sales
WHERE category = 'Electronics';

SELECT * 
FROM Sales
WHERE price > 10000;

SELECT * 
FROM Sales
WHERE quantity > 2;

SELECT * 
FROM Sales
ORDER BY price ASC;

SELECT * 
FROM Sales
ORDER BY quantity DESC;

SELECT DISTINCT city 
FROM Sales;