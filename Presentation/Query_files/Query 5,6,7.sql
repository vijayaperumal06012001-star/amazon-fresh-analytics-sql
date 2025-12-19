/*Data Manipulation Language (DML)
●	Query 5: Insert 3 new rows into the Products table using INSERT statements.
●	Query 6: Update the stock quantity of a product where ProductID matches a specific ID.
●	Query 7: Delete a supplier from the Suppliers table where their city matches a specific value.*/

use amazon;

select * from products;

-- T5. 
insert into Products (
  Productid, ProductName, Category, SubCategory, Priceperunit, StockQuantity, Supplierid) 
  VALUES
('ae3f2411-d2f1-4a8e-8a9e-d3be3c5b84a1', 'Cinnamon Swirl Bun', 'Bakery', 'Sub-Bakery-1', 149, 120, 'c6df41a7-a103-4b51-91f9-2e2433e24a89'),
('b90b8a7d-0c36-4315-9183-9be438e2a7e4', 'Whole Grain Bread', 'Bakery', 'Sub-Bakery-2', 199, 250, '577a9dbf-6dc7-49b2-9e50-9e2a6e4d8d29'),
('cf21d938-6ef3-4c70-88c5-5b379c53df03', 'Butter Croissant', 'Bakery', 'Sub-Bakery-1', 179, 175, '3e928b8d-d542-4f13-83cb-c226f0ec4c43'),
('ddeaed1c-3838-44f1-8f3d-e03d3f6e062e', 'Chocolate Muffin', 'Bakery', 'Sub-Bakery-3', 220, 100, '1b4b9d13-7aa9-464f-9874-42b1d7e78f66'),
('f18e7ed1-5013-4a65-90fc-7cd6e2b6a9df', 'Garlic Bread Loaf', 'Bakery', 'Sub-Bakery-2', 135, 300, '9f0d7f72-1543-49b0-80a6-d32e49a1f457');

-- T6.
update products
set StockQuantity = 150
where productid = 'ddeaed1c-3838-44f1-8f3d-e03d3f6e062e';

-- T7. 
delete from suppliers
where city = 'South Ana';

-- used the below query to disable the safety mode to delete the data from table 
 set sql_safe_updates = 1;