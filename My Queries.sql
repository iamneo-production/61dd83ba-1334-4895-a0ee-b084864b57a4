select "Customer Name" from TELECOM_CUSTOMER
where Product='Digital Subscriber Line';
select CustomerId, "Customer Name" from TELECOM_CUSTOMER
where "Customer Name" like 'sa%';
select CustomerId, "Customer Name" from TELECOM_CUSTOMER
where "Service Segment"='Gold';
select Product, count(Product) from TELECOM_CUSTOMER
group by Product;
select "Customer Name" from TELECOM_CUSTOMER
where ZONE='Mountain';