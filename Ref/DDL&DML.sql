		SQL
		====
--SQL -->Structure Query Language

--Division of SQL:
--================
	--I.DDL (data definition language)
	--II.DML (data manipulation language) 
	--III.DCL (data control language) 

--I.DDL commands:
--===============
	--1.create command
	--2.alter command
	--3.drop command

--1.create command:
--=================
create database gayu
create table student (sno int,sname varchar(20),gender varchar(6),mark1 int,mark2 int)

--To view the structure:
--======================
sp_help student

--2.alter command:
--================
alter table student add total int,average int 
alter table student alter column average numeric(5,2)
alter table student drop column total,average

--3.drop command:
--===============
drop table student 
drop database gayu

--open to existing database:
--==========================
use gayu 

--------------------------------------------------------------------------

--II.DML command:
--===============
	--1.insert command
	--2.select command
	--3.update command
	--4.delete command

--1.insert command:
--=================
insert into student values (1,'revathi','female',63,63)
insert into student values (2,'kokila','female',75,53)
insert into student values (3,'murugan','male',45,42)
insert into student values (4,'sathish','male',46,65)
insert into student values (5,'krithika','female',86,77)
insert into student values (6,'kodhai','female',85,48)
insert into student values (7,'gayu','female',76,92)

--add record to perticular field:
--===============================
insert into student (sno,sname,gender)values (8,'kumar','male')
insert into student (sno,sname,gender) values (9,'deepa','female')
insert into student (sno,sname,gender) values (10,'mohan','male')

--2.select command:
--=================
select * from student
select sname from student
select sname,gender from student
select sname,mark1,mark2 from student

--using order by condition:
--========================= 
select * from student order by sname  asc
select * from student order by sname  desc
select sname from student order by sname  asc
select sname from student order by sname  desc
select sno,sname,gender from student order by sname  asc
select sno,sname,gender from student order by sname  desc
select * from student order by sname,sno,gender  asc
select * from student order by sname,sno,gender  desc

--using top condition:
--====================
select top 5 * from student

--using where condition:
--======================
select * from student where sname='krithika'
select sno,sname from student where sname='kodhai'
select * from student where gender='female'
select sno,sname from student where gender='male'
select * from student where mark1=45
select sno,sname,mark2 from student where mark2=77

--concatenate string:
--===================
alter table student alter column mark1 varchar(3)
alter table student alter column mark2 varchar(3)
select sname +' mark1 is '+ mark1 from student
select sname +' mark2 is '+ mark2 from student
select sname +' mark1 is '+ mark1 from student where sno=1
select sname +' mark2 is '+ mark2 from student where sname='deepa'
select sname +' mark1 is '+ mark1,+' mark2 is '+ mark2 from student
select sname +' --> '+ mark1,sname +' --> '+ mark2 from student
select sname +' --> '+ mark1 +' --> '+ mark2 from student

--using logical operators:
--========================
select * from student where sname='krithika' or mark1=76
select * from student where sname='deepa' or gender='male'
select * from student where sname='krithika' and mark1=81
select * from student where sname='kodhai' and gender='female'

--using comparition operators:
--============================
select * from student where  mark1=75
select * from student where  mark1>60
select * from student where  mark1<60
select * from student where  mark1<=75
select * from student where  mark1>=45
select * from student where  mark1<>85
select * from student where  mark1!=75
select * from student where  sname<'k'
select * from student where  sname>'k'

--using between condition:
--========================
select * from student where sno between 4 and 6
select * from student where  mark1 between 46 and 62

--using is condition:(null&not null command):
--===========================================
select * from student where mark1 is null
select * from student where mark1 is not null

--using in condition:
--===================
select * from student where  sname in ('kodhai','krithika','gayu')
select * from student where  sno in(1,6,7)
select * from student where  mark1 in(80,76,56)
select * from student where  mark1 in(80,76,56) or mark2 in(42,65,77)

--using like condition:
--=====================
select * from student where  sname like'k%'
select * from student where  sname like'kodha_'
select * from student where  sname like'k[or]%'
select * from student where  sname like'k[a-p]%'
select * from student where  sname like'k[o^u]%'
select * from student where  mark1 like'5%'
select * from student where  mark1 like'7_'
select * from student where  mark1 like'8[50]%'
select * from student where  mark1 like'8[0-5]%'
select * from student where  mark1 like'8[0^7]%'

--using as condition:
--===================
select mark1 as studentmark1 from student
select mark2 as studentmark2 from student
select sname as studentname from student
select mark1 as studentmark1,mark2 as studentmark2 from student
select sname as studentname,mark1 as studentmark1,mark2 as studentmark2 from student

--using distinct clause:
--======================
insert into student values (5,'krithika','female',86,77)
insert into student values (6,'kodhai','female',85,48)
insert into student values (7,'gayu','female',76,92)
select * from student
select distinct sno from student
select distinct sname from student
select distinct gender from student
select distinct mark1 from student
select distinct mark2 from student

--using select into statement:
--============================
select sno,sname,gender into  student1 from student
select * from student1
select * from student
sp_help student1
drop table student1

--3.update command:
--=================
update student set mark1=67,mark2=78 where mark1 is null 
update student set mark1=56,mark2=53 where sname='kumar'
update student set mark1=66,mark2=55 where sno=10
update student set mark1=mark1+5 
update student set mark1=mark1-5 
update student set mark1=mark1+5 where sname='kokila' 
update student set mark1=mark1-5 where sname='krithika'
update student set mark1=40 where sno=1
update student set mark1=45 where sno between 1 and 3 
update student set mark1=86 where sno in (1,3)
update student set mark1=39 where  sname like 'ku%'
select * from student

alter table student add total int
alter table student add average numeric(5,2)
alter table student add result varchar(5) 
alter table student add grade varchar(2) 
alter table student alter column mark1 int
alter table student alter column mark2 int
sp_help student

update student set total=mark1+mark2
update student set average=total/2
update student set result='pass' where mark1>=45 and mark2>=45
update student set result='fail' where mark1<45 or mark2<45
update student set grade='A+' where result='pass' and average>=70 
update student set grade='B+' where result='pass' and average between 60 and 69
update student set grade='C' where result='pass' and average  between 45 and 59
update student set grade='F' where result='fail' 
select * from student


--3.delete command:
--=================
delete from student where sno=2 
delete from student where sname='kumar'
delete from student where mark1 is null
delete from student where mark1 is not null 
delete from student where  gender='female'
delete from student where mark1>=55 and mark2>=55 
delete from student where mark1>=95 or mark2>=55  
delete from student where sno between 1 and 3 
delete from student where sno in (4,9)
delete from student where  sname like 'ku%'
delete from student where  sname<'k'
delete from student where  sname>'k'
delete from student  

--truncate table:
--===============
truncate table student

--------------------------------------------------------------------------
