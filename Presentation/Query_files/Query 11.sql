/*Complex Aggregations and Joins
●	Query 11: Use SQL to:
1. Join the Orders and OrderDetails tables to calculate total revenue per order.
2. Identify customers who placed the most orders in a specific time period.
3. Find the supplier with the most products in stock.*/

select * from orders;
select * from order_details;

-- 1. 
select o.orderid, sum(od.unitprice) as total_revenue from orders o
join order_details od on od.orderid = o.orderid
group by o.orderid
order by total_revenue desc;

-- 2. 
select customerid, count(orderid) as total_orders from orders
where OrderDate between 2025-01-01 and 2025-01-31
group by customerid
order by total_orders desc;

-- i used to retrive the data using the above query but it returns 0 row.

-- 3. 
select s.supplierid, s.suppliername, sum(p.stockquantity) as total_stock from suppliers s
join products p on p.supplierid = s.supplierid
group by s.supplierid, s.suppliername
order by total_stock desc 
limit 1;