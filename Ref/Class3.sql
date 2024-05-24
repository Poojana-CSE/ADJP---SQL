create database SQLClass
use 
create table emp1(Eno int,Ename varchar(15),FName varchar(15),Gender varchar(12),DOB datetime,Age int,Quali varchar(10),Designation varchar(15),Branch varchar(10),BSal int,Hra int,Da int,Ta int,Insurance int,Salary numeric(8,2),LoanStat varchar(4))
insert into emp1 values(1001,'Geetha','Chinnasamy','Female','1995-10-15',19,'BE','SE','Perundurai',25000,2500,250,250,500,27500,'No')
insert into emp1 values(1001,'Rajeswari','Krishnasamy','Female','1991-10-15',23,'MBA','HR','Perundurai',25000,2500,250,250,500,27500,'No')
insert into emp1 values(1001,'Santhiya','Thangavel','Female','1995-1-21',19,'BE','SE','Erode',25000,2500,250,250,500,27500,'Yes')
insert into emp1 values(1001,'Gokulraj','Muthusamy','Male','1994-02-09',20,'BE','TL','Perundurai',35000,3500,350,350,700,38500,'No')
insert into emp1 values(1001,'Pradhap','Velusamy','Male','1990-08-25',24,'MBA','HR','Erode',25000,2500,250,250,500,27500,'No')
insert into emp1(Eno,EName,Fname,Gender,DOB,Age,Quali,Designation,Branch,Bsal,LoanStat) values(1006,'Tamilselvan','Loganathan','Male','1991-10-05',23,'MCA','Programmer','Erode',20000,'No')
insert into emp1(Eno,EName,Fname,Gender,DOB,Age,Quali,Designation,Branch,Bsal,LoanStat) values(1006,'GokulPrasanth','Manickam','Male','1989-02-011',25,'Bsc','Hardware','Salem',20000,'No')
insert into emp1 values(1008,'Loganathan','Palanisamy','Male','1990-08-25',24,'MSc','SE','Salem',25000,2500,250,250,500,27500,'No')
insert into emp1(Eno,EName,Fname,Gender,DOB,Age,Quali,Designation,Branch,Bsal,LoanStat) values(1009,'Parthiban','Manikandan','Male','1989-04-5',25,'BCA','TETING','Erode',20000,'No')

create table EmpAtt(Eno int,EName varchar(5),WrkDays int, absnt int,LOP int)
alter table empatt alter column EName varchar(15)
insert into EmpAtt values(1001,'Geetha',200,20,5)
insert into EmpAtt values(1002,'Rajeswari',220,10,2)
insert into EmpAtt values(1003,'Santhiya',240,10,0)
insert into EmpAtt values(1004,'Gokulraj',150,20,25)
insert into EmpAtt values(1005,'Pradhap',210,10,5)
insert into EmpAtt values(1006,'Tamilselvan',100,50,50)
insert into EmpAtt values(1007,'GokulPrasanth',230,10,5)
insert into EmpAtt values(1008,'Loganathan',180,20,25)
insert into EmpAtt values(1009,'Parthiban',280,0,5)

select * from empatt
select * from emp1
select Eno,Ename,Gender,Designation,Salary from emp1
select Eno as EmpNum,Ename as EmpName,Gender,Designation,Salary as TotalSalary from emp1

select * from emp1 where salary<30000
select * from emp1 where salary>30000

select * from emp1 where age between 20 and 22
select * from emp1 where age between 18 and 25

select * from emp1 where gender='male'

select * from emp1 where gender='Female' and age>20
select * from emp1 where Designation='Hr' or branch='Erode'
select * from emp1 where Designation='Hr' and branch='Erode'

select * from emp1 where Branch in('Perundurai','Erode')
select * from emp1 where Branch not in('Perundurai','Erode')

select * from emp1 where Ename like 'G%'
select * from emp1 where Ename like 'Go%'
select * from emp1 where Ename like '__m%'

