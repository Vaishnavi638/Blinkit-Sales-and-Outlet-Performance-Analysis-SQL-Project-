# Blinkit-Sales-and-Outlet-Performance-Analysis-SQL-Project-

📌 Project Overview
This project focuses on analyzing Blinkit grocery sales data using SQL to extract meaningful insights related to product performance, outlet efficiency, and overall sales trends.
The primary goal of this analysis is to understand how different factors such as product categories, outlet types, and locations impact sales performance, and to derive insights that can support data-driven business decisions.

🎯 Objectives
- Analyze overall sales performance and key metrics
- Identify top-performing product categories
- Compare sales based on fat content (Low Fat vs Regular)
- Evaluate outlet performance by type, size, and location
- Understand customer satisfaction using ratings

📂 Dataset Description
The dataset contains transactional and product-level information from Blinkit grocery sales.

🔢 Key Columns:
- Item_Fat_Content – Type of product (Low Fat / Regular)
- Item_Identifier – Unique product ID
- Item_Type – Category of product
- Outlet_Establishment_Year – Year of outlet establishment
- Outlet_Identifier – Unique outlet ID
- Outlet_Location_Type – Tier-based location classification
- Outlet_Size – Size of outlet (Small, Medium, High)
- Outlet_Type – Type of outlet/store
- Item_Visibility – Product visibility in store
- Item_Weight – Weight of product
- Total_Sales – Sales generated
- Rating – Customer rating

🛠️ Tools & Technologies
- SQL (MySQL)
- MySQL Workbench

🧹 Data Cleaning
Standardized inconsistent values in Item_Fat_Content
‘LF’, ‘low fat’ → ‘Low Fat’
‘reg’ → ‘Regular’
Ensured data consistency for accurate aggregation and analysis

📊 Analysis Performed
- The following analyses were performed using SQL queries:
- Total and average sales calculation
- Total number of items
- Average customer ratings
- Sales distribution by fat content
- Sales and performance by item type
- Top 5 item categories by sales
- Sales by outlet establishment year
- Sales percentage by outlet size
- Sales by outlet location (Tier 1, 2, 3)
= Performance comparison across outlet types

🔑 Key Insights
- Sales distribution varies across fat content categories, indicating customer preference toward specific product types
- A few item categories contribute significantly higher revenue compared to others
- Sales performance differs across outlet establishment years without a consistent trend
- Outlet size contributes differently to total sales, with one category leading overall contribution
- Sales vary across different location tiers
- Outlet type significantly impacts revenue generation and performance metrics
- Customer ratings are relatively consistent, indicating stable satisfaction levels

💡 Business Recommendations
Focus on high-performing product categories to maximize revenue
Optimize inventory planning based on demand patterns
Improve performance of low-performing outlet types
Customize strategies based on location-wise demand
Enhance product visibility to improve sales conversion

🚀 Conclusion
This project demonstrates how SQL can be effectively used for exploratory data analysis and business insight generation. By analyzing sales and outlet data, meaningful patterns were identified that can help improve decision-making in retail operations.
