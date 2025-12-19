/*●	Query 4: Write DDL statements to recreate the Customers table with the following constraints:
1 - CustomerID as the primary key.
2 - Ensure Age cannot be null and must be greater than 18.
3 - Add a unique constraint for Name.*/

use amazon;

-- 1.
alter table customers
modify customerid varchar(50);

alter table customers
add constraint pk_customers primary key (customerid(50));

-- 2.
alter table customers
modify age int not null;

alter table customers
add constraint chk_age check (age > 18); 
/* while running this query, it through an error. it, because of the constraint applied there are some records 
that 'age' have '18'. so, which the data voilates the constraint.
using the below query to find is there any records which violate the constraint */
SELECT * FROM customers
WHERE age IS NULL OR age <= 18;

-- 3.
alter table customers
modify name varchar (50);

alter table customers
add constraint unique_name unique (name);
/* we can't add unique key coonstraint to the name beacuse it has duplicate name as same as like and i used
the below  query to find what are the name has duplicates.*/

select name, count(*) as county_name from customers
group by name having count(*) > 1;