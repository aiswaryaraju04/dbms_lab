CREATE TABLE BOOKK(
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


CREATE TABLE AUTHOR(
Auhor_id int,
A_Name varchar(15),
Email VARCHAR(15),
Phone_Number int,
Status VARCHAR(15)
);


CREATE TABLE BOOK_AUTHOR(
Book_Id int, 
Author_Id int
);



CREATE TABLE PUBLISHER(
Publisher_id INT,
P_Name VARCHAR(15),
Address varchar(15),
primary key(Publisher_id)
);



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



CREATE TABLE BOOK_ISSUE
(
Issue_id int,
Date_of_issue date,
Book_id int,
member_id int,
exdatereturn date,
status varchar(10)
);




CREATE TABLE BOOK_RETURN
(
issue_id int,
Actualdate date,
Latedays varchar(10),
Latefee int
);


CREATE TABLE LANGUAGES(
Language_id INT,
L_Name VARCHAR(15),
PRIMARY KEY(Language_id)
);


CREATE TABLE LATE_FEE_RULE
(
FromDays int, 
ToDays int, 
Amount int
);


