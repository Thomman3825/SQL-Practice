SELECT * FROM sql_store.customers;
select * from sql_store.customers order by first_name asc;
select * from sql_store.customers where first_name regexp 'ur' order by first_name;
select address,first_name from sql_store.customers where city = "Orlando";

insert into sql_store.customers values(default, 'Alan', 'Biju' , '1998-03-20', 7530003309, 'graceland', 'kazhakuttom', 'KL', default);
select * from sql_store.customers where first_name = 'Alan';

create table sql_store.orders_archived as 
select * from sql_store.orders where status = 1;

select * from sql_store.orders_archived;

update sql_store.customers set points = 5000 where customer_id=11;
select * from sql_store.customers where first_name = 'Alan';

alter table sql_store.customers add Age int;
select * from sql_store.customers;

-- update sql_store.customers 
-- set Age =(23,24,50,69,55,66,45,34,34,45,26) 
-- where customer_id in ( 1,2,3,4,5,6,7,8,9,10,11);

-- insert into sql_store.customers (Age) 
-- values (23),(25),(45),(55),(65),(26),(27),(28),(33),(34),(26);
update sql_store.customers set Age = 24 where customer_id=1;
update sql_store.customers set Age = 26 where customer_id=2;
select * from sql_store.customers;


select * from sql_store.customers c join sql_store.orders o on o.customer_id=c.customer_id;

-- create table sql_store.Merged as
-- select * from sql_store.customers c join sql_store.orders o on o.customer_id=c.customer_id;
