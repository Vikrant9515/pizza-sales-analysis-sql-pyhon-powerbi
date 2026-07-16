-- This SQL script is used to analyze pizza sales data stored in a MySQL database.
-- It includes commands to set up the database, load data, and perform various queries for analysis

USE pizzaDB;
SHOW TABLES;
SELECT * FROM pizza_sales;

-- Total Revenue
SELECT SUM(total_price) AS Total_Revenue
FROM pizza_sales;

-- Average Order Value
SELECT SUM(total_price) / COUNT(DISTINCT order_id) AS Avg_Order_Value
FROM pizza_sales;

-- Total pizzas sold
SELECT SUM(quantity) AS Total_pizza_sold
FROM pizza_sales;

-- Total orders
SELECT COUNT(DISTINCT order_id) AS Total_orders
FROM pizza_sales;

-- Average pizzas per order
SELECT CAST(SUM(quantity) / COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS Avg_pizza_per_orders
FROM pizza_sales;

-- Total sales by day of the week
SELECT
    WEEKDAY(order_date) + 1 AS order_day,
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
    DATE_FORMAT(order_date, '%Y-%m') AS month_year,
    DATE_FORMAT(order_date, '%M') AS month_name,
    COUNT(DISTINCT order_id) AS total
FROM pizza_sales
GROUP BY month_year, month_name
ORDER BY month_year;

-- Total sales by pizza category for January
SELECT
    pizza_category,
    SUM(total_price) AS total_sales,
    CAST(
        SUM(total_price) * 100 /
        (
            SELECT SUM(total_price)
            FROM pizza_sales
            WHERE MONTH(order_date) = 1
        ) AS DECIMAL(10,2)
    ) AS total_sales_PCT
FROM pizza_sales
WHERE MONTH(order_date) = 1
GROUP BY pizza_category;

-- Total sales by pizza size
SELECT
    pizza_size,
    SUM(total_price) AS total_sales,
    CAST(
        SUM(total_price) * 100 /
        (
            SELECT SUM(total_price)
            FROM pizza_sales
        ) AS DECIMAL(10,2)
    ) AS total_sales_PCT
FROM pizza_sales
GROUP BY pizza_size
ORDER BY total_sales DESC;

-- Total sales by pizza category
SELECT * FROM pizza_sales;

SELECT
    pizza_category,
    COUNT(quantity) AS total_pizza_sold
FROM pizza_sales
GROUP BY pizza_category;

-- Top 5 most revenue generating pizzas
SELECT
    pizza_name,
    SUM(total_price) AS total_revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_revenue DESC
LIMIT 5;

-- Top 5 least revenue generating pizzas
SELECT
    pizza_name,
    SUM(total_price) AS total_revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_revenue ASC
LIMIT 5;

-- Top 5 most ordered pizzas
SELECT
    pizza_name,
    SUM(quantity) AS total_quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_quantity DESC
LIMIT 5;

-- Top 5 least ordered pizzas
SELECT
    pizza_name,
    SUM(quantity) AS total_quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_quantity ASC
LIMIT 5;

-- Top 5 most ordered pizzas sold
SELECT
    pizza_name,
    COUNT(DISTINCT order_id) AS total_order
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_order DESC
LIMIT 5;

-- Top 5 least ordered pizzas sold
SELECT
    pizza_name,
    COUNT(DISTINCT order_id) AS total_order
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_order ASC
LIMIT 5;
