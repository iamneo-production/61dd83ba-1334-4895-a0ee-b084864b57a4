/* OPTIMIZED APPROACH

1st list of customer names who are using product Digital Subscriber Line

CREATE INDEX IDX_PRODUCT ON TELECOM("PRODUCT"); WHICH WAS IMPLIMENTED INTERNALLY IN THE PRODUCTS COLUMN and 
alternative method like '%' can also be used */
SET TIMING ON
SELECT "Customer Name" FROM TELECOM
WHERE PRODUCT='Digital Subscriber Line';




/* 2ND QUESTION SQL QUERY TO LIST CUSTOMER_ID AND NAME */
/* optimized approach
CREATE INDEX IDX_CUSTOMER_NAME ON TELECOM("Customer Name");*/
SELECT CUSTOMERID, "Customer Name" FROM TELECOM
WHERE "Customer Name" LIKE 'sa%';





/* 3rd SQL Query to list the customer IDs and names for customers belonging to the gold customer segment 
After analysing the table from the data base there is no customer segment such as gold, but the gold is present in service segment 
column. question is inappropriate.
CREATE INDEX IDX_Service_SEGMENT ON TELECOM("Service Segment"); indexing
SELECT CUSTOMERID, "Service Segment" FROM TELECOM;

*/

SELECT CUSTOMERID, "Customer Name" FROM TELECOM
WHERE "Service Segment"='Gold';


/*4th Write a SQL Query to Count the Customer list product-wise? */

select product, count(*) as count from telecom 
group by product;

/*5.Write a SQL Query to List the Customer name of zone 'Mountain'?
create index idx_zone on telecom(zone); which is already done internally 

Mountain name is not recognized in the column zone

select "Customer Name" from telecom
where ZONE= 'Mountain' 
not working
0 rows selected*/

select "Customer Name" from telecom
where ZONE like'M%';

