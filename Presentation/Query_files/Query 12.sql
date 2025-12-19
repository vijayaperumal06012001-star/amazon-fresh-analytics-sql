/*Normalization
●	Query 12: Normalize the Products table to 3NF:
1. Separate product categories and subcategories into a new table.
2. Create foreign keys to maintain relationships.*/

-- 1. 
create table categories(
categoryid int primary key auto_increment,
category varchar(20) not null,
subcategory varchar (20) not null,
unique (category,subcategory));


insert into categories ( category, subcategory)
values( 
'Bakery', 'Sub-Bakery-1'),
('Bakery', 'Sub-Bakery-2'),
('Bakery', 'Sub-Bakery-3'),
('Bakery', 'Sub-Bakery-4'),
('Dairy','Sub-Dairy-1'),
('Dairy','Sub-Dairy-2'),
('Dairy','Sub-Dairy-3'),
('Dairy','Sub-Dairy-4'),
('Snacks','Sub-Snacks-1'),
('Snacks','Sub-Snacks-2'),
('Snacks','Sub-Snacks-3'),
('Snacks','Sub-Snacks-4'),
('Meat','Sub-Meat-1'),
('Meat','Sub-Meat-2'),
('Meat','Sub-Meat-3'),
('Meat','Sub-Meat-4'),
('Fruits','Sub-Fruits-1'),
('Fruits','Sub-Fruits-2'),
('Fruits','Sub-Fruits-3'),
('Fruits','Sub-Fruits-4'),
('Vegetables','Sub-Vegetables-1'),
('Vegetables','Sub-Vegetables-2'),
('Vegetables','Sub-Vegetables-3'),
('Vegetables','Sub-Vegetables-4');

-- 2. 
alter table products
drop category, drop subcategory,
add categoryid int,
add foreign key (categoryid) references categories (categoryid);

select * from categories;
select * from products;
alter table products
add column categoryid int;

alter table products
add foreign key (categoryid) references categories(categoryid);

update products p
join categories c on p.subcategory = c.subcategory
set p.categoryid = c.categoryid;

alter table products
drop category,
drop subcategory;
set sql_safe_updates = 1;




/*alter table order_details
add constraint fk_productid foreign key (productid)
references products(productid);

alter table products
add constraint pk_productid primary key (productid(50));

alter table products
add unique (productid(50));

alter table products
modify ProductID varchar (50);
*/



