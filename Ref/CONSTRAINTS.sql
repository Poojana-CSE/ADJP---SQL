 create table class1(Sno int,Sname varchar(23),Fname varchar(20),gender varchar(6),Address varchar(15),phone varchar(10))
sp_help clas1
insert into class1 values(1,'Anand','Kumar','Male','Erode','22254144')
insert into class1 values(1,'Anu','Raja','Female','Perundurai','2222144')
insert into class1(sno,Sname,Fname,Gender,address)values(2,'Anbu','jayaram','Male','Perundurai')
select * from class1
-- 1.Primary Key
  --1. Not Allow Dublicate Value
  --2. Not Allow Null Value
  --3. Used to Link Another Table
  --4. We can set Primary Key only one column in a table
--Set the Primary key While Creating Table

create table clas2(Sno int primary key,Sname varchar(23),Fname varchar(20),gender varchar(6),Address varchar(15),phone varchar(10))
insert into clas2 values(1,'Anand','Kumar','Male','Erode','22254144')
insert into clas2 values(2,'Anu','Raja','Female','Perundurai','2222144')
insert into clas2 values(2,'Anitha','Raja','Female','Perundurai','2222144') -- Error Since Sno 2 creates a duplicate
insert into clas2(Sname,Fname,Gender,address,phone)values('Anbu','jayaram','Male','Perundurai','234233') -- Error Because Sno is NULL
select * from clas2
alter table clas2 add constraint PKSno primary key (sno) -- the columns must contain Unique and Not null key previously
sp_help clas2
alter table clas2 drop constraint PK__clas2__76CBA758


insert into clas2 values(2,'Anuratha','Arumugam','Female','Perundurai','3355144')
drop table clas2

--------------
--2.Not Null--
-- 1. Not allow Null Value
-- 2. Allows the dublicate value
-- 3. We can add any number of columns in a table
drop table mark
create table mark(sno int not null,SName varchar(23)not null,m1 int,m2 int,m3 int,m4 int,m5 int,tot int)

insert into mark values(1,'Anand',99,99,100,99,99,496)
insert into mark values(1,'Arul',99,99,100,99,99,496)
insert into mark (sno,m1,m2,m3,m4,m5) values(1,99,99,100,99,99)
insert into mark (sname,m1,m2,m3,m4,m5) values('balu',99,99,100,99,99)
select * from mark
--3.Unique---
--   1.Not allow the dublicate value
--   2.Allows Null Values

--   3. We can add any number of columns in a table
create table hostel(sno int primary key,RoomNo int unique,SName varchar(23)not null,HFess int,MFees int)
drop table hostel
insert into hostel values(1,104,'Anand',4000,1500)
insert into hostel values(1,105,'deepa',4000,1500)--Error Because Sno 1 is a dublicte value
insert into hostel values(2,104,'Raja',4000,1500)--Error Because RoomNo 104 is a dublicte value

insert into hostel(sno,Sname,Hfess,Mfees) values(2,'Raja',4000,1500)
select * from hostel

-----------------------------
--4.Default 
------------
-- Used to set a default or initial value for a column. If we not give a value while insert it will automatically take the default value as we given in the default constraint.
drop table anu
create table anu (sno int unique,sname varchar(20),hfees int default 4500,adderss varchar(20) default 'gobi' )
insert into anu values (101,'sasi',5000,'erode')
insert into anu values (102,'kumar',5000,'govai')
insert into anu values (103,'Sutha',5000,'')
insert into anu (sno,sname,hfees)values (104,'somu',5000)
insert into anu (sno,sname)values (105,'gomathi')
select *from anu
.
---5.Check ---
-- used to validate the value while insertion
drop table result
create table result(sno int primary key,Sname varchar(22)not null,gender varchar(6) check(gender in('male','female')),Total int check(total between 0 and 500))
insert into result values(6,'Anand','Male',400)
insert into result values(2,'Anu','FMale',450) -- Error the gender value is Wrong
insert into result values(3,'Anu','FeMale',450)
insert into result values(4,'Anuratha','Female',650) -- Error the Total is greater than 500
select * from result

---6.foreign Key--
-- Used to link the tables
-- Main Table or Parent Table
create table stuMain(sno int primary key,Sname varchar(23)not null,gender varchar(6) check(gender in('male','female')),address varchar(25))
insert into stuMain values(1,'Anand','Male','Erode')
insert into stuMain values(2,'Anu','Female','perundurai')
select * from stumain

-- Sub Table 1 or Child Table 1
create table class1(sno int primary key foreign key references stuMain(sno),Sname varchar(22),Total int default 0,result varchar(6))
insert into class1 values(1,'Anand',450,'Pass')
insert into class1 values(2,'Anu',500,'Pass')
insert into class1 values(3,'Anbu',500,'Pass')
select * from class1

-- Sub Table 2 or Child Table 2
create table Library(sno int primary key foreign key references stuMain(sno),Sname varchar(22),BookName varchar(20),IssueDt datetime,dueDt datetime)
insert into Library(sno,sname) values (1,'Anand')
insert into Library(sno,sname) values (2,'Anu')
insert into Library (sno,sname)values(3,'Anu')
select * from Library
--------

delete from class1 where sno=1
delete from library where sno=1
delete from stuMain where sno=1
---------------------
--7.identity
-- used to set a automatic numbering for a column or field
-- Syntax identity(startingValue,increment)
create table emp(eno int identity(1000,1),Ename varchar(23),Salary numeric(8,2)) 
   -- here 1000 is Starting value of Eno and 1 is Increment
-- we should not insert value for Eno
-- We can't update the value of Eno
insert into emp values('Rajan',10000)
insert into emp values('Sathish',10000)
insert into emp values('Gayathri',10000)
insert into emp values('Divya',0000)
insert into emp values(100,'Rajan',10000)--Error
update emp set eno=10 where eno=1----Error
select * from emp
select ident_seed('emp') -- to Know the starting value of the Indentity
select ident_incr('emp')  -- to Know the Increment value of the Indentity


-- Add constraints using alter
create table stuInfo(
RegNo int,
SName varchar(15),
FName varchar(15),
MName varchar(15),
Gender varchar,
DOB Date,
Age tinyint,
Nationality varchar(12),
Category varchar(10),
Addr1 varchar(15),
Addr2 varchar(15),
City varchar(10),
Phone bigint,
Email varchar(25),
Aadhar bigint,
EMIS varchar(15))

alter table Stuinfo alter column RegNo int Not Null
alter table StuInfo add constraint PK_reg primary key(RegNO)
alter table stuinfo alter column SName varchar(15) not Null
alter table stuinfo add constraint UK_Sname unique(SName)
alter table stuinfo add constraint ck_gender check(Gender in('M','F','T'))
alter table stuinfo add constraint def_Nat default 'Indian' for Nationality

create table Van(RegNo int primary key,RoutNo int, StartPlace varchar(15))
alter table van add constraint fk_Reg foreign key (RegNo) references StuInfo(RegNo) 
-- Drop Constraints
--alter table StuInfo drop constraint PK_reg

sp_help emp_personal  
sp_help main