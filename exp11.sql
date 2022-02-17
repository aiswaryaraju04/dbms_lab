create table irin(custid int,names varchar(20));
insert into irin values(1,'anna');
grant select on irin to c19csa49;
grant select,insert on irin to c19csa49;
select * from irin;
