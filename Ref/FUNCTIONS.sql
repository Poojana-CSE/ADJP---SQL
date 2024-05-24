-- FUNCTIONS:
-n-===========
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
select Ename,left(Ename,4) from emp1
--10.Right--Get the Part of the given String from Right side specified length
select Right('welcome',4)--ans : come (The Last 4 characters)
select Ename,right(Ename,3) from emp1
--11.substring--Get the Part of the given String from specified position, specified length
--syntax:
	--(string,startingPosition,Number of Characters)
select substring('welcome',4,2)--ans : co (The 2 characters from the 4th Position)
select EName,substring(Ename,4,2) from emp1

--12.reverse--Reverse the given string
select reverse('welcome')--ans:emoclew
select Ename,reverse(EName) from emp1

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
select 'Rajan got ' + 100 + 'marks' --  Error in conversion Number to String
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
-- dw----> day of week
select datename(dw,getdate())
select datename(dw,convert(datetime,'11/25/1989'))
select datename(dw,convert(datetime,'08/15/1983'))
select datename(dw,convert(datetime,'09/5/1991'))
select datename(dw,convert(datetime,'09/5/1986'))
select datename(dw,convert(datetime,'04/2/1990'))
select datename(dw,convert(datetime,'02/04/1995'))
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
select db_id('Master')--Returns the Specified Database Id
		    --here 'master' is a database
select datalength('soundar')--returns the Datalength in Bytes here 'Soundar' will occupay 7 Bytes of Memory
select datalength(12453.575)--5 Bytes
select datalength(10)--4 bytes
select host_Name()--returns computer / System name
select object_id('emp1')--returns the Id for given table name
select object_name(2025058250)--returns the Table Name for given id
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
select sname,mark1+5,mark2 from student
select sname,mark1*2,mark2 from student
select sname,mark1-5,mark2 from student
select sname,mark1/5,mark2 from student
select sname,mark1%5,mark2 from student
select * from emp1

--g)Other Functions:
--==================
select * from emp1
update emp1 set age=null where age<24
select ename,age from emp1
select ename,isnull(age,0) from emp1 
select ename,isnull(age,20) from emp1 
select ename,age,isnumeric(age) from emp1 
select Ename,age,isdate(age) from emp1 
select Ename,dob,isdate(dob) from emp1 
select sname,coalesce(m1,20) from student 
select sname,coalesce(mark2,55) from student 
select nullif(age,hra) from emp1

select * from emp1
--2.Aggregate Function (or) Group Functions:
--==========================================
select sum(salary) from emp1
select sum(insurance) from emp1
select sum(Hra) from emp1
select avg(salary) from emp1
select avg(hra) from emp1
select min(salary) from emp1
select min(age) from emp1
select max(salary) from emp1
select max(age) from emp1
select count(*) from emp1
select count(age) from emp1
select max(Salary) as 'higest Salary',min(Salary) as 'lowest Salary' , gender from emp1 group by gender
select * from emp1