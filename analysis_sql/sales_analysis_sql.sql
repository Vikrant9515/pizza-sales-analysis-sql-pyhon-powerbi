-- This SQL script is used to analyze pizza sales data stored in a MySQL database.
-- It includes commands to set up the database, load data, and perform various queries for analysis
use pizzaDB;
show tables;
select *from pizza_sales;

-- Total Revenue
select sum(total_price) as Total_Revenue from pizza_sales;

-- Average Order Value
select sum(total_price)/count(distinct order_id) as Avg_Order_Value from pizza_sales;

-- Total pizzas sold
select sum(quantity) as Total_pizza_sold from pizza_sales;

-- Total orders
select count(distinct order_id) as Total_orders from pizza_sales;

-- Average pizzas per order
select cast(sum(quantity)/count(distinct order_id) as decimal(10,2)) as Avg_pizza_per_orders from pizza_sales;

-- Total sales by day of the week
SELECT 
  WEEKDAY(order_date) + 1 AS order_day,  -- 1 = Monday, ..., 7 = Sunday
  CASE WEEKDAY(order_date)
    WHEN 0 THEN 'Monday'
    WHEN 1 THEN 'Tuesday'
    WHEN 2 THEN 'Wednesday'
    WHEN 3 THEN 'Thursday'
    WHEN 4 THEN 'Friday'
    WHEN 5 THEN 'Saturday'
    WHEN 6 THEN 'Sunday'
  END AS weekday_name,
  COUNT(DISTINCT order_id) AS total
FROM pizza_sales
GROUP BY order_day, weekday_name
ORDER BY order_day;

-- Total sales by month
SELECT 
  DATE_FORMAT(order_date, '%Y-%m') AS month_year,  -- e.g., 2025-07
  DATE_FORMAT(order_date, '%M') AS month_name,     -- e.g., July
  COUNT(DISTINCT order_id) AS total
FROM pizza_sales
GROUP BY month_year, month_name
ORDER BY month_year;

-- Total sales by pizza category for January
select pizza_category,sum(total_price)as total_sales,cast(sum(total_price)*100/(select sum(total_price) from pizza_sales 
where month(order_date)=1)as decimal(10,2))  as total_sales_PCT
from pizza_sales 
where month(order_date)=1
group by pizza_category;

-- Total sales by pizza size
select pizza_size,sum(total_price)as total_sales,cast(sum(total_price)*100/(select sum(total_price) from pizza_sales 
 )as decimal(10,2)) 
as total_sales_PCT
from pizza_sales 
group by pizza_size
order by total_sales desc;

-- Total sales by pizza category
select *from pizza_sales;
select pizza_category,count(quantity)as total_pizza_sold from pizza_sales
group by pizza_category;

-- Top 5 most revenue generating pizzas
select pizza_name ,sum(total_price) as total_revenue from pizza_sales
group by pizza_name
order by total_revenue desc
limit 5;

-- Top 5 least revenue generating pizzas
select pizza_name ,sum(total_price) as total_revenue from pizza_sales
group by pizza_name
order by total_revenue asc
limit 5;

-- Top 5 most ordered pizzas
select pizza_name ,sum(quantity) as total_quantity from pizza_sales
group by pizza_name
order by total_quantity desc
limit 5;

-- Top 5 least ordered pizzas
select pizza_name ,sum(quantity) as total_quantity from pizza_sales
group by pizza_name
order by total_quantity asc
limit 5;

-- Top 5 most ordered pizzas sold
select pizza_name ,count(distinct order_id) as total_order from pizza_sales
group by pizza_name
order by total_order desc
limit 5;

-- Top 5 least ordered pizzas sold
select pizza_name ,count(distinct order_id) as total_order from pizza_sales
group by pizza_name
order by total_order asc
limit 5;


