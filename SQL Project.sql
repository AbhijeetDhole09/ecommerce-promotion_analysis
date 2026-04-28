SELECT * FROM sales_data_new;
SELECT 
SUM(Sales_Before),
SUM(Sales_After)
FROM sales_data_new;
SELECT Location, SUM(Sales_After)
FROM sales_data_new
GROUP BY Location;
SELECT Store_Type, AVG(Sales_Increase)
FROM sales_data_new
GROUP BY Store_Type;
SELECT Promo_Type, AVG(Sales_Increase)
FROM sales_data_new
GROUP BY Promo_Type;
SELECT Promo_Type, AVG(Sales_Increase)
FROM sales_data_new
GROUP BY Promo_Type;
SELECT 
SUM(Visits_Before),
SUM(Visits_After)
FROM sales_data_new;
SELECT Promo_Type, 
       AVG(Sales_Increase) AS Avg_Sales_Increase
FROM sales_data_new
GROUP BY Promo_Type
ORDER BY Avg_Sales_Increase DESC;
SELECT Location, 
       SUM(Sales_After) AS Total_Sales
FROM sales_data_new
GROUP BY Location
ORDER BY Total_Sales DESC;
SELECT Store_Type, 
       AVG(Sales_Increase) AS Avg_Increase
FROM sales_data_new
GROUP BY Store_Type;
SELECT Store_Type, 
       AVG(Sales_Increase) AS Avg_Increase
FROM sales_data_new
GROUP BY Store_Type;
SELECT Store_ID, Location, Sales_After
FROM sales_data_new
ORDER BY Sales_After DESC
LIMIT 5;
SELECT 
    COUNT(*) AS Total_Stores,
    SUM(CASE WHEN Sales_Increase > 0 THEN 1 ELSE 0 END) AS Successful_Promotions
FROM sales_data_new;