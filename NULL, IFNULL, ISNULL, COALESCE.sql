SELECT * FROM customers;

SELECT *, 
ISNULL(state) as is_null,
IFNULL(state,"This value is null") as if_null
FROM customers


use test;
CREATE TABLE null_demo(
value1 VARCHAR(50),
value2 VARCHAR(50),
value3 VARCHAR(50)
);

INSERT INTO null_demo VALUES ("A","B","C"),(NULL,"B","C"),(NULL,NULL,"C");

SELECT * FROM null_demo;

SELECT *,
#isnull(value1) as is_value1_null,
#ifnull(value1,value2) as if_value1_null_value2,
coalesce(value1,value2,value3) as coalesce_values
FROM null_demo;


SELECT * 
, coalesce(state,0) as state_0
, coalesce(addressLine1,addressLine2,city,state,country) as address1
, coalesce(addressLine2,city,state,country) as address2
FROM customers;
