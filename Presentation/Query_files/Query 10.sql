/*Query 10: Identifying High-Value Customers
Scenario:
Amazon Fresh wants to identify top customers based on their total spending. We will:
1.	Calculate each customer's total spending.
2.	Rank customers based on their spending.
3.	Identify customers who have spent more than ₹5,000.*/

-- 1. 
select customerid, sum(orderamount) as total_purchase from orders
group by customerid;

-- 2. 
select customerid, sum(orderamount) as total_purchase, 
rank() over(order by sum(orderamount) desc) as sales_rank from orders
group by customerid;

-- 3. 
select customerid, sum(orderamount) as total_purchase from orders
group by customerid having total_purchase > 5000;