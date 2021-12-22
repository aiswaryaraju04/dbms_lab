--Create a table named student and populate the table as shown in the table.

CREATE TABLE STUDENT(ROLL_NO int, NAME varchar(30), PHYSICS int, CHEMISTRY int, MATHS int );

--The table contains the marks of 10 students for 3 subjects(Physics, Chemistry, Mathematics).The total marks for physics and chemistry is 25.while for
 --mathematics it is 50.The pass mark for physics and chemistry is 12 and for mathematics it is 25. A student is awarded a ‘Pass’ if he has passed all the subjects.
 
 INSERT INTO STUDENT VALUES(1 ,'Adam',20,20,33);
 INSERT INTO STUDENT VALUES(2 ,'Bob',18,9,41); 
 INSERT INTO STUDENT VALUES(3 ,'Bright',22,7,31); 
INSERT INTO STUDENT VALUES(4 ,'Duke',13,21,20); 
INSERT INTO STUDENT VALUES(5 ,'Elvin',14,22,23); 
INSERT INTO STUDENT VALUES(6 ,'Fletcher',2,10,48); 
INSERT INTO STUDENT VALUES(7 ,'Georgina',22,12,22); 
INSERT INTO STUDENT VALUES(8 ,'Mary',24,14,31);
INSERT INTO STUDENT VALUES(9 ,'Tom',19,15,24); 
INSERT INTO STUDENT VALUES(10 ,'Zack',8,20,36); 


--1. Find the class average for the subject ‘Physics’

SELECT AVG(PHYSICS) FROM STUDENT;

16.2

--2. Find the highest marks for mathematics (To be displayed as highest_marks_maths).

SELECT MAX(MATHS) As HIGHEST_MARKS_MATHEMATICS FROM STUDENT;

48
SELECT * FROM STUDENT
ORDER BY TOTALMARK DESC;
--3. Find the lowest marks for chemistry(To be displayed as lowest_mark_chemistry)

SELECT MIN(CHEMISTRY) As LOWEST_MARKS_CHEMISTRY FROM STUDENT;

7

--4. Find the total number of students who has got a ‘pass’ in physics.

SELECT COUNT(PHYSICS) FROM STUDENT WHERE PHYSICS>11;

8

--5. Generate the list of students who have passed in all the subjects

SELECT * FROM STUDENT WHERE PHYSICS>11 AND CHEMISTRY>11 AND MATHS>24 ;

Adam
Mary

--6. Generate a ranklist for the class.Indicate Pass/Fail. Ranking based on total marks obtained by the students.

ALTER TABLE STUDENT
ADD RESULT VARCHAR(20);

UPDATE STUDENT SET TOTALMARK=PHYSICS+CHEMISTRY+MATHS;

SELECT * FROM STUDENT
ORDER BY TOTALMARK DESC;

--7. Find pass percentage of the class for mathematics

SELECT MAX((SELECT COUNT(MATHS) FROM STUDENT WHERE MATHS>24)/(SELECT COUNT(*) FROM STUDENT)*100)
FROM STUDENT;

--8. Find the overall pass percentage for all class.

SELECT MAX((SELECT COUNT(*) FROM STUDENT WHERE RESULT='PASS')/(SELECT COUNT(*) FROM STUDENT)*100)
FROM STUDENT;

--9. Find the class average.

SELECT AVG(TOTALMARK) FROM STUDENT;

--10. Find the total number of students who have got a Pass.

SELECT COUNT(*) FROM STUDENT WHERE RESULT='PASS';


