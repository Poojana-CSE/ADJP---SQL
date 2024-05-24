Objectives of Database System
SQL SERVER
===============
1. Data Independence
2. Minimizing Data Redundancy
3. Data Intergrity
4. Data Security
5. Efficiency
6. Data Models
	1. Network Model
	2. Hierarchical Model
	3. Relational Model
(closely related informations organized as tables)

E.F Codds's Rule

1. Information Rule (Representation of information)
	tables (rows,coloumns)
2. Guaranteed access rule
	Easy to store and retrive information
3. Systematic treatment of null values
	


DBMS Language
	SQL (Structure Query Language)
	1. DDL (Data Definition Language)
		1. Create
		2. Alter
		3. Drop
	2. DML (Data Manipulation Language)
		1. Select
		2. Insert
		3. Update
		4. Delete
	3. DCL (Data Control Language)
		1. Commit
		2. Roll Back
SQL Server Databases
		1. master
		2. temp
		3. Model
		4. pubs
		5. Northwind
To Run Query
		F5
Query Extension
		filename.sql


DDL Commands
	1. Create
	2. Alter
	3. Drop

1. Database Creation

CREATE DATABASE databasename
2.Table Creation
CREATE TABLE tablename(columnname1 datatype, columnname2 datatype,...)

3. To See the Help about table (or) to see the structure
	exec sp_help tablename


Datatypes
	1. Character Datatype
		char- fixed length
		eg:-
			char(10)
		varchar	- variable length
			varchar(10)
		text	- Large Text
			
	2. Date and Time
		datetime
		date
		time
	3. Numeric
		int
		small int
		tiny int
		float
		real
		numeric
	4. Logical or boolean
		bool	
		bit


-- Creating Database
-- Create database <databaseName>
--- Setting an Existing Database as Current Database
--- Use <databaseName>
Create database CSCPri
Use CSCPri


create table StuInfo(
EnrNo varchar(5),
SName varchar(20),
FName varchar(20),
Gender varchar,
DOB Date,
Age tinyint,
BGroup varchar(4),
HSCGroup varchar(6),
phone bigint,
Email varchar(30),
Addr1 varchar(20),
City varchar(15),
Course varchar(10),
Fees smallint,
Inst tinyint,
FeesStat varchar,
StuStatus varchar(10),
ExamStat varchar(10),
CertStat varchar
)

