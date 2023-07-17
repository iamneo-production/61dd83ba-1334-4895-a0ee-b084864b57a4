/*
1. Write a SQL Query to find a list of customer names who are using the product Digital Subscriber Line.
*/
select "Customer Name" from TELECOM_CUSTOMER where PRODUCT = 'Digital Subscriber Line';

/*
2. Write a SQL Query to list a customer id, customer name whose name starts with 'sa'
*/
select CUSTOMERID, "Customer Name" from TELECOM_CUSTOMER WHERE "Customer Name" like 'sa%';