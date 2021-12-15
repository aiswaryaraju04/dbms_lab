CREATE TABLE BOOK(
Book_id int,
Title varchar(15),
Language_id INT,
MRP float,
Publisher_id INT,
Publisher_Date DATE,
Volume int,
Status varchar(15),
PRIMARY KEY(Book_id),
FOREIGN KEY(Language_id)REFERENCES LANGUAGES(Language_id),
FOREIGN KEY(Publisher_id)REFERENCES PUBLISHER(Publisher_id)
);

INSERT INTO BOOK VALUES(101,'INVISIBLE MAN',201,400,'26-12-2001',10,'AVAILABLE');
INSERT INTO BOOK VALUES(102,'GOD OF SMALL THINGS',202,900,'06-06-2010',5,'NOT AVAILABLE');
INSERT INTO BOOK VALUES(103,'MY STRANGE HERO',203,800,'28-10-2011',12,'AVAILABLE');

CREATE TABLE AUTHOR(
Auhor_id int,
A_Name varchar(15),
Email VARCHAR(15),
Phone_Number int,
Status VARCHAR(15)
);

INSERT INTO AUTHOR VALUES(301,'B.B.ROY','roy@gmail.com',987654321,'AVAILABLE');
INSERT INTO AUTHOR VALUES(302,'ARUNDHATHI ROY','aroy@gmail.com',123456789,'NOT AVAILABLE');
INSERT INTO AUTHOR VALUES(303,'SEUNG HO','ho@gmail.com',7306159179,'AVAILABLE');

CREATE TABLE BOOK_AUTHOR(
Book_Id int, 
Author_Id int
);

INSERT INTO BOOK_AUTHOR VALUES(101,301);
INSERT INTO BOOK_AUTHOR VALUES(102,302);
INSERT INTO BOOK_AUTHOR VALUES(103,303);

CREATE TABLE PUBLISHER(
Publisher_id INT,
P_Name VARCHAR(15),
Address varchar(15),
primary key(Publisher_id)
);

INSERT INTO PUBLISHER VALUES(401,'JEON','BUSAN');
INSERT INTO PUBLISHER VALUES(402,'JOHN','UK');
INSERT INTO PUBLISHER VALUES(403,'KIM','SEUOL');

CREATE TABLE MEMBERS(
Members_id int,
M_Name varchar(60),
Branch_code int,
Roll_number int,
phone_number int,
Email_id VARCHAR(125),
Date_of_Join DATE,
status int,
primary key(Members_id)
);

INSERT INTO MEMBERS VALUES(501,'LIZA','011',001,654231780,’liz@gmail.com’,'30-02-2016',1);
INSERT INTO MEMBERS VALUES(502,'ROSE','012',002,654782391,’rose@gmail.com’,'15-12-2016',1);
INSERT INTO MEMBERS VALUES(503,'JENNY','013',003,564782139,’jenny@gmail.com’,'25-05-2016',1);

CREATE TABLE BOOK_ISSUE
(
Issue_id int,
Date_of_issue date,
Book_id int,
member_id int,
exdatereturn date,
status varchar(10)
);

INSERT INTO BOOK_ISSUE VALUES(601,'30-02-2021',101,501,'15-03-2021 10:12','YES');
INSERT INTO BOOK_ISSUE VALUES(602,'01-03-2021',102,502,'16-03-2021','YES');
INSERT INTO BOOK_ISSUE VALUES(603,'29-02-2021',103,503,'14-03-2021','YES');


CREATE TABLE BOOK_RETURN
(
issue_id int,
Actualdate date,
Latedays varchar(10),
Latefee int
);

INSERT INTO BOOK_RETURN VALUES(601,'30-03-2021',6,50);
INSERT INTO BOOK_RETURN VALUES(602,'30-03-2021',6,50);
INSERT INTO BOOK_RETURN VALUES(603,'30-03-2021',6,50);


CREATE TABLE LANGUAGES(
Language_id INT,
L_Name VARCHAR(15),
PRIMARY KEY(Language_id)
);

INSERT INTO LANGUAGES VALUES(201,'ENGLISH');
INSERT INTO LANGUAGES VALUES(202,'HINDI');
INSERT INTO LANGUAGES VALUES(203,'KOREAN');


CREATE TABLE LATE_FEE_RULE
(
FromDays int, 
ToDays int, 
Amount int
);

INSERT INTO LATE_FEE_RULE VALUES(0,7,10);
INSERT INTO LATE_FEE_RULE VALUES(7,30,100);
INSERT INTO LATE_FEE_RULE VALUES(30,50,200);

DROP TABLE BOOK;
DROP TABLE AUTHOR;
DROP TABLE BOOK_AUTHOR;
DROP TABLE PUBLISHER;
DROP TABLE MEMBERS;
DROP TABLE BOOK_ISSUE;
DROP TABLE BOOK_RETURN;
DROP TABLE LANGUAGES;
DROP TABLE LATE_FEE_RULE;

SELECT * FROM BOOK;
SELECT * FROM AUTHOR;
SELECT * FROM BOOK_AUTHOR;
SELECT * FROM PUBLISHER;
SELECT * FROM MEMBERS;
SELECT * FROM BOOK_ISSUE;
SELECT * FROM BOOK_RETURN;
SELECT * FROM LANGUAGES;
SELECT * FROM LATE_FEE_RULE;

CREATE DATABASE Library;