insert into StuInfo values('P1001','Anand','Ragu','M','2005-01-01',0,'B+','MPCC',7200001338,'abc@gmail.com','11 Rajaji Road','Perundurai','AJDP',15000,0,'C','Complete','C','N')
insert into StuInfo values('P1002','Aravind','Guna','M','2001-11-27',0,'O+','MPCB',7788994455,'xyz@gmail.com','Maya Avenue','Erode','JDP',18000,2,'P','Active','C','N')
insert into StuInfo values('P1003','Arun','Mani','M','2006-08-11',0,'A+','MPCB',8545785555,'nnc@gmail.com','11 Gobi Road','Perundurai','PYTHON',10000,0,'C','Active','NA','N')
insert into StuInfo values('P1004','Anish','Samy','M','2004-11-12',0,'AB+','MPCB',9966554411,'hash@gmail.com','27B Erode Road','Perundurai','FS Java',18000,2,'P','InActive','NA','N')
insert into StuInfo values('P1005','Abhi','Saran','F','2009-06-08',0,'A-','MPCC',7012124515,'and@gmail.com','Covai Road','Tripur','FS PYTHON',18000,3,'P','Active','NA','N')
insert into StuInfo values('P1006','Anu','Sekar','F','1999-03-05',0,'B-','PCBZ',7245656969,'hhds@gmail.com','Malar Nagar','Coimbatore','ADPP',12000,0,'C','Active','NA','N')
insert into StuInfo values('P1007','Banu','Khan','F','1990-07-13',0,'B+','ACEC',8145656363,'adcxs@gmail.com','Mani Complex','Gobi','ADCP',10000,0,'C','Active','NA','N')
insert into StuInfo values('P1008','Bala','Sriram','M','2007-06-28',0,'AB+','ACEC',6363656268,'asdas@gmail.com','Jeeva Nagar','Erode','AJDP',15000,2,'P','Active','C','N')
insert into StuInfo values('P1009','Kumar','Maran','M','1995-10-11',0,'B-','ACEB',6305052325,'xdas@gmail.com','Sangu Nagar','Gobi','PYTHON',10000,0,'P','InActive','NA','N')
insert into StuInfo values('P1010','Siva','Ram','M','2002-09-18',0,'O-','MPCC',6366365684,'sdd@gmail.com','27 A Maya Park','Salem','JAVA',10000,0,'P','Active','NA','N')
insert into StuInfo values('P1011','Sheba','Antony','F','2012-12-12',0,'AB-','MPCB',7572757879,'sds@gmail.com','17 Royal Park','Perundurai','AJDP',15000,2,'P','Active','NA','N')
insert into StuInfo values('P1012','Jhon','Peter','M','1985-02-03',0,'O+','MPCC',8302565658,'dsd@gmail.com','13 SA Road','Gobi','FS All',36000,3,'P','Active','NA','N')
insert into StuInfo values('P1013','Amar','Kabil','M','1983-08-15',0,'B+','MPCB',9965565651,'dscx@gmail.com','16 Brough Road','Erode','FS All',36000,0,'P','InActive','NA','N')
insert into StuInfo values('P1014','Jeeva','Jana','M','1991-05-15',0,'O-','PCBZ',9965550327,'sdsad@gmail.com','16 7th Star','Salem','DCA',10000,0,'P','LA','NA','N')
insert into StuInfo values('P1015','Anu','Thiru','F','1993-04-19',0,'AB+','PCBZ',7300001221,'xdsad@gmail.com','191 Ram Nagar','Coimbatore','DCA',10000,0,'C','Active','NA','N')
insert into StuInfo values('P1016','Seetha','Raju','F','2000-07-22',0,'B+','ACEC',7585896365,'xdsad@gmail.com','19 Raji Road','Gobi','DMO',7000,0,'C','Complete','C','R')
insert into StuInfo values('P1018','Neha','Nalan','F','2015-11-23',0,'B-','ACEH',9876543210,'xdsad@gmail.com','19 AmmanNagar','Tripur','ADPP',12000,2,'P','Active','NA','N')
insert into StuInfo values('P1019','Malik','Khan','M','1978-02-26',0,'AB-','ACEB',7404656861,'dsas@gmail.com','7th Cross St','Coimbatore','FS PYTHON',18000,0,'C','Complete','C','R')

insert into StuInfo(EnrNo,SName,FName,Gender,DOB,HSCGroup,phone,Email,Addr1,City,Course) values('P0020','Jana','Madesh','M','2000-01-31','ACEH',7545656356,'abc@gmail.com','Sangu Nagar','Perundurai','Tally')
-- Select ----
select * from StuInfo
-- Column Level Filtering
select EnrNo,SName,Course  from StuInfo 
select EnrNo,SName as StudentName,Course  from StuInfo 
--- Row Level Filtering
-- Using Where Clause
select * from StuInfo where Gender ='M' -- List only male students from StuInfo
select * from StuInfo where Gender ='F' -- List only female students from StuInfo
select * from StuInfo where Gender ='F' and HSCGroup ='MPCC'
select * from StuInfo where HSCGroup ='MPCB' or HSCGroup ='MPCC' or HSCGroup='PCBZ'
select * from StuInfo where Gender ='m' and BGroup='b+'

select * from StuInfo where Fees<10000 and Gender='f'
select * from StuInfo where Fees>=10000 and Gender='f'
select * from StuInfo where Fees between 10000 and 15000 
select * from StuInfo where Fees not between 10000 and 15000 
select * from StuInfo where dob between '1990-01-01' and '1999-12-31'