-- update tableName set ColumnName1=Value1,ColumnName2=Value2,.... [where Condition]
update emp1 set Eno=1002
update emp1 set Eno=1001 where Ename='Geetha'
update emp1 set Eno=1002 where Ename='Rajeswari'
update emp1 set Eno=1003 where Ename='Santhiya'
update emp1 set Eno=1004 where Ename='Gokulraj'
update emp1 set Eno=1005 where Ename='Pradhap'
update emp1 set Eno=1006 where Ename='Tamilselvan'
update emp1 set Eno=1007 where Ename='GokulPrasanth'
update emp1 set Eno=1008 where Ename='Loganathan'
update emp1 set Eno=1009 where Ename='Gomathi'
update emp1 set Eno=1010 where Ename='Parthiban'
update emp1 set Eno=1008 where eno=1002
update emp1 set Hra=Bsal*0.1
update emp1 set Da=HRA*0.1
update emp1 set Ta=HRA*0.1
update emp1 set insurance=HRA*0.2
update emp1 set Salary=(Bsal+hra+da+ta)-insurance
--  Senario1
-- =========
-- Sno,Sname,FName,Gender,DOB,Age,Section,M1,M2,M3,M4,M5,Total,Avrg,Result,Grade
  -- Grade Avrg>=95-> O Grade
  -- Grade Avrg>=90 to 94 -> A+ Grade
  -- Grade Avrg>=80 to 89 -> A Grade
  -- Grade Avrg>=70 to 79 -> B Grade
  -- Grade Avrg>=60 to 69 -> C Grade
  -- Grade Avrg>=35 to 59 -> D Grade
  -- Grade Avrg<35  Nil Grade
use sqlclass
select * from emp1
update emp1 set FName='Thangavel' where Eno=1003
-- delete from <tableName> [where clause]
delete from emp1
delete from emp1 where Eno=1008
truncate table emp1
-- Alter Table
-- Alter table <tableName> Add ColumnName Type
-- Alter table <tableName> alter Column ColumnName NewType/NewSize
-- Alter table <tableName> drop Column ColumnName
alter table emp1 add Experience int
alter table emp1 alter column Experience varchar(10)
alter table emp1 drop column Experience
sp_help emp1

drop table emp1


--   Senario2
--   =========
-- Create a Table As Follows
-- RegNo,SName,Gender,Age,Groups,M1,M2,M3,M4,M5,M6 Total,ECutOff,MCutoff
-- insert RegNo,SName,Gender,Age,Groups,M1,M2,M3,M4,M5,M6 [Groups--> Bio,CS,Arts]
-- calculate total using update query
-- Calculate MCutoff for only Bio Students M6/2 + M4/4 + M5/4 
-- Calculate ECutoff for only Bio and CS Students M3/2 + M4/4 + M5/4 
-- Add a New Column Result
-- Calculate Result using update query pass criteria is 70
-- show Student List using select query
-- 1. By Gender
-- 2. By Group
-- 3. By Result
-- 4. By CutOff
--SORTING
-- =======================
-- order by
select * from emp1 order by Ename
select * from emp1 order by Ename desc
select * from emp1 order by designation
select * from emp1 order by designation, EName
select * from emp1 order by designation asc, EName desc
--- Alias Name for columns
select Eno as EmployeeNum, EName as EmpName,FName as FatherName from emp1
-- Getting values from Multiple Tables
-- ====================================
select emp1.Eno,Emp1.EName,Emp1.Designation,EmpAtt.wrkdays,EmpAtt.absnt from emp1,EmpAtt where emp1.eno=empatt.eno
select a.Eno,a.EName,a.Designation,b.wrkdays,b.absnt from emp1 as a,EmpAtt as b where a.eno=b.eno
-- FUNCTIONS:
--===========
-- 1.Single Row Function (or) Scalar Function
-- 2. Aggregate Function (or) Group Functions

-- 1.Single Row Function (or) Scalar Function
 -- a)Numeric Functions
 -- b)String Functions
 -- c)Date and Time Functions
 -- d)System Functions
 -- e)Calculating Functions
 -- f)Conversion Functions
 -- g)Other Functions

-- a)Numeric Functions:
-- ====================
--1.abs(absolute)
select abs(-100)-- returns only Possitive Value [ans=100]
select Ename,abs(age) from emp1

--2.cos
select cos(0)-- returns Cos Value

--3.Sin
select sin(15)-- returns sin Value

--4.tan
select tan(20)-- returns tan Value

--5.cot
select cot(90)-- returns cot Value

--6.log
select log(10)-- returns log Value

--7.exp(exponent)
select exp(7.1)

--8.pi(pi value is 22/7)
select pi()--returns the pi() value

