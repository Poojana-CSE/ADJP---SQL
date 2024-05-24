Use CSC
--Math Functions
================
select abs(-45.34)
select cos(1)
select sin(2)
select cot(3)
select log(10)
select log10(10)
select sqrt(25)
select power(2,6)
select round(156.365856,1)
select round(156.365856,2)
select round(156.365856,3)
select round(156.365836,4)
select round(156.565856,0)
select ceiling(13.01)
select FLOOR(13.0)
--String Functions

select ascii('A')
select char(69)
select lower('INDIA')
select upper('india')
select len('India')
select len(ltrim('     India'))
select len(ltrim('     India'))
select len(rtrim('   sql       ' ))
select left('India',2)
select right('India',3) 
select stuff('India',2,2,'bhg')
select REPLACE('india','ia','ex')

--Date functions
select getdate() 'Todays date'
select getdate()+5 'add 5 days from today'
select getdate()-5 '-5 days from today'
select year(getdate())
select year('1947-08-15')
select month(getdate())
select day(getdate())

select dateadd(mm,10,getdate())
select dateadd(yy,10,getdate())
select dateadd(dd,10,getdate())
select dateadd(ww,10,getdate())
select dateadd(dd,-10,getdate())
select dateadd(hh,10,getdate())
select dateadd(MINUTE,10,getdate())

select datediff(yy,'12-5-2003',getdate())
select datediff(mm,'1-1-2006',getdate())
select datediff(dd,'1-1-2006',getdate())
select datediff(ww,'1-1-2006',getdate())
select datediff(hh,'1-1-2006',getdate())
select datediff(MI,'1-1-2006',getdate())
select datediff(SECOND,'1-1-2006',getdate())

select datepart(yy,'5-25-2006')
select datepart(mm,'5-25-2006')
select datepart(DD,'5-25-2006')


--Database functions
select db_name()
select db_id('master')
select host_name()
select object_id('StuInfo')
select suser_id('sa')  --server user
select user_id('dbo')
select user_name(2)

SUM
MIN
MAX
COUNT
AVG
select * from StuInfo 
select SUM(fees) from StuInfo 
select avg(fees) from StuInfo 
select MAX(fees) from StuInfo 
select Min(fees) from StuInfo 
select COUNT(Email) from StuInfo  
select Course, COUNT(Course) as courseCount from StuInfo group by Course  
select Course, COUNT(Course) as courseCount from StuInfo group by Course having Course='ADJP'
select Gender, COUNT(Gender) as courseCount from StuInfo group by gender having Gender='m'
