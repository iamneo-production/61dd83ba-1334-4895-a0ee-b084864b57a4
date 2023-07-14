/*1Q)Write a SQL query to find a list of customer names who are using the product Digital Subscriber Line.*/
SELECT "Customer Name" FROM TELECOM WHERE PRODUCT='Digital Subscriber Line';

/*2Q)Write a SQL query to list a customer id,customer name whose name starts with 'sa'.*/
SELECT CUSTOMERID,"Customer Name" FROM TELECOM WHERE "Customer Name" LIKE 'sa%';

/*3Q)Write SQL query to list the customer ids and names for customers belonging to the gold customer segment.*/
SELECT CUSTOMERID,"Customer Name" FROM TELECOM WHERE "Service Segment"='Gold';

/*4Q)Write a SQL query to count the customer list product wise.*/
SELECT PRODUCT,COUNT(PRODUCT) FROM TELECOM GROUP BY PRODUCT;

/*5Q)Write a SQL query to list the customer name zone 'Mountain'.*/
SELECT "Customer Name" FROM TELECOM WHERE ZONE LIKE 'M%';