/*
1. Write a SQL Query to find a list of customer names who are using the product Digital Subscriber Line.
*/
select "Customer Name" from TELECOM_CUSTOMER where PRODUCT = 'Digital Subscriber Line';

/*
2. Write a SQL Query to list a customer id, customer name whose name starts with 'sa'
*/
select CUSTOMERID, "Customer Name" from TELECOM_CUSTOMER WHERE "Customer Name" like 'sa%';

/* 
3. Write a SQL Query to list the Customer IDs and names for customers belonging to the gold customer segment.
Note : After discussing with team we found that there is no gold word in customer segment rather it is present in service segment.
Mentioned below is the query accordingly. 
*/
select CUSTOMERID, "Customer Name" from TELECOM_CUSTOMER where "Service Segment" = 'Gold';

/* 
4. Write a SQL Query to Count the Customer list product-wise.
*/
select product , count(*) as count from TELECOM_CUSTOMER group by product;

/*
5. Write a SQL Query to list the Customer name of zone Mountain
*/
select "Customer Name" from TELECOM_CUSTOMER where ZONE like 'M%';
