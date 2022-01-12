built in funtions
aggregate functions
Join functions

Amazon is one of the largest online stores operating in the United States of America. They

are maintaining four tables in their database. The Items table, Customers table, Orders

table and Delivery table. Each of these tables contains the following attributes:

1. Items: - itemid (primary key)

Itemname(type =varchar(50))

category

Price

Instock (type=int, greater than or equal to zero)

2. Customers:- custid (primary key)

Custname

Address

state

3. Orders:- orderid (primary key)

Itemid( refers to itemid of Items table)

Custid (refers to custid in customers table)

Quantity (type=int)

Orderdate (type=date)

4. Delivery:- deliveryid (primary key)

Custid (refers to custid in customers table)

Orderid (refers to ordered in orders table)

1. List the details of all customers who have placed an order

2. List the details of all customers whose orders have been delivered

3. Find the order date for all customers whose name starts in the letter‘J’

4. Display the name and price of all items bought by the customer‘Mickey’

5. List the details of all customers who have placed an order after January 2013 and not received delivery of items

6. Find the itemid of items which has either been ordered or not delivered. (UseSET UNION)

7. Find the name of all customers who have placed an order and have their orders

8. Find the custname of all customers who have placed an order but not having their orders delivered. (Use SET MINUS) delivered.(Use SET INTERSECTION)

9. Find the name of the customer who has placed the most number of orders.

10. Find the details of all customers who have purchased items exceeding a price of 5000$

11. Find the name and address of customers who has not ordered a ‘Samsung GalaxyS4’

12. Perform Left Outer Join and Right Outer Join on Customers & Orders Table.

13. Find the details of all customers grouped by state

14. Display the details of all items grouped by category and having a price greater than average price of allitems.

INSERT QUERY

insert into item values(1,'batman','toys',10,2) 

insert into item values(2,'laptop','electronics',699,5) 

insert into item values(3,'galaxy s4','electronics',500,15) 

insert into item values(4,'helmet','vehicles',111,20) 

insert into item values(5,'sony z5 premium','electronics',5005,1) 

insert into customers values(111,'elvin','202 jai street','delhi') 

insert into customers values(112,'patrick','street 1 harinagar','chennai') 

insert into customers values(113,'soman','puthumana p.o','kerala')

insert into customers values(114,'jaise','kottarakara','kerala') 

insert into customers values(115,'mickey','juhu','mumbai') 

insert into orders values(911,111,1,'11-oct-2014') 

insert into orders values(912,113,3,'29-jan-2012') 

insert into orders values(913,115,5,'16-may-2013') 

insert into orders values(914,114,4,'22-dec-2014') 

insert into delivery values(667,115,914)

insert into delivery values(669,111,911) 

insert into delivery values(670,113,912) 


CREATE TABLE ITEMS( ITEMID INT NOT NULL PRIMARY KEY,
ITEMNAME VARCHAR(50),ICATEGORY VARCHAR(30),PRICE INT,STOCK INT);

CREATE TABLE CUSTOMERS( CUSTID INT NOT NULL PRIMARY KEY,CUSTNAME VARCHAR(40),
ADDRESS VARCHAR(200),STATE VARCHAR(60));

CREATE TABLE ORDERS(ORDERID INT NOT NULL PRIMARY KEY,ITEMID INT,CUSTID INT,
QUANTITY INT,ORDERDATE DATE, FOREIGN KEY(ITEMID)REFERENCES ITEMS(ITEMID),
FOREIGN KEY(CUSTID) REFERENCES CUSTOMERS(CUSTID) );

CREATE TABLE DELIVERY( DELIVERYID INT NOT NULL PRIMARY KEY,CUSTID INT,ORDERID INT,
FOREIGN KEY(CUSTID) REFERENCES CUSTOMERS(CUSTID),FOREIGN KEY(ORDERID) REFERENCES ORDERS(ORDERID));



insert into ORDERS values(911,1,111,3,'11-oct-2014');

insert into ORDERS values(912,3,113,2,'29-jan-2012');

insert into ORDERS values(913,5,114,1,'16-may-2013');

insert into ORDERS values(914,4,115,7,'22-dec-2014');

insert into DELIVERY values(667,115,914);

insert into DELIVERY values(669,111,911);

insert into DELIVERY values(670,113,912);


1.SELECT * FROM CUSTOMERS INNER JOIN ORDERS ON ORDERS.CUSTID=CUSTOMERS.CUSTID;
2.SELECT * FROM CUSTOMERS INNER JOIN DELIVERY ON DELIVERY.CUSTID=CUSTOMERS.CUSTID;
3. SELECT ORDERS.ORDERDATE FROM ORDERS JOIN CUSTOMERS ON orders.custid = customers.custid 
 WHERE customers.CUSTNAME LIKE 'j%';
4.	SELECT ITEMS.ITEMNAME,ITEMS.PRICE FROM ITEMS INNER JOIN ORDERS ON ITEMS.ITEMID=ORDERS.ITEMID INNER JOIN CUSTOMERS ON ORDERS.CUSTID=CUSTOMERS.CUSTID WHERE CUSTOMERS.CUSTNAME LIKE '%mickey%';
5.	SELECT * FROM CUSTOMERS INNER JOIN ORDERS ON CUSTOMERS.CUSTID=ORDERS.CUSTID INNER JOIN delivery ON delivery.CUSTID=CUSTOMERS.CUSTID WHERE orders.orderdate >'01-jan-2013';
6.
