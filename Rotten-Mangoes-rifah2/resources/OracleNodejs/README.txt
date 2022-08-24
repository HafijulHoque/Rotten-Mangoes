1. Create a table named products in Oracle

CREATE TABLE products
( 
	id number(10),
	name varchar2(50) not null,
	price number(10,2),
	description varchar2(200),
	PRIMARY KEY (id)
);

2. Change the Oracle database name, username and password in the main.js file accordingly.

3. Run npm install oracledb

4. Run the main.js file (node main.js)



---
Rifat Shahriyar