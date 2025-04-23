use sales_data;
select * from sales_data_1;

---- Total Sales Value----
### Calculate the total sales value across all orders:=
SELECT SUM(quantity * price) As total_sales_value from sales_data_1;

---- Monthly Sales Trends----
### Show total sales value by month:=
SELECT 
    date_format(order_date, "%Y-%M") AS Month,
    SUM(quantity * price) AS total_sales from sales_data_1
    GROUP BY MONTH
    ORDER BY MONTH;
    
---- Top 5 Products by Sales Value----
### List the top 5 best-selling products based on total revenue:=
SELECT 
     Product_name,
     SUM(quantity * price) As total_revenue from sales_data_1
     GROUP BY product_name
     ORDER BY total_revenue DESC
     LIMIT 5;
     
---- Sales by Region----
### Show total sales value per region:=
SELECT 
     region,
     SUM(quantity * price) AS total_sales from sales_data_1
     GROUP BY region
     ORDER BY total_sales DESC;
     
----- Customer Purchase Frequency----
### Find the number of orders placed by each customer.Return top 10 most frequent buyers:=
SELECT 
     customer_id,
     COUNT(*) AS order_count from sales_data_1
     GROUP BY customer_id
     ORDER BY order_count DESC
     LIMIT 10;

---- Category-wise Revenue Contribution----
### What percentage of total revenue does each product category contribute:=
SELECT 
     category,
     ROUND(SUM(quantity * price) / ( SELECT SUM(quantity * price ) from sales_data_1) * 100,2) AS revenue_percentage 
     from sales_data_1
     GROUP BY category
     ORDER BY revenue_percentage DESC;
     
----- Repeat Customer Rate----
### Calculate how many customers have made more than one purchase:=
SELECT COUNT(*) AS repeat_customers
FROM (
  SELECT customer_id
  FROM sales_data_1
  GROUP BY customer_id
  HAVING COUNT(DISTINCT order_id) > 1
) AS repeated;