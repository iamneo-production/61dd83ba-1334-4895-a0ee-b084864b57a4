/* 
1ST QUESTION IS, WRITE A SQL QUERY TO LIST OF CUSTOMER NAMES WHO ARE USING PRODUCT DIGITAL SUBSCRIBER LINE?

CREATE INDEX IDX_PRODUCT ON TELECOM("PRODUCT"); WHICH WAS IMPLIMENTED INTERNALLY IN THE PRODUCTS COLUMN and 
alternative method like '%' can also be used
Optimized method by Srija G */
SET TIMING ON
SELECT "Customer Name" FROM TELECOM
WHERE PRODUCT='Digital Subscriber Line';




/* 2ND QUESTION IS, WRITE A SQL QUERY TO LIST CUSTOMER_ID AND NAME? 
optimized approach
CREATE INDEX IDX_CUSTOMER_NAME ON TELECOM("Customer Name");*/
SELECT CUSTOMERID, "Customer Name" FROM TELECOM
WHERE "Customer Name" LIKE 'sa%';





/* 3RD QUESTION IS, WRITE A SQL QUERY TO LIST CUSTOMER IDS AND NAMES FOR CUSTOMERS BELONGING TO THE GOLD CUSTOMER SEGMENT?
There is no gold word in Customer Segment. It is present in Service segment.*/

SELECT CUSTOMERID, "Customer Name" FROM TELECOM
WHERE "Service Segment"='Gold';


--4TH QUESTION IS, WRITE A SQL QUERY TO COUNT THE CUSTOMER LIST PRODUCT-WISE?

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