--9.sign()-- returns  the sign if the value is negative then returns -1
	  --if the value is Positive then returns 1
	  --if the value is Zero then returns 0
select sign(-2)--ans is -1
select sign(-1232)--ans is -1
select sign(2)--ans is 1
select sign(3434)--ans is 1
select sign(0)--ans is 0

--10.SQRT()--squar root of
select sqrt(100)--ans is 10
select sqrt(64)--ans is 8
select sqrt(2)--ans is 1.414...
select sqrt(144)--ans is 12
select Sqrt(age) from emp1

--11.ceiling()--gives the next whole number
select ceiling(12.3)--ans is 13
select ceiling(12.9)--ans is 13
select ceiling(0.5)--ans is 1
select ceiling(0.03)--ans is 1

--12.floor()--gives the previous whole number
select floor(12.3)--ans is 12
select floor(12.9)--ans is 12
select floor(0.5)--ans is 0
select floor(0.03)--ans is 0

--13.rand()--gives the Random number [any values 0 and 1 ]
select rand() 

--14.degrees()--Convert the  value Radians to Degree
select degrees(2)--ans is 114
select degrees(10)--ans is 572
select degrees(5)--ans is 286
select degrees(.11)--ans is 6.302...

--15.radians()--Convert the  value Degree to Radians
select radians(57)--ans is 0
select radians(114)--ans is 1
select radians(171)--ans is 2
select radians(228)--ans is 3

--16.round()--round a value given decimal Place
select round(12.534,0)--ans is 13
select round(12.434,0)--ans is 12
select round(12.554,1)--ans is 12.60
select round(12.534,2)--ans is 12.53
select round(12.437,2)--ans is 12.44

--17.Power--Gives the power of given value
select power(2,2)--it means 2 power 2 Result is : 4 
select power(2,4)--it means 2 power 4 Result is : 16
select power(10,2)--it means 10 power 2 Result is : 100
select power(8,4)--it means 8 power 4 Result is : 4096
-------------------------------------------------------------
--String Functions:
--=================
--1.ascii-->(American Standard Code for Information Interchange) 
	 --used to Convert the character to Ascii value
select ascii ('a')--ans : 97

--2.char--used to Convert the Ascii value to character
select Char (97)--ans : a

--3.charIndex
--display the character position on  given string
select charindex('c','Welcome')--ans : 4
select EName,charindex('a',EName) from Emp1

--4.lower--converts the given string in small letters(lower case)
select lower('WELCOME')--Ans : welcome

--5.Upper--converts the given string in Capital letters(upper case)
select upper('Welcome')--Ans : WELCOME

--6.Ltrim--removes the Extra blank spaces in a string left side

select ltrim('     welcome')--ans :welcome

--7.Rtrim--removes the Extra blank spaces in a string Right side

select Rtrim('welcome        ')--ans :welcome

--8.Len--display the number of characters in a string
select len('welcome')--ans : 7
select EName,len(Ename) from emp1

--9.Left-- Get the Part of the given String from left specified length
select left('welcome',3)--ans : wel (The first 3 characters)

--10.Right--Get the Part of the given String from Right side specified length
select Right('welcome',4)--ans : come (The Last 4 characters)

--11.substring--Get the Part of the given String from specified position, specified length
--syntax:
	--(string,startingPosition,Number of Characters)
select substring('welcome',4,2)--ans : co (The 2 characters from the 4th Position)

--12.reverse--Reverse the given string
select reverse('welcome')--ans:emoclew

--13. replace--replace a part of string into given string
select replace('welcome','wel','dont ')--ans : dont come [here 'wel' replaced by 'dont']

--14.replicate Prints the Given Character given Number of time
select replicate('*',10)--Ans:**********
select replicate('$',4)--Ans:$$$$


--15.Space--Prints the Given Character given Number of time
select 'welcome' + space(10)  + 'to' + space(5) + 'csc'--ans : welcome          to     csc

--16.stuff
select stuff('Computer',5,4,'onent')--ans : Component
select stuff('Rajasekar',4,4,'kum')--ans:Rajkumar
select stuff('SoundarRajan',8,3,'Priy')--ans:SoundarPriyan

