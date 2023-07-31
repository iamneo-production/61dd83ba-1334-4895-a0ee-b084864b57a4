a/*SQL query to find a list of customer names who are using the product digital subscriber line */ 
SELECT "Customer Name" FROM TELECOM_CUSTOMER
WHERE PRODUCT='Digital Subscriber Line';

/* SQL query to a list a customer id,customer name whose name starts with 'sa' */
SELECT CUSTOMERID, "Customer Name" FROM TELECOM_CUSTOMER
WHERE "Customer Name" LIKE 'sa%';


/* SQL query to list the customer ids and names for customers belonging to the gold customer segment */
SELECT CUSTOMERID, "Customer Name" FROM TELECOM_CUSTOMER
WHERE "Service Segment"='Gold';

/* SQL query to count the customer list product-wise */
SELECT PRODUCT, COUNT(PRODUCT) FROM TELECOM_CUSTOMER
GROUP BY PRODUCT;


/* SQL query to list the customer name of zone 'Mountain' */
SELECT "Customer Name" FROM TELECOM_CUSTOMER
WHERE ZONE='Mountain';
