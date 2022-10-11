-- CROSS JOIN
SELECT 
    *
FROM
    customers,
    orders;

-- IMPLICIT INNER JOIN
SELECT 
    first_name, last_name, order_date, amount
FROM
    customers,
    orders
WHERE
    customers.id = orders.customer_id;
    
-- EXPLICIT INNER JOIN
SELECT 
    first_name, last_name, order_date, amount
FROM
    customers
        INNER JOIN
    orders ON customers.id = orders.customer_id;
    
show warnings;

-- MOST EXPENDER
SELECT 
    first_name, last_name, SUM(amount) AS total_spent
FROM
    customers
        JOIN
    orders ON customers.id = orders.customer_id
GROUP BY orders.customer_id
ORDER BY total_spent DESC
LIMIT 1;

-- CUSTOMERS EXPENDITURES
SELECT 
    first_name, last_name, IFNULL(SUM(amount), 0) AS total_spent
FROM
    customers
        LEFT JOIN
    orders ON customers.id = orders.customer_id
GROUP BY customers.id
ORDER BY total_spent;

-- RIGHT JOIN
SELECT 
    first_name, last_name, amount
FROM
    customers
        RIGHT JOIN
    orders ON customers.id = orders.customer_id;