--17.str--converts the Numeric value into String Value
select 'Rajan got ' + str(100) + 'marks'
select * from emp1
select EName + ' Age is ' + str(Age) from emp1
select sname + '============>' + str(mark1) from student
-------------------------------------------------------------
-- Date Functions:
-- ===============
--1.getdate()--returns the current system Date
select getdate()
select getdate()+10--add 10 days with current date

--2.day()--Returns the Day of Given Month
select day(getdate())--returns the day of current Month
select day(convert(datetime,'8/15/1947'))--returns 15 since the date value of given date is 15

--3.datename(datepart,Date)--Returns the Name of the DatePart
--DateParts
--dd --->Day
--mm --->month
--yy --->year
--hh --->hour
--mi --->minutes
--ss --->second
select datename(dw,getdate())
select datename(dw,convert(datetime,'11/25/1989'))
select datename(dw,convert(datetime,'08/15/1983'))
select datename(dw,convert(datetime,'04/2/1990'))
select datename(dw,convert(datetime,'11/29/2011'))


--4.datepart(stpRT,date)
select datepart(dd,getdate())
select datepart(mm,getdate())
select datepart(yy,getdate())
select datepart(hh,getdate())
select datepart(mi,getdate())
select datepart(ss,getdate())

--5.DateAdd(DatePart(Day/Month/Year),Value,DateObject)
select dateadd(dd,44,getdate())
select dateadd(mm,50,getdate())
select dateadd(yy,44,getdate())
select dateadd(hh,44,getdate())
select dateadd(dd,10,convert(datetime,'10/11/2011'))

--6.datediff(datepart,date1,date2)
select datediff(yy,convert(datetime,'08/15/1947'),getdate())
select datediff(mm,convert(datetime,'08/15/1947'),getdate())
select datediff(dd,convert(datetime,'08/15/1947'),getdate())
select datediff(wk,convert(datetime,'08/15/1947'),getdate())
select datediff(yy,convert(datetime,'09/05/1986'),getdate())
select datediff(yy,convert(datetime,'09/05/1991'),getdate())
select datediff(yy,convert(datetime,'11/25/1989'),getdate())

--7.month(date)
select month(getdate())

--8.year(date)
select year(getdate())
select year(convert(datetime,'10/11/2002'))

--9.Isdate()
select isdate('10/11/2011')
select isdate(getdate())
select isdate('10/35/2011')
select isdate('02/29/2011')
select isdate('02/29/2000')
-----------------------------------------------------------------
--System function:
--================
select db_name()--Returns default database Name
select db_id()--Returns default database Id
select db_id('Raji')--Returns the Specified Database Id
		    --here 'gayu' is a database
select datalength('Deivasigamani')--returns the Datalength in Bytes here 'Soundar' will occupay 7 Bytes of Memory
select datalength(12453.575)--5 Bytes
select datalength(10)--4 bytes
select host_Name()--returns computer / System name
select object_id('emp1')--returns the Id for given table name
select object_name(1993058136)--returns the Table Name for given id
select user_name()--returns the user Name
select user_id('dbo')--Returns the User Id for Given user name

--The Ways to List out the Tables
--===============================
select * from sysobjects where xtype='u'
select * from information_schema.tables
EXEC sp_tables @table_type = "'TABLE'"
-------------------------------------------------------------
--e)Calculating Functions:
--========================
select Ename,Salary+500,Salary from emp1
select Ename,Salary*2,Salary from emp1
select Ename,Salary/2,Salary from emp1
select Ename,Salary-5000,Salary from emp1
select Ename,Salary%1,Salary from emp1
select * from emp1

--g)Other Functions:
--==================
select ename,isnull(Salary,0) from emp1 
select sname,isnull(mark2,10) from student 
select isnumeric(Eno) from emp1 
select isnumeric(mark1) from student 
 
select isdate(dob) from emp1 
select isdate(sname) from student 
select ename,coalesce(salary,55000) from emp1 
select sname,coalesce(mark2,55) from student 

select * from emp1

--2.Aggregate Function (or) Group Functions:
--==========================================
select sum(salary) from emp1
select sum(mark2) from student
select avg(Salary) from emp1
select avg(mark2) from student
select min(Salary) from emp1
select min(mark2) from student
select max(Salary) from emp1
select max(mark2) from student
select count(*) from emp1
select count(mark2) from student
select max(Salary) as 'higest Salary',min(Salary) as 'lowest Salary' from emp1 where gender='female'
select * from student


