create database sales;
use sales;
show tables;
-- Total Sales
SELECT SUM(Sales) AS total_sales FROM sales_cleaned;

-- Profit by Category
SELECT Category, SUM(Profit) AS total_profit
FROM sales_cleaned
GROUP BY Category;

-- Sales by Region
SELECT Region, SUM(Sales) AS total_sales
FROM sales_cleaned
GROUP BY Region;

-- Top 5 Products
SELECT "Product Name", SUM(Sales) AS total_sales
FROM sales_cleaned
GROUP BY "Product Name"
ORDER BY total_sales DESC
LIMIT 5;