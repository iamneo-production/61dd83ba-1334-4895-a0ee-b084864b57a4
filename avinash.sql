/*SQL query to find a list of customer names who are using the product digital subscriber line */
select "Customer Name" from TELECOM_CUSTOMER
where product='Digital Subscriber Line';

/* SQL query to a list a customer id,customer name whose name starts with 'sa' */
select CustomerId, "Customer Name" from TELECOM_CUSTOMER
where "Customer Name" like 'sa%';


/* SQL query to list the customer ids and names for customers belonging to the gold customer segment */
select CustomerId, "Customer Name" from TELECOM_CUSTOMER
where "Service Segment"='Gold';

/* SQL query to count the customer list product-wise */
select product, count(product) from TELECOM_CUSTOMER
group by product;


/* SQL query to list the customer name of zone 'Mountain' */
select "Customer Name" from TELECOM_CUSTOMER
where ZONE='Mountain';