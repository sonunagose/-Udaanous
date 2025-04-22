use task_1;
----- Select Query-----
select * from customers;
select * from orders;
select * from products;

----- List all customers and their cities---
select first_name, last_name, city from customers;
select customer_id, email from customers;

----- JOIN-----
use task_1;
#### Inner Join:-
select * from customers
inner join orders
on customers.customer_id = orders.customer_id;

#### Right Join:-
select * from customers right join orders on customers.customer_id = orders.customer_id;

#### Left Join:-
select * from customers Left join orders on customers.customer_id = orders.customer_id;

#### Cross Join:-
select * from customers Cross join orders on customers.customer_id = orders.customer_id;

----- Display each order with customer full name, product name, and total price (quantity × price)-----

SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS customer_full_name,
    p.product_name,
    o.quantity * p.price AS total_price
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id;

----- Filter & Date-----

select * from orders
where order_date >= "2024-01-15";
SELECT *
FROM orders
WHERE YEAR(order_date) = 2024;
SELECT *
FROM orders
WHERE order_date >= CURDATE() - INTERVAL 7 DAY;
SELECT *
FROM orders
WHERE order_date BETWEEN '2024-01-01' AND '2024-03-31';

----- Show all orders placed in March 2024-----

select * from orders 
where year(order_date) = "2024"
AND MONTH(order_date) = 3;

----- GROUP BY-----

select customer_id,count(*) AS total_orders from orders
group by customer_id;

----- 	Count how many times each product has been ordered-----

select 
p.product_name,
count(o.order_id) As times_orders from orders o
join products p on o.product_id = p.product_id
Group by p.product_name;

-----	Revenue Analysis -----

SELECT 
    p.product_name,
    SUM(o.quantity * p.price) AS total_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name;

------	Calculate total revenue generated from each product-----

SELECT 
    p.product_name,
    SUM(o.quantity * p.price) AS total_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name;

-----	Top Customer  -----

SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    SUM(o.quantity * p.price) AS total_spent
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 1;

---- Identify the customer who spent the most -----

SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    SUM(o.quantity * p.price) AS total_spent
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 1;

----- BONUS ---

SELECT 
    p.product_name,
    SUM(o.quantity) AS total_quantity_ordered
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity_ordered DESC;

-----	Which city has the highest average spending per customer-----

SELECT 
    c.city,
    AVG(total_spent) AS avg_spending_per_customer
FROM (
    SELECT 
        o.customer_id,
        SUM(o.quantity * p.price) AS total_spent
    FROM orders o
    JOIN products p ON o.product_id = p.product_id
    GROUP BY o.customer_id
) AS customer_spending
JOIN customers c ON customer_spending.customer_id = c.customer_id
GROUP BY c.city
ORDER BY avg_spending_per_customer DESC
LIMIT 3;




    