select EnrNo,SName,Course,Fees from StuInfo where course in('DMO','DCA','FS JAVA','PYTHON')
select EnrNo,SName,Course,Fees from StuInfo where course not in('DMO','DCA','FS JAVA','PYTHON')
select EnrNo,SName,Course,Fees from StuInfo where course not in('DMO','DCA','FS JAVA','PYTHON') and Gender='F'

select * from StuInfo where SName like 'A%'
select * from StuInfo where SName not like 'A%'
select * from StuInfo where SName like '%a'
select * from StuInfo where SName like 's%a'
select * from StuInfo where SName like '%an%'

--Using distinct 
select course from StuInfo 
select distinct course from StuInfo 
select city from StuInfo 
select distinct city from StuInfo 
select sname from StuInfo 
select distinct sname from StuInfo 
select Gender from StuInfo 
select distinct Gender from StuInfo 
-- Order by
select EnrNo,SName,course,City,Phone from StuInfo 
select EnrNo,SName,course,City,Phone from StuInfo order by SName 
select EnrNo,SName,course,City,Phone from StuInfo order by course asc 
select EnrNo,SName,course,City,Phone from StuInfo order by SName desc, course asc
select EnrNo,SName,course,DOB from StuInfo order by DOB desc,SName 
select EnrNo,SName,course,DOB from StuInfo order by DOB ,SName desc
select EnrNo,SName,course,DOB from StuInfo where Gender ='F' order by DOB ,SName desc 
--- Update----------------------
select * from StuInfo where Course='AJDP'
update StuInfo set Course='ADJP' where course='AJDP'
update StuInfo set SName='Ananth' where EnrNo='P1001'
---------- Alter --------------
alter table stuInfo add Photo image
	-- select * from stuInfo
alter table stuInfo alter Column gender varchar(10)
	-- update stuInfo set Gender='Male' where Gender='M'
	-- update stuInfo set Gender='Female' where Gender='F'
alter table stuInfo drop column Photo	

-- delete
delete from StuInfo where EnrNo='P1002'
delete from StuInfo where Course='DMO'

--- drop 
drop table stuinfo
drop database cscpri
use master 

Create table course(
CourseCode tinyint,
Course varchar(10),
Duration tinyint,
Details varchar(255),
Fees int)

insert into course values(01,'DCA-T',6,'Windwos,MS Office,Internet,Tally Prime',23400)
insert into course values(02,'DCA-P',6,'Windwos,MS Office,Internet,C,C++ or Python',23400)
insert into course values(03,'ADPP',4,'C,C++,Python',23400)
insert into course values(04,'DFJD',4,'HTML,CSS3,BOOTSTRAP,Adv.JavaScript,ReactJs,CoreJava,MySQL,MangoDb,SpringBoot',32400)
insert into course values(05,'DFPD',4,'HTML,CSS3,BOOTSTRAP,Adv.JavaScript,ReactJs,CoreJava,MySQL,MangoDb,DJANGO',29700)
insert into course values(06,'HDFD',12,'C,C++,Java, Python,HTML,CSS3,BOOTSTRAP,Adv.JavaScript,ReactJs,CoreJava,MySQL,MangoDb,DJANGO/SpringBoot',59400)
insert into course values(07,'DPFD',4,'HTML,CSS3,BOOTSTRAP,Adv.JavaScript,ReactJs,MySQL,MangoDb,PHP LARAVEL',29700)
insert into course values(08,'HDCA T',6,'Windwos,MS Office,Internet,HTML,CSS3,MySQL,Tally Prime,Adv.Excel,VBA Programming',45000)
insert into course values(09,'HDCA P',6,'Windwos,MS Office,Internet,HTML,CSS3,C,C++,PYTHON,MySQL,Dig.Marketting',45000)
insert into course values(10,'.Net',4,'C#,VB.Net,ASP.NET,ADO.NET',27000)
insert into course values(11,'ADJP',4,'C,C++,HTML,CSS3,JAVA',23400)
insert into course values(12,'MDSA',4,'Hardware A+,Networking N+, Windows Server',31400)
insert into course values(13,'ADCHN',2,'Hardware A+,Networking N+',24500)
insert into course values(14,'DMO',2,'Windwos,MS Office,Internet',11700)
insert into course values(15,'CCAE',2,'Advanced Excel, VBA Programming',18000)
insert into course values(16,'Tally',3,'Accounting with Tally Prime',20700)
insert into course values(17,'FS PYTHON',4,'C,C++,HTML,CSS3,Javascript,Bootstrap,Mysql/SQl Server,PYTHON,Adv.Python',27000)
insert into course values(18,'FS JAVA',5,'C,C++,HTML,CSS3,Javascript,Bootstrap,Mysql/SQl Server,Java,Adv.Java',36000)
insert into course values(19,'FS All',6,'C,C++,HTML,CSS3,Javascript,React JS,Bootstrap,Mysql/SQl Server,Mango DB,Java,Adv.Java,Adv.PYTHON,.Net,SpringBoot',63000)
insert into course values(20,'Off.Expert',4,'Windwos,MS Office,Internet,Cloud Applicatios, Hardware',24000)


