/*Real-World Analysis
●	Query 14: Provide actionable insights:
1. Which cities have the highest concentration of Prime members?
2. What are the top 3 most frequently ordered categories?*/

-- 1.
select distinct city, count(*) as highest_PM from customers
where PrimeMember = 'yes'
group by city
order by highest_PM desc
limit 5;

-- 2. 
select c.category, count(od.orderid) as top_category from  products p
join categories c on p.categoryid = c.categoryid
join order_details od on p.productid = od.productid
group by c.category
order by top_category desc
limit 3;

