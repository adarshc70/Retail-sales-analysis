-- Retail Sales SQL Analysis Project

-- Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM sales_data;

-- Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM sales_data;

-- Sales by Category
SELECT Category,
SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Category;

-- Profit by Region
SELECT Region,
SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Region;

-- Top 10 Products by Sales
SELECT "Product Name",
SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY "Product Name"
ORDER BY Total_Sales DESC
LIMIT 10;

-- Loss Making Products
SELECT "Product Name",
SUM(Profit) AS Total_Loss
FROM sales_data
GROUP BY "Product Name"
HAVING SUM(Profit) < 0;