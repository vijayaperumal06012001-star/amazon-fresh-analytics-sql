/*Subqueries and Nested Queries
●	Query 13: Write a subquery to:
1. Identify the top 3 products based on sales revenue.
2. Find customers who haven’t placed any orders yet.*/

-- 1. 

select productid, total_sales from
(select productid, sum(quantity*unitprice) as total_sales from order_details
group by productid
order by total_sales desc
limit 3) as top_products;

select p.productname, od.productid, sum(od.quantity*od.unitprice) as total_sales  from order_details od
join products p on od.productid = p.productid
group by od.productid
order by total_sales desc
limit 3;

-- 2. 
select customerid, name from customers
where customerid not in (select distinct customerid from orders);

select  c.customerid, c.name from customers c 
join orders o on c.customerid = o.customerid
where o.orderid is null;