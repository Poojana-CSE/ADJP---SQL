create database Db1
use db1
create table MarkList(Sno int,Sname varchar(20),Fname varchar(20),Gender varchar(1),DOB DateTime,Age int,M1 int,M2 int,M3 int,M4 int,M5 int,Total int,Avrg numeric(5,2),Result varchar(5),Grade varchar(4))
sp_help MarkList
insert into MarkList values(1,'Anand','Raja','M','1995-10-25',19,99,98,99,96,94,486,97.2,'Pass','O')
insert into MarkList(Sno,Sname,FName,Gender,DOB,Age,M1,M2,M3,M4,M5) values(2,'Banu','Kumar','F','1994-12-22',20,39,28,19,16,4)

use sqlclass
create table emp1(Eno int,Ename varchar(15),FName varchar(15),Gender varchar(12),DOB datetime,Age int,Quali varchar(10),Designation varchar(15),Branch varchar(10),BSal int,Hra int,Da int,Ta int,Insurance int,Salary numeric(8,2),LoanStat varchar(4))
insert into emp1 values(1001,'Geetha','Chinnasamy','Female','1995-10-15',19,'BE','SE','Perundurai',25000,2500,250,250,500,27500,'No')
insert into emp1 values(1001,'Rajeswari','Krishnasamy','Female','1991-10-15',23,'MBA','HR','Perundurai',25000,2500,250,250,500,27500,'No')
insert into emp1 values(1001,'Santhiya','Thangavel','Female','1995-1-21',19,'BE','SE','Erode',25000,2500,250,250,500,27500,'Yes')
insert into emp1 values(1001,'Gokulraj','Muthusamy','Male','1994-02-09',20,'BE','TL','Perundurai',35000,3500,350,350,700,38500,'No')
insert into emp1 values(1001,'Pradhap','Velusamy','Male','1990-08-25',24,'MBA','HR','Erode',25000,2500,250,250,500,27500,'No')
insert into emp1(Eno,EName,Fname,Gender,DOB,Age,Quali,Designation,Branch,Bsal,LoanStat) values(1006,'Tamilselvan','Loganathan','Male','1991-10-05',23,'MCA','Programmer','Erode',20000,'No')
insert into emp1(Eno,EName,Fname,Gender,DOB,Age,Quali,Designation,Branch,Bsal,LoanStat) values(1006,'GokulPrasanth','Manickam','Male','1989-02-011',25,'Bsc','Hardware','Salem',20000,'No')
insert into emp1 values(1008,'Loganathan','Palanisamy','Male','1990-08-25',24,'MSc','SE','Salem',25000,2500,250,250,500,27500,'No')
insert into emp1 values(1009,'Gomathai','Samynathan','Female','1990-06-05',24,'MCOm','ACC','Salem',25000,2500,250,250,500,27500,'No')

select * from emp1
select Eno,EName,Age,Quali,Branch from emp1
-- Select with Alias Column Nam
select Eno as EmpNo,EName as EmpName,Age,Quali as Qualification, Branch from emp1
-- Row Level Filtering
-- ===================
select * from emp1
select Eno,Ename,Gender,Designation,Salary from emp1
select Eno as EmpNum,Ename as EmpName,Gender,Designation,Salary as TotalSalary from emp1
-- Operators
-- Less than 		<
-- Greater than 	>
-- Less Than or Equal 	<=
-- Greater than Equal 	>=
-- Equal to 		=
-- Not Equal		<>
-- LOGICAL OPERATORS
--=====================================
  -- Logical AND	and
  -- Logical Or		or
  -- Local Not		not
-- Filter a range of values
-- Between StartingValue And EndingValue
select * from emp1 where salary<30000
select * from emp1 where salary>30000

select * from emp1 where age between 20 and 22
select * from emp1 where age between 18 and 25

select * from emp1 where gender='male'

select * from emp1 where gender='Female' and age<20
select * from emp1 where Designation='Hr' or branch='Erode'
select * from emp1 where Designation='Hr' and branch='Erode'

select * from emp1 where Branch in('Perundurai','Erode')
select * from emp1 where Branch not in('Perundurai','Erode')

select * from emp1 where Ename like 'G%'
select * from emp1 where Ename like 'Go%'
select * from emp1 where Ename like '%a'
select * from emp1 where Ename like '__m%'

use sandy

