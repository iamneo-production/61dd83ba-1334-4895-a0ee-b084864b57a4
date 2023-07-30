/*
1. Write a SQL Query to find a list of customer names who are using the product Digital Subscriber Line.
*/
select "Customer Name" from TELECOM_CUSTOMER
where Product='Digital Subscriber Line';


/*
2. Write a SQL Query to list a customer id, customer name whose name starts with 'sa'
*/
select CustomerId, "Customer Name" from TELECOM_CUSTOMER
where "Customer Name" like 'sa%';


/*3. WRITE A SQL QUERY TO LIST CUSTOMER IDS AND NAMES FOR CUSTOMERS BELONGING TO THE GOLD CUSTOMER SEGMENT?
There is no gold word in Customer Segment. It is present in Service segment.*/
select CustomerId, "Customer Name" from TELECOM_CUSTOMER
where "Service Segment"='Gold';

/* 
4. Write a SQL Query to Count the Customer list product-wise.
*/
select Product, count(Product) from TELECOM_CUSTOMER
group by Product;

/*
5. Write a SQL Query to list the Customer name of zone Mountain
*/
select "Customer Name" from TELECOM_CUSTOMER
where ZONE='Mountain';