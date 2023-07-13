/* 
1st list of customer names who are using product Digital Subscriber Line

CREATE INDEX IDX_PRODUCT ON TELECOM("PRODUCT"); WHICH WAS IMPLIMENTED INTERNALLY IN THE PRODUCTS COLUMN and 
alternative method like '%' can also be used
Optimized method by Srija G */
SET TIMING ON
SELECT "Customer Name" FROM TELECOM
WHERE PRODUCT='Digital Subscriber Line';




/* 2ND QUESTION SQL QUERY TO LIST CUSTOMER_ID AND NAME */
/* optimized approach
CREATE INDEX IDX_CUSTOMER_NAME ON TELECOM("Customer Name");*/
SELECT CUSTOMERID, "Customer Name" FROM TELECOM
WHERE "Customer Name" LIKE 'sa%';





/* 3rd SQL Query to list the customer IDs and names for customers belonging to the gold customer segment 
There is no gold word in Customer Segment. It is present in Service segment.
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

Mountain name is unrecognizable in zone

select "Customer Name" from telecom
where ZONE= 'Mountain' 
not working and showing the output as 
0 rows selected*/

select "Customer Name" from telecom
where ZONE like'M%';