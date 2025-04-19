use database1;
select * from courses;
select * from enrollments;
select * from student_information;

#### GROUP BY:=
use database2;
select * from Sales;
select customer_id , Sum(Profit) As total_profit from sales 
group by customer_id;

#### ORDER BY:=
select sales, profit,customer_id from sales 
order by profit ASC;

select order_date,ship_date,ship_mode from Sales 
order by ship_mode ASC;
select order_date,ship_date,ship_mode from Sales 
order by ship_mode desc;

#### INNER JOIN:=
use database2;
select * from sales;
select * from sales1;

select * from sales inner join sales1;

select * from sales 
inner join sales1 
on sales1.product_id = sales.product_id;

select * from sales 
inner join sales1 
on sales1.profit = sales.profit;

#### LEFT JOINS:=
select * from sales 
left join sales1 
on sales1.customer_id = sales.customer_id;

select * from sales 
left join sales1
on sales1.order_id = sales.order_id;

#### RIGHT INNER:=
select * from sales
Right join sales1
on sales1.ship_date = sales.ship_date;

select * from sales 
Right join sales1
on sales1.order_date = sales.order_date;

#### CROSS JOINS:=
select * from sales
Cross join sales1
on sales1.ship_mode = sales.ship_mode;

#### ANY QUERY:=
select Product_id, profit from sales
where profit > 100;

select Product_id, quantity from sales
where quantity > 5;

#### HAVING Query:=
SELECT product_id, SUM(quantity) AS total_quantity
FROM sales
GROUP BY product_id
HAVING SUM(quantity) > 5;

select customer_id, Avg(profit) AS total_profit from sales
group by customer_id
Having Sum(profit) > 100;

#### EXISTS QUERY:=
select * from sales;
select customer_id from sales 
where exists (select customer_id from sales where customer_id = "MH-17455");
