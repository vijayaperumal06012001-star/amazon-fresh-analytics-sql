# Amazon Fresh Analytics – SQL Data Modeling & Business Insights

## Project Overview
Amazon Fresh is an e-commerce platform specializing in groceries and daily essentials, handling large volumes of transactional and customer data. Efficient data organization and analysis are critical for optimizing operations, improving customer satisfaction, and driving revenue growth.

This project focuses on **designing a relational database** for Amazon Fresh and performing **SQL-based analysis** to extract meaningful business insights related to customers, products, suppliers, orders, and reviews. The project demonstrates **end-to-end SQL skills**, from data modeling to advanced querying and business interpretation.

---
PPT LINK - (https://www.canva.com/design/DAGtaYdqzHs/aWY8yubwvv1Kj_ls3kUqog/view?utm_content=DAGtaYdqzHs&utm_campaign=designshare&utm_medium=link2&utm_source=uniquelinks&utlId=h34ca3308a7)
---

## Business Problem
As Amazon Fresh expands, managing and analyzing data across customers, products, suppliers, and orders becomes increasingly complex. Without a well-designed database and structured queries, it is difficult to:
- Identify top-performing products and categories
- Understand customer purchasing patterns
- Optimize inventory and supplier performance
- Generate reliable revenue and customer insights

---

## Business Objectives
- Design an **efficient relational database** for Amazon Fresh  
- Implement **SQL DDL and DML operations** with constraints  
- Perform **advanced SQL queries** to solve real business problems  
- Analyze customer behavior, product demand, and revenue trends  
- Generate **actionable insights** to support business decisions  

---

## Domain
- E-commerce Analytics  
- Retail Analytics  

---

## Skills & Tools Used

### Skills
- Data Modeling & ER Diagrams  
- SQL (DDL, DML, Constraints)  
- Joins, Subqueries, Aggregations  
- Database Normalization (3NF)  
- ACID Transactions & TCL Concepts  
- Business Use Case Analysis  

### Tools
- SQL (MySQL / PostgreSQL compatible syntax)  

---

## Database Design & Data Modeling

### Entities Designed
- Customers  
- Products  
- Categories  
- Orders  
- OrderDetails  
- Suppliers  
- Reviews  

Primary and foreign keys were defined to maintain **data integrity** and ensure efficient querying.

---

## SQL Implementation & Analysis

### 1️⃣ Data Definition (DDL)
- Created tables with appropriate data types  
- Applied constraints:
  - Primary Key  
  - Foreign Key  
  - UNIQUE  
  - CHECK  
  - DEFAULT  

---

### 2️⃣ Data Manipulation (DML)
- Inserted sample data into core tables  
- Updated inventory stock levels  
- Deleted inactive or invalid supplier records  

---

### 3️⃣ Business-Oriented SQL Queries
- Retrieve customers from specific cities  
- Fetch products by category  
- Identify orders placed after a given date  
- Rank products based on total sales  
- Identify high-value customers based on total spending  

---

### 4️⃣ Advanced SQL Analysis
- Joins to calculate revenue per order  
- Aggregations using GROUP BY and HAVING  
- Subqueries to identify:
  - Top 3 products by revenue  
  - Customers with no purchase history  
- Analysis of supplier contribution to inventory  

---

### 5️⃣ Normalization
- Normalized product-related data to **Third Normal Form (3NF)**  
- Separated categories and subcategories into independent tables  
- Reduced redundancy and improved scalability  

---

## Key Business Insights
- A small segment of customers contributes a significant portion of total revenue  
- Certain product categories consistently outperform others in sales volume  
- Some cities have a higher concentration of Prime members  
- Inventory demand varies significantly across categories and regions  
- Supplier performance directly impacts stock availability and order fulfillment  

---

## Business Recommendations
- Target high-value customers with personalized promotions  
- Optimize inventory levels based on category demand trends  
- Strengthen relationships with high-performing suppliers  
- Use customer purchase patterns to improve recommendation systems  
- Monitor underperforming products and suppliers proactively  

---

