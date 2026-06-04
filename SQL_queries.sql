CREATE DATABASE sales_analysis;
USE sales_analysis;
CREATE TABLE sales_data (
    Product_ID INT,
    Sale_Date DATE,
    Sales_Rep VARCHAR(50),
    Region VARCHAR(50),
    Sales_Amount DECIMAL(10,2),
    Quantity_Sold INT,
    Product_Category VARCHAR(50),
    Unit_Cost DECIMAL(10,2),
    Unit_Price DECIMAL(10,2),
    Customer_Type VARCHAR(50),
    Discount DECIMAL(5,2),
    Payment_Method VARCHAR(50),
    Sales_Channel VARCHAR(50),
    Region_and_Sales_Rep VARCHAR(100)
);
SELECT * FROM sales_data;
SELECT * 
FROM sales_data
LIMIT 10;
SELECT SUM(Sales_Amount) AS Total_Revenue
FROM sales_data;
SELECT Product_ID,
       SUM(Sales_Amount) AS Total_Sales
FROM sales_data
GROUP BY Product_ID
ORDER BY Total_Sales DESC
LIMIT 1;
SELECT Product_Category,
       SUM(Sales_Amount) AS Revenue
FROM sales_data
GROUP BY Product_Category
ORDER BY Revenue DESC;
SELECT Region,
       SUM(Sales_Amount) AS Revenue
FROM sales_data
GROUP BY Region
ORDER BY Revenue DESC;
SELECT Sales_Rep,
count(*) AS Orders_handled
FROM sales_data
group by Sales_Rep
order by Orders_handled desc;
SELECT
    YEAR(Sale_Date) AS Year,
    MONTH(Sale_Date) AS Month,
    SUM(Sales_Amount) AS Monthly_Revenue
FROM sales_data
GROUP BY Year, Month
ORDER BY Year, Month;
SELECT Product_Category,
       SUM(Quantity_Sold) AS Total_Units
FROM sales_data
GROUP BY Product_Category
ORDER BY Total_Units DESC;
SELECT Sales_Channel,
       SUM(Sales_Amount) AS Revenue
FROM sales_data
GROUP BY Sales_Channel
ORDER BY Revenue DESC;
SELECT Payment_Method,
       COUNT(*) AS Number_of_Orders
FROM sales_data
GROUP BY Payment_Method
ORDER BY Number_of_Orders DESC;
SELECT Product_Category,
       SUM(Sales_Amount) AS Total_Revenue,
       AVG(Discount) AS Average_Discount
FROM sales_data
GROUP BY Product_Category
ORDER BY Total_Revenue DESC;


