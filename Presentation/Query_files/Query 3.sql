/*Query - 3
Write a query to:
1 - Retrieve all customers from a specific city.
2 - Fetch all products under the "Fruits" category.*/

use amazon;

-- 1.
select * from customers
where city ='Port Calebstad';

-- 2.
select * from categories;

select * from products p
join categories c on p.categoryid = c.categoryid
where category = 'fruits';