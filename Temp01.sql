create database gokul
use gokul 
create table student(
RegNo varchar(10),
Sname varchar(20),
Gender char,
DOB date,
m1 int,
m2 int,
m3 int,
m4 int,
m5 int,
Total int,
Average numeric(5,2),
Percentage  numeric(5,2),
Result varchar(4),
Grade varchar(3))
sp_help student --(only sql server)
-- desc student -- other databases like mySQL
insert into student values('20ECR0001','Anu','F','2003-10-15',76,67,65,56,76,0,0,0,'','')
insert into student (RegNo,Sname,Gender,DOB,m1,m2,m3,m4,m5) values('20ECR0002','Banu','F','2003-11-15',45,68,64,64,56)
insert into student (RegNo,Sname,Gender,DOB,m1,m2,m3,m4,m5) values('20ECR0003','Kalaivanan','M','2003-08-15',66,76,89,86,46)
insert into student (RegNo,Sname,Gender,DOB,m1,m2,m3,m4,m5) values('20ECR0004','Swetha','F','2003-10-04',66,74,64,76,96)
insert into student (RegNo,Sname,Gender,DOB,m1,m2,m3,m4,m5) values('20ECR0005','Aarthi','F','2003-03-18',69,64,64,78,96)
insert into student (RegNo,Sname,Gender,DOB,m1,m2,m3,m4,m5) values('20ECR0006','Sandhiya','F','2003-04-15',66,64,64,30,75)
insert into student (RegNo,Sname,Gender,DOB,m1,m2,m3,m4,m5) values('20ECR0007','Kavishna','F','2003-03-09',66,64,64,36,56)
insert into student (RegNo,Sname,Gender,DOB,m1,m2,m3,m4,m5) values('20ECR0008','Ravi','M','2003-02-28',66,64,64,36,56)
insert into student (RegNo,Sname,Gender,DOB,m1,m2,m3,m4,m5) values('20ECR0009','Reka','F','2003-1-15',66,64,64,36,56)
insert into student (RegNo,Sname,Gender,DOB,m1,m2,m3,m4,m5) values('20ECR0010','Subhika','F','2003-08-15',66,64,94,56,96)
insert into student (RegNo,Sname,Gender,DOB,m1,m2,m3,m4,m5) values('20ECR0011','Archana','F','2003-09-01',66,44,64,36,56)
insert into student (RegNo,Sname,Gender,DOB,m1,m2,m3,m4,m5) values('20ECR0012','Gokul','M','2003-07-15',56,74,74,97,56)
insert into student (RegNo,Sname,Gender,DOB,m1,m2,m3,m4,m5) values('20ECR0013','Raja','M','2003-12-15',66,64,64,36,100)
insert into student (RegNo,Sname,Gender,DOB,m1,m2,m3,m4,m5) values('20ECR0014','Deepthi','F','2003-01-19',66,87,64,57,56)
insert into student (RegNo,Sname,Gender,DOB,m1,m2,m3,m4,m5) values('20ECR0015','Tharun','M','2003-11-22',66,66,64,36,56)
insert into student (RegNo,Sname,Gender,DOB,m1,m2,m3,m4,m5) values('20ECR0016','Savitha','F','2003-05-14',57,67,64,36,56)

selEct * frOm student 
select Regno,Sname, Total from student 
select Regno,Sname as StudentName, Total from student 
select Regno,Sname as 'Student Name', Total from student 
select Regno,Sname 'Student Name', Total from student 
select RegNo,Sname, (m1+m2+m3+m4+m5) as Total,(m1+m2+m3+m4+m5)/5 as Average from student 
---where clause
select * from student where Gender='f'
select * from student where Gender='m'
Relational Operator (<.>,<=.>=,=,<>)
Logigal (And,Or,Not)
in, is, like
select * from student where Gender='f' and m1 >=65
select * from student where Gender='m' and m1 >=65
select * from student where m2>=65 or m1 >=75
select * from student where m2>=65 and m1 >=75
select * from student where DOB between '2003-01-01' and '2003-05-31'
select * from student where m1 between 40 and 60
select * from student where m1 not between 40 and 60

select * from student where Sname like 'a%'
select * from student where Sname like '%a'
select * from student where Sname like 'a[a-i]%'
select * from student where Sname like 'a[i-z]%'
select * from student where Sname not like '%na%'

select * from student where Total is Null
select * from student where Total is not Null

