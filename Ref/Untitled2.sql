create table labour(Eno int,Ename varchar(15),Gender varchar(12),DOB datetime,Age int,Quali varchar(10),Designation varchar(15),Branch varchar(10),BSal int,Hra int,Da int,Ta int,Insurance int,Salary numeric(8,2),LoanStat varchar(4))
select * from labour

insert into labour values(101,'Geetha','Female','1995-10-15',19,'BE','SE','Perundurai',25000,2500,250,250,500,27500,'No')
insert into labour values(102,'yuva','male','1994-01-05',20,'BE','SE','erode',35000,2500,250,250,500,37500,'No')
insert into labour values(103,'karuna','male','1994-07-13',18,'mba','trainer','Perundurai',15000,2500,250,250,500,17500,'yes')
insert into labour values(104,'prakash','male','1990-09-02',19,'mca','hr','bangalore',25000,2500,250,250,500,27500,'No')
insert into labour values(105,'mukesh','male','1993-10-08',19,'me','hr','erode',35000,2500,250,250,500,37500,'No')


select * from labour where Bsal<20000
select  eno as empno,ename as empname, bsal as basicsalary from labour
select * from labour where Bsal>20000 and age=19 