create table StuAttn(
EnrNo varchar(5),
AttDate date,
InTime time,
OutTime Time,
TotTime numeric(4,2),
AttStat varchar)
-- 1-5-23
insert into StuAttn values('P1001','2023-05-01','09:00','13:00',0,'')
insert into StuAttn values('P1002','2023-05-01','09:00','13:00',0,'')
insert into StuAttn values('P1003','2023-05-01','09:00','13:00',0,'')
insert into StuAttn values('P1004','2023-05-01','09:00','13:00',0,'')
insert into StuAttn values('P1005','2023-05-01','09:00','13:00',0,'')
insert into StuAttn values('P1006','2023-05-01','09:00','13:00',0,'')
insert into StuAttn values('P1007','2023-05-01','09:00','13:00',0,'')
insert into StuAttn values('P1008','2023-05-01','09:00','13:00',0,'')
insert into StuAttn values('P1008','2023-05-01','09:00','13:00',0,'')
insert into StuAttn values('P1010','2023-05-01','09:00','13:00',0,'')
insert into StuAttn values('P1011','2023-05-01','09:00','13:00',0,'')
insert into StuAttn values('P1012','2023-05-01','09:00','13:00',0,'')
insert into StuAttn values('P1013','2023-05-01','09:00','13:00',0,'')
insert into StuAttn values('P1014','2023-05-01','09:00','13:00',0,'')
insert into StuAttn values('P1015','2023-05-01','09:00','13:00',0,'')
insert into StuAttn values('P1017','2023-05-01','09:00','13:00',0,'')
insert into StuAttn values('P1019','2023-05-01','09:00','13:00',0,'')
--2-5-23
insert into StuAttn values('P1001','2023-05-02','09:10','13:05',0,'')
insert into StuAttn values('P1002','2023-05-02','09:04','13:05',0,'')
insert into StuAttn values('P1003','2023-05-02','09:03','13:03',0,'')
insert into StuAttn values('P1004','2023-05-02','09:02','13:02',0,'')
insert into StuAttn values('P1005','2023-05-02','09:03','13:02',0,'')
insert into StuAttn values('P1006','2023-05-02','09:04','13:10',0,'')
insert into StuAttn values('P1007','2023-05-02','09:10','13:20',0,'')
insert into StuAttn values('P1008','2023-05-02','09:13','13:30',0,'')
insert into StuAttn values('P1008','2023-05-02','09:11','13:40',0,'')
insert into StuAttn values('P1010','2023-05-02','09:14','13:10',0,'')
insert into StuAttn values('P1011','2023-05-02','09:16','13:10',0,'')
insert into StuAttn values('P1012','2023-05-02','09:01','13:01',0,'')
insert into StuAttn values('P1013','2023-05-02','09:02','13:02',0,'')
insert into StuAttn values('P1014','2023-05-02','09:03','13:03',0,'')
insert into StuAttn values('P1015','2023-05-02','09:04','13:03',0,'')
insert into StuAttn values('P1017','2023-05-02','09:05','13:04',0,'')
insert into StuAttn values('P1019','2023-05-02','09:03','13:04',0,'')
insert into StuAttn values('P1016','2023-05-02','09:02','13:04',0,'')
insert into StuAttn values('P1018','2023-05-02','09:03','13:04',0,'')
--03-05-23
insert into StuAttn values('P1001','2023-05-03','09:10','13:05',0,'')
insert into StuAttn values('P1002','2023-05-03','09:04','13:05',0,'')
insert into StuAttn values('P1003','2023-05-03','09:03','13:03',0,'')
insert into StuAttn values('P1004','2023-05-03','09:02','13:02',0,'')

