/*SQL Constraints and Operators
●	Query 8: Use SQL constraints to:
1. Add a CHECK constraint to ensure that ratings in the Reviews table are between 1 and 5.
2. Add a DEFAULT constraint for the PrimeMember column in the Customers table (default value: "No").*/

use amazon;
select * from reviews;

-- 1. 
alter table reviews
add constraint chk_rating_reviews check (rating between 1 and 5);

-- 2. 
alter table customers
alter column primemember set default 'no';
-- i used this query to set default 'no' but it showed error 

alter table customers
modify PrimeMember varchar(10) default 'no';
-- this code will do the new customer data will automatically have 'no' for the prime members

