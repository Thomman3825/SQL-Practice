SELECT * FROM sql_store.customers;
select * from sql_store.customers order by first_name asc;
select * from sql_store.customers where first_name regexp 'ur' order by first_name;
select address,first_name from sql_store.customers where city = "Orlando";
