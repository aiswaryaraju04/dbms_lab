//additional

UPDATE book_return set latefee = latefee + (latefee*0.1);

select * from book;

//exp3

CREATE TABLE angle (angle int,sin decimal(4,2),cos decimal(4,2),tan decimal(4,2),cot decimal(4,2),sec decimal(4,2));
INSERT INTO angle(angle) values (90);

update angle set COT=cos(angle*2* 3.141/360)/sin(angle*2* 3.141/360) where angle>0;

update angle set  TAN=sin(angle*2* 3.141/360)/cos(angle*2* 3.141/360) where angle<90;

update angle set SEC=1/cos(angle*2* 3.141/360);

ALTER TABLE ANGLE MODIFY SEC NUMERIC(8,2);


update angle set SEC=1/cos(angle*2* 3.141/360) WHERE ANGLE>90;








