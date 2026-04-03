create database blinkit_db;

use blinkit_db;

select count(*) from blinkit_grocery_data;

select * from blinkit_grocery_data 
limit 10;

    -- Data Cleaning  --

set SQL_SAFE_UPDATES = 0; 
 
update blinkit_grocery_data
set Item_Fat_Content = 
case
when Item_Fat_Content in ('LF', 'low fat') then 'Low  Fat'
when Item_Fat_Content = 'reg' then 'Regular'
else Item_Fat_Content
end ;

-- unique item fat content
select distinct(Item_Fat_Content) from blinkit_grocery_data ;

-- Total Sales
select round(sum(Total_Sales), 2) as Total_Sales
from blinkit_grocery_data ;

-- Calculate Total sales in Millions
select cast(sum(Total_Sales) / 1000000 as decimal(10,2) ) as Total_Sales_Millions
from blinkit_grocery_data ;

-- Average sales
select round(avg(Total_Sales), 1) as Avg_Sales 
from blinkit_grocery_data ;

-- total number of Items
select count(*) as No_of_Items from blinkit_grocery_data;

-- Average Rating
select round(avg(Rating), 1) as Avg_Rating
from blinkit_grocery_data ;

-- Total Sales by Fat Content
select Item_Fat_Content, round(sum(Total_Sales), 2) as Total_Sales
from blinkit_grocery_data
group by Item_Fat_Content
order by Total_Sales desc ;

-- total sales, avg sales, avg rating by fat content for year 2020
select Item_Fat_Content, round(sum(Total_Sales), 2) as Total_Sales,
round(avg(Total_Sales), 1) as Avg_Sales ,
round(avg(Rating), 1) as Avg_Rating
from blinkit_grocery_data
where Outlet_Establishment_Year = 2020
group by Item_Fat_Content
order by Total_Sales desc ;

-- Total sales avg sales, avg rating by Item Type
select Item_Type, round(sum(Total_Sales), 2) as Total_Sales,
round(avg(Total_Sales), 1) as Avg_Sales ,
round(avg(Rating), 1) as Avg_Rating
from blinkit_grocery_data
group by Item_Type
order by Total_Sales desc ;

-- top 5 Item Types by total sales
select Item_Type, round(sum(Total_Sales), 2) as Total_Sales
from blinkit_grocery_data
group by Item_Type
order by Total_Sales desc
limit 5 ;

-- Fat Content by Outlet for Total Sales
SELECT 
    Outlet_Location_Type,
    SUM(CASE 
    WHEN Item_Fat_Content = 'Low Fat' THEN Total_Sales
    ELSE 0 END) AS Low_Fat,
    SUM(CASE WHEN Item_Fat_Content = 'Regular' THEN Total_Sales 
    ELSE 0 END) AS Regular
FROM blinkit_grocery_data
GROUP BY Outlet_Location_Type
ORDER BY Outlet_Location_Type;

select distinct(Item_Fat_Content) from blinkit_grocery_data;

-- Total Sales by Outlet Establishment
select Outlet_Establishment_Year, round(SUM(Total_Sales), 2) AS Total_Sales
from blinkit_grocery_data
group by Outlet_Establishment_Year
order by Outlet_Establishment_Year;


-- Percentage of Sales by Outlet Size
select
    Outlet_Size, 
    cast(sum(Total_Sales) as decimal(10,2)) as Total_Sales,
    cast(sum(Total_Sales) * 100.0 / sum(sum(Total_Sales)) over() as decimal(10,2)) as Sales_Percentage
from blinkit_grocery_data
group by Outlet_Size
order by Total_Sales DESC;


-- Sales by Outlet Location
select Outlet_Location_Type, round(sum(Total_Sales), 2)  as Total_Sales
from blinkit_grocery_data
group by Outlet_Location_Type
order by Total_Sales DESC;


-- All Metrics by Outlet Type
select Outlet_Type, round(sum(Total_Sales), 2) as Total_Sales, 
round(avg(Total_Sales), 2) as Avg_Sales,
count(*) as No_of_Item,
round(avg(Rating), 2) as Avg_Rating,
round(avg(Item_Visibility), 2) as Item_Visibility
from blinkit_grocery_data
group by Outlet_Type
order by Total_Sales desc ; 

select distinct(Outlet_Type) from blinkit_grocery_data ; 


