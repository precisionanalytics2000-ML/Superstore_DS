SELECT * FROM sales;

#TOP PERFORMING PRODUCT
SELECT Category, Sub_Category, Product_Name, Sales FROM sales
order by sales DESC
LIMIT 10;

SELECT Category, Sub_Category, Product_Name, ROUND(SUM(Sales),2) as Total_Sales
FROM sales
GROUP BY Category, Sub_Category, Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;

#Top performing City
SELECT City, ROUND(SUM(Sales),2) as Total_Sales
FROM sales
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 10;