insert into StuAttn values('P1006','2023-05-03','09:04','13:10',0,'')
insert into StuAttn values('P1007','2023-05-03','09:10','13:20',0,'')

insert into StuAttn values('P1008','2023-05-03','09:11','13:40',0,'')

insert into StuAttn values('P1011','2023-05-03','09:16','13:10',0,'')
insert into StuAttn values('P1012','2023-05-03','09:01','13:01',0,'')

insert into StuAttn values('P1014','2023-05-03','09:03','13:03',0,'')
insert into StuAttn values('P1015','2023-05-03','09:04','13:03',0,'')
insert into StuAttn values('P1017','2023-05-03','09:05','13:04',0,'')
insert into StuAttn values('P1019','2023-05-03','09:03','13:04',0,'')
insert into StuAttn values('P1016','2023-05-03','09:02','13:04',0,'')
insert into StuAttn values('P1018','2023-05-03','09:03','13:04',0,'')
--04-05-23
insert into StuAttn values('P1001','2023-05-04','09:10','13:05',0,'')
insert into StuAttn values('P1002','2023-05-04','09:04','13:05',0,'')
insert into StuAttn values('P1003','2023-05-04','09:03','13:03',0,'')
insert into StuAttn values('P1004','2023-05-04','09:02','13:02',0,'')
insert into StuAttn values('P1005','2023-05-04','09:03','13:02',0,'')
insert into StuAttn values('P1006','2023-05-04','09:04','13:10',0,'')
insert into StuAttn values('P1007','2023-05-04','09:10','13:20',0,'')
insert into StuAttn values('P1008','2023-05-04','09:13','13:30',0,'')
insert into StuAttn values('P1008','2023-05-04','09:11','13:40',0,'')
insert into StuAttn values('P1010','2023-05-04','09:14','13:10',0,'')
insert into StuAttn values('P1011','2023-05-04','09:16','13:10',0,'')
insert into StuAttn values('P1012','2023-05-04','09:01','13:01',0,'')
insert into StuAttn values('P1013','2023-05-04','09:02','13:02',0,'')
insert into StuAttn values('P1014','2023-05-04','09:03','13:03',0,'')
insert into StuAttn values('P1015','2023-05-04','09:04','13:03',0,'')
insert into StuAttn values('P1017','2023-05-04','09:05','13:04',0,'')
insert into StuAttn values('P1019','2023-05-04','09:03','13:04',0,'')
insert into StuAttn values('P1016','2023-05-04','09:02','13:04',0,'')
insert into StuAttn values('P1018','2023-05-04','09:03','13:04',0,'')

select * from StuAttn 
create table StuExam(
EnrNo varchar(5),
Sub varchar(20),
ExamDt date,
ExamAttn varchar,
PracMark tinyint,
TotMark tinyint,
TheoryMark tinyint,
Grade varchar(3),
ExamStat varchar(10))


create table Payment(
EnrNo varchar(5),
Fees smallint,
PayDt date,
PayMode varchar(10),
BalFees tinyint,
NxtDueDt date,
NxtDueAmt tinyInt)

-- Insert Data to a Table

