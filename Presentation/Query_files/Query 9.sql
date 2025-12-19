/*Clauses and Aggregations
●	Query 9: Write queries using:
1. WHERE clause to find orders placed after 2024-01-01.
2. HAVING clause to list products with average ratings greater than 4.
3. GROUP BY and ORDER BY clauses to rank products by total sales.*/

use amazon;

-- 1. 
select * from orders
where orderdate > '2024-01-01';

-- 2. 
select productid, avg(rating) as avg_rating from reviews
group by productid having avg_rating > 4;

-- 3. 
select productid, sum(unitprice) as total_sales from order_details
group by productid
order by total_sales desc;