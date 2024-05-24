create database SQLClass2
use sqlclass2
create table StuInfo(
RegNo int identity(1000,1) primary key,
SName varchar(15) Not null,
FName varchar(15)Not null,
MName varchar(15)Not null,
DOB date,
Age tinyInt check(Age between 10 and 30) default 17,
Gender varchar check (Gender in ('M','F','T')),
Nationality varchar(15) default 'Indian',
Category varchar(6) check (Category in ('BC','MBC','SC','ST','BCM','OBC','OT')),
Addrs1 varchar(20),
Addrs2 varchar(20),
Area varchar(15),
City varchar(10) default 'Erode',
Pincode int,
Phone bigint,
Email varchar(25),
Aadhar bigint unique,
EMIS varchar(15) unique,
CurStat varchar(10) default 'Active')
SELECT * FROM StuInfo 
---------- RENAMING COLUMN NAME ----
	 exec sp_rename 'StuInfo.Mobile', 'Phone' -- rename column 'dt' to 'AttnDate'
	 exec sp_rename 'StuInfo', 'StudentInfo'  -- rename the table 'StaffAttn' to 'Attn'
---------------------------------------------
insert into stuInfo (Sname,Fname,Mname,DOB,Gender,Nationality,Category,Addrs1,Addrs2,City,Pincode,Phone,Email,Aadhar,EMIS,CurStat) values('Aathira','Arun','Akila','2002-10-01','f','Indian','BC','132 KM Street','Kunnathur Road','Erode',638052,9944121200,'Aathira@gmail.com',123412341211,12312310,'Active')
insert into stuInfo (Sname,Fname,Mname,DOB,Gender,Nationality,Category,Addrs1,Addrs2,City,Pincode,Phone,Email,Aadhar,EMIS,CurStat) values('Amala','Ragav','Mekala','2000-08-08','f','Indian','MBC','16, 1010 Colony','Perundurai Road','Erode',638051,9944121201,'Amala@gmail.com',123412341212,12312311,'Active')
insert into stuInfo (Sname,Fname,Mname,DOB,Gender,Nationality,Category,Addrs1,Addrs2,City,Pincode,Phone,Email,Aadhar,EMIS,CurStat) values('Anju','Mani','Priya','2000-02-16','F','Indian','MBC','23, Rajiv Nagar','Ingur Road','Erode',638051,9944121202,'Anju@gmail.com',123412341213,12312312,'Active')
insert into stuInfo (Sname,Fname,Mname,DOB,Gender,Nationality,Category,Addrs1,Addrs2,City,Pincode,Phone,Email,Aadhar,EMIS,CurStat) values('Asha','Jeeva','Jenith','2001-01-01','F','Indian','BC','11 Baba Nagar','Erode Road','Erode',638116,9944121203,'Asha@gmail.com',123412341214,12312313,'Active')
insert into stuInfo (Sname,Fname,Mname,DOB,Gender,Nationality,Category,Addrs1,Addrs2,City,Pincode,Phone,Email,Aadhar,EMIS,CurStat) values('Aarathana','Arumugam','Lakshmi','1999-12-31','F','Indian','BC','121 Anbu Avenue','Kunnathur Road','Erode',638052,9944121204,'Aarathana@gmail.com',123412341215,12312314,'Active')
insert into stuInfo (Sname,Fname,Mname,DOB,Gender,Nationality,Category,Addrs1,Addrs2,City,Pincode,Phone,Email,Aadhar,EMIS,CurStat) values('Aayisha','Kalam','Ameena','2000-06-02','F','Indian','BCM','45 Anwar Illam','Pavadi Street','Erode',638052,9944121205,'Aayisha@gmail.com',123412341216,12312315,'Active')
insert into stuInfo (Sname,Fname,Mname,DOB,Gender,Nationality,Category,Addrs1,Addrs2,City,Pincode,Phone,Email,Aadhar,EMIS,CurStat) values('Anu','Selvam','Kanaga','2000-06-08','F','Indian','MBC','85 Main Road','Malai Seenapuram','Erode',638057,9944121206,'Anu@gmail.com',123412341217,12312316,'Active')
insert into stuInfo (Sname,Fname,Mname,DOB,Gender,Nationality,Category,Addrs1,Addrs2,City,Pincode,Phone,Email,Aadhar,EMIS,CurStat) values('Aarthi','Kumar','kuyili','2000-09-06','F','Indian','SC','45 MGR Nagar','Kanjikovil Road','Erode',638456,9944121207,'Aarthi@gmail.com',123412341218,12312317,'Active')
insert into stuInfo (Sname,Fname,Mname,DOB,Gender,Nationality,Category,Addrs1,Addrs2,City,Pincode,Phone,Email,Aadhar,EMIS,CurStat) values('Bama','Ravi','Raji','2000-07-02','F','Indian','SC','11 Gandhi Nagar','Erode Road','Gobi',638044,9944121208,'Bama@gmail.com',123412341219,12312318,'Active')
insert into stuInfo (Sname,Fname,Mname,DOB,Gender,Nationality,Category,Addrs1,Addrs2,City,Pincode,Phone,Email,Aadhar,EMIS,CurStat) values('Bavana','Muthu','Mathu','2000-03-06','F','Indian','BC','27 Muhtu Nagar','Erode Road','Gobi',638044,9944121209,'Bavana@gmail.com',123412341220,12312319,'Active')
insert into stuInfo (Sname,Fname,Mname,DOB,Gender,Nationality,Category,Addrs1,Addrs2,City,Pincode,Phone,Email,Aadhar,EMIS,CurStat) values('Jeevitha','Murali','Kamalio','2000-07-07','F','Indian','BC','67 Brough Road','Main Street','Erode',638001,9944121210,'Jeevitha@gmail.com',123412341221,12312320,'Active')
insert into stuInfo (Sname,Fname,Mname,DOB,Gender,Nationality,Category,Addrs1,Addrs2,City,Pincode,Phone,Email,Aadhar,EMIS,CurStat) values('Jenitha','Antony','Nisha','1999-05-31','F','Indian','SC','17 ABC Nagr','Main Street','Erode',638116,9944121211,'Jenitha@gmail.com',123412341222,12312321,'Active')
insert into stuInfo (Sname,Fname,Mname,DOB,Gender,Nationality,Category,Addrs1,Addrs2,City,Pincode,Phone,Email,Aadhar,EMIS,CurStat) values('Preethi','Prabhu','Ganga','2006-01-06','F','Indian','MBC','12 Pavilam Nagar','Erode Road','Erode',638107,9944121212,'Preethi@gmail.com',123412341223,12312322,'Active')
insert into stuInfo (Sname,Fname,Mname,DOB,Gender,Nationality,Category,Addrs1,Addrs2,City,Pincode,Phone,Email,Aadhar,EMIS,CurStat) values('Ganga','Saran','Saroja','2007-06-07','F','Indian','BC','12 Malli Illam','Jee Nagar','Erode',638055,9944121213,'Ganga@gmail.com',123412341224,12312323,'Active')
insert into stuInfo (Sname,Fname,Mname,DOB,Gender,Nationality,Category,Addrs1,Addrs2,City,Pincode,Phone,Email,Aadhar,EMIS,CurStat) values('Shalini','Sarath','Pushpa','2005-08-06','F','Indian','MBC','27 Aathi nagar','Jey Nagar','Erode',638055,9944121214,'Shalini@gmail.com',123412341225,12312324,'Active')
insert into stuInfo (Sname,Fname,Mname,DOB,Gender,Nationality,Category,Addrs1,Addrs2,City,Pincode,Phone,Email,Aadhar,EMIS,CurStat) values('Aadhav','Arul','Valar','2005-11-01','M','Indian','BC','43 Vagai Illam','Perundurai Road','Erode',638103,9944121215,'Aadhav@gmail.com',123412341226,12312325,'Active')
insert into stuInfo (Sname,Fname,Mname,DOB,Gender,Nationality,Category,Addrs1,Addrs2,City,Pincode,Phone,Email,Aadhar,EMIS,CurStat) values('Aakash','Lakshman','Rani','2005-12-01','M','Indian','MBC','12 Kovai Road','Vijayapuri','Erode',638056,9944121216,'Aakash@gmail.com',123412341227,12312326,'Active')
insert into stuInfo (Sname,Fname,Mname,DOB,Gender,Nationality,Category,Addrs1,Addrs2,City,Pincode,Phone,Email,Aadhar,EMIS,CurStat) values('Bavish','Mano','Radha','2005-02-11','M','Indian','BC','85 Sam Nagar','Nalla Palayam','Erode',638057,9944121217,'Bavish@gmail.com',123412341228,12312327,'Active')
insert into stuInfo (Sname,Fname,Mname,DOB,Gender,Nationality,Category,Addrs1,Addrs2,City,Pincode,Phone,Email,Aadhar,EMIS,CurStat) values('Chandru','Deva','Thamarai','2004-06-16','M','Indian','MBC','58 Gugan Illam','Palamuthir Nagar','Erode',638107,9944121218,'Chandru@gmail.com',123412341229,12312328,'Active')
insert into stuInfo (Sname,Fname,Mname,DOB,Gender,Nationality,Category,Addrs1,Addrs2,City,Pincode,Phone,Email,Aadhar,EMIS,CurStat) values('Elango','Ganesh','Mekala','2003-07-12','M','Indian','BC','78 Ellapalayam','Grenagar','Erode',638055,9944121219,'Elango@gmail.com',123412341230,12312329,'Active')
insert into stuInfo (Sname,Fname,Mname,DOB,Gender,Nationality,Category,Addrs1,Addrs2,City,Pincode,Phone,Email,Aadhar,EMIS,CurStat) values('Eswar','Mahesh','Manju','2005-06-10','M','Indian','SC','98 Balan Nagar','Tiruppur Road','Erode',638056,9944121220,'Eswar@gmail.com',123412341231,12312330,'Active')
insert into stuInfo (Sname,Fname,Mname,DOB,Gender,Nationality,Category,Addrs1,Addrs2,City,Pincode,Phone,Email,Aadhar,EMIS,CurStat) values('Elan','Robert','Jeni','2002-03-01','M','Indian','SC','98 1010 Colony','Ingur Road','Erode',638051,9944121221,'Elan@gmail.com',123412341232,12312331,'Active')
insert into stuInfo (Sname,Fname,Mname,DOB,Gender,Nationality,Category,Addrs1,Addrs2,City,Pincode,Phone,Email,Aadhar,EMIS,CurStat) values('Abdul','Khan','Begam','2002-06-06','M','Indian','BCM','98 Rani Puram','Thingalur Road','Erode',638056,9944121222,'Abdul@gmail.com',123412341233,12312332,'Active')
insert into stuInfo (Sname,Fname,Mname,DOB,Gender,Nationality,Category,Addrs1,Addrs2,City,Pincode,Phone,Email,Aadhar,EMIS,CurStat) values('Shahul','Malik','Bibi','2003-06-05','M','Indian','BCM','98 Kanji Nagar','Thingalur Road','Erode',638116,9944121223,'Shahul@gmail.com',123412341234,12312333,'Active')
insert into stuInfo (Sname,Fname,Mname,DOB,Gender,Nationality,Category,Addrs1,Addrs2,City,Pincode,Phone,Email,Aadhar,EMIS,CurStat) values('Saleem','Musthafa','Shafa','2005-06-09','M','Indian','BCM','98 Ram Nagar','Aye Gn Palayam','Erode',638057,9944121224,'Saleem@gmail.com',123412341235,12312334,'Active')
insert into stuInfo (Sname,Fname,Mname,DOB,Gender,Nationality,Category,Addrs1,Addrs2,City,Pincode,Phone,Email,Aadhar,EMIS,CurStat) values('Sanjai','Hari','Santhi','2004-04-01','M','Indian','BCM','99 Vel Illam','Velavan Nagar','Erode',638107,9944121225,'Sanjai@gmail.com',123412341236,12312335,'Active')
insert into stuInfo (Sname,Fname,Mname,DOB,Gender,Nationality,Category,Addrs1,Addrs2,City,Pincode,Phone,Email,Aadhar,EMIS,CurStat) values('Yoga','Ragu','Subha','2001-11-01','M','Indian','BC','100 Pillayar St','Ganesh Nagar','Erode',638055,9944121226,'Yoga@gmail.com',123412341237,12312336,'Active')

insert into stuInfo (Sname,Fname,Mname,DOB,Gender,Nationality,Category,Addrs1,Addrs2,City,Pincode,Phone,Email,Aadhar,EMIS,CurStat) values('Bhuvan','Ragu','Subha','2001-11-01','M','Indian','OC','100 Pillayar St','Ganesh Nagar','Erode',638055,9944101226,'Yoga1@gmail.com',123412346237,12512336,'Active')

select * from Stuinfo

create table ClassInfo(RegNo int Primary key foreign key references StuInfo(RegNo),
Std varchar(10) Not Null default 'NA',
Sec varchar(3) Not Null default '-',
Medium varchar check(Medium in('T','E')) Not Null,
Exam varchar(10)Not Null,
Sub1 int default 0,
Sub2 int default 0,
Sub3 int default 0,
Sub4 int default 0,
Sub5 int default 0,
Sub6 int default 0,
Total int default 0,
Avrg numeric(5,2),
Result varchar,
Grade varchar(2))

insert into classInfo (RegNo,Medium,Exam,Sub1,sub2,sub3,sub4,sub5,sub6) values(1000,'T','FM',78,78,44,54,78,87)
insert into classInfo (RegNo,Medium,Exam,Sub1,sub2,sub3,sub4,sub5,sub6) values(1001,'E','FM',65,65,54,45,55,45)
insert into classInfo (RegNo,Medium,Exam,Sub1,sub2,sub3,sub4,sub5,sub6) values(1002,'E','FM',45,43,33,55,54,76)
insert into classInfo (RegNo,Medium,Exam,Sub1,sub2,sub3,sub4,sub5,sub6) values(1003,'E','FM',44,23,54,45,76,87)
insert into classInfo (RegNo,Medium,Exam,Sub1,sub2,sub3,sub4,sub5,sub6) values(1004,'T','FM',34,65,65,65,45,89)
insert into classInfo (RegNo,Medium,Exam,Sub1,sub2,sub3,sub4,sub5,sub6) values(1005,'T','FM',54,76,45,34,34,99)
insert into classInfo (RegNo,Medium,Exam,Sub1,sub2,sub3,sub4,sub5,sub6) values(1006,'E','FM',34,87,66,65,66,78)
insert into classInfo (RegNo,Medium,Exam,Sub1,sub2,sub3,sub4,sub5,sub6) values(1007,'T','FM',65,56,56,67,87,56)
insert into classInfo (RegNo,Medium,Exam,Sub1,sub2,sub3,sub4,sub5,sub6) values(1008,'E','FM',76,76,34,43,45,76)
insert into classInfo (RegNo,Medium,Exam,Sub1,sub2,sub3,sub4,sub5,sub6) values(1009,'E','FM',77,87,65,78,76,54)
insert into classInfo (RegNo,Medium,Exam,Sub1,sub2,sub3,sub4,sub5,sub6) values(1010,'T','FM',56,56,77,44,54,87)
insert into classInfo (RegNo,Medium,Exam,Sub1,sub2,sub3,sub4,sub5,sub6) values(1011,'T','FM',76,87,2,54,54,45)
insert into classInfo (RegNo,Medium,Exam,Sub1,sub2,sub3,sub4,sub5,sub6) values(1012,'T','FM',56,56,43,54,54,65)
insert into classInfo (RegNo,Medium,Exam,Sub1,sub2,sub3,sub4,sub5,sub6) values(1013,'E','FM',78,87,65,43,65,87)
insert into classInfo (RegNo,Medium,Exam,Sub1,sub2,sub3,sub4,sub5,sub6) values(1014,'T','FM',87,56,76,4,76,56)
insert into classInfo (RegNo,Medium,Exam,Sub1,sub2,sub3,sub4,sub5,sub6) values(1015,'E','FM',54,87,76,54,87,78)
insert into classInfo (RegNo,Medium,Exam,Sub1,sub2,sub3,sub4,sub5,sub6) values(1016,'T','FM',76,56,55,55,56,34)
insert into classInfo (RegNo,Medium,Exam,Sub1,sub2,sub3,sub4,sub5,sub6) values(1017,'E','FM',54,87,66,65,56,54)
insert into classInfo (RegNo,Medium,Exam,Sub1,sub2,sub3,sub4,sub5,sub6) values(1018,'E','FM',77,56,65,76,76,63)
insert into classInfo (RegNo,Medium,Exam,Sub1,sub2,sub3,sub4,sub5,sub6) values(1019,'T','FM',54,87,66,77,76,56)
insert into classInfo (RegNo,Medium,Exam,Sub1,sub2,sub3,sub4,sub5,sub6) values(1020,'T','FM',76,66,55,76,56,78)
insert into classInfo (RegNo,Medium,Exam,Sub1,sub2,sub3,sub4,sub5,sub6) values(1021,'T','FM',87,67,6,67,54,56)
insert into classInfo (RegNo,Medium,Exam,Sub1,sub2,sub3,sub4,sub5,sub6) values(1022,'E','FM',56,76,76,67,6,89)
insert into classInfo (RegNo,Medium,Exam,Sub1,sub2,sub3,sub4,sub5,sub6) values(1023,'E','FM',76,87,77,87,76,63)
insert into classInfo (RegNo,Medium,Exam,Sub1,sub2,sub3,sub4,sub5,sub6) values(1024,'T','FM',45,56,6,87,87,36)
insert into classInfo (RegNo,Medium,Exam,Sub1,sub2,sub3,sub4,sub5,sub6) values(1025,'T','FM',65,76,76,87,87,56)
insert into classInfo (RegNo,Medium,Exam,Sub1,sub2,sub3,sub4,sub5,sub6) values(1026,'T','FM',65,76,54,55,65,85)

select * from ClassInfo

create table Books(
BookCode varchar(5),
Sub varchar(15),
Std varchar(10),
Medium char check(medium in('E','T','C')),
Stock int)

insert into Books values('01C01','Tamil','1','C',250)
insert into Books values('01C02','English','1','C',250)
insert into Books values('01E01','Maths','1','E',150)
insert into Books values('01T02','Social','1','T',150)
insert into Books values('01T01','Maths','1','T',100)
insert into Books values('01E02','Social','1','E',100)
insert into Books values('02E01','Tamil','2','E',250)
insert into Books values('01E02','English','1','E',250)
insert into Books values('01E01','Maths','1','E',150)
insert into Books values('01T02','Social','1','T',150)
insert into Books values('01T01','Maths','1','T',100)
insert into Books values('01E02','Social','1','E',100)
insert into Books values('03C01','Tamil','3','C',250)
insert into Books values('03C02','English','3','C',250)
insert into Books values('03E01','Maths','3','E',150)
insert into Books values('03E02','Social','3','E',150)
insert into Books values('03T01','Maths','3','T',100)
insert into Books values('03T02','Social','3','T',100)
insert into Books values('04C01','Tamil','4','C',250)
insert into Books values('04C02','English','4','C',250)
insert into Books values('04E01','Maths','4','E',150)
insert into Books values('04E02','Social','4','E',150)
insert into Books values('04T01','Maths','4','T',100)
insert into Books values('04T02','Social','4','T',100)
insert into Books values('05C01','Tamil','5','C',250)
insert into Books values('05C02','English','5','C',250)
insert into Books values('05E01','Maths','5','E',150)
insert into Books values('05E02','Social','5','E',150)
insert into Books values('05T01','Maths','5','T',100)
insert into Books values('05T02','Social','5','T',100)
insert into Books values('06C01','Tamil','6','C',200)
insert into Books values('06C02','English','6','C',200)
insert into Books values('06C03','Hindhi','6','C',200)
insert into Books values('06E01','Maths','6','E',100)
insert into Books values('06E02','Physics','6','E',100)
insert into Books values('06E03','Chemistry','6','E',100)
insert into Books values('06E04','Biology','6','E',100)
insert into Books values('06E05','CS','6','E',100)
insert into Books values('06E06','History','6','E',100)
insert into Books values('06T01','Maths','6','T',75)
insert into Books values('06T02','Physics','6','T',75)
insert into Books values('06T03','Chemistry','6','T',75)
insert into Books values('06T04','Biology','6','T',75)
insert into Books values('06T05','CS','6','T',75)
insert into Books values('06T06','History','6','T',75)
insert into Books values('07C01','Tamil','7','C',200)
insert into Books values('07C02','English','7','C',200)
insert into Books values('07C03','Hindhi','7','C',200)
insert into Books values('07E01','Maths','7','E',100)
insert into Books values('07E02','Physics','7','E',100)
insert into Books values('07E03','Chemistry','7','E',100)
insert into Books values('07E04','Biology','7','E',100)
insert into Books values('07E05','CS','7','E',100)
insert into Books values('07E06','History','7','E',100)
insert into Books values('07T01','Maths','7','T',75)
insert into Books values('07T02','Physics','7','T',75)
insert into Books values('07T03','Chemistry','7','T',75)
insert into Books values('07T04','Biology','7','T',75)
insert into Books values('07T05','CS','7','T',75)
insert into Books values('07T06','History','7','T',75)
insert into Books values('08C01','Tamil','8','C',200)
insert into Books values('08C02','English','8','C',200)
insert into Books values('08C03','Hindhi','8','C',200)
insert into Books values('08E01','Maths','8','E',100)
insert into Books values('08E02','Physics','8','E',100)
insert into Books values('08E03','Chemistry','8','E',100)
insert into Books values('08E04','Biology','8','E',100)
insert into Books values('08E05','CS','8','E',100)
insert into Books values('08E06','History','8','E',100)
insert into Books values('08T01','Maths','8','T',75)
insert into Books values('08T02','Physics','8','T',75)
insert into Books values('08T03','Chemistry','8','T',75)
insert into Books values('08T04','Biology','8','T',75)
insert into Books values('08T05','CS','8','T',75)
insert into Books values('08T06','History','8','T',75)
insert into Books values('09C01','Tamil','9','C',250)
insert into Books values('09C02','English','9','C',250)
insert into Books values('09E01','Maths','9','E',150)
insert into Books values('09E02','Physics','9','E',150)
insert into Books values('09E03','Chemistry','9','E',150)
insert into Books values('09E04','Biology','9','E',150)
insert into Books values('09E05','CS','9','E',150)
insert into Books values('09E06','History','9','E',150)
insert into Books values('09T01','Maths','9','T',100)
insert into Books values('09T02','Physics','9','T',100)
insert into Books values('09T03','Chemistry','9','T',100)
insert into Books values('09T04','Biology','9','T',100)
insert into Books values('09T05','CS','9','T',100)
insert into Books values('09T06','History','9','T',100)
insert into Books values('10C01','Tamil','10','C',250)
insert into Books values('10C02','English','10','C',250)
insert into Books values('10E01','Maths','10','E',150)
insert into Books values('10E02','Physics','10','E',150)
insert into Books values('10E03','Chemistry','10','E',150)
insert into Books values('10E04','Biology','10','E',150)
insert into Books values('10E05','CS','10','E',150)
insert into Books values('10E06','History','10','E',150)
insert into Books values('10T01','Maths','10','T',100)
insert into Books values('10T02','Physics','10','T',100)
insert into Books values('10T03','Chemistry','10','T',100)
insert into Books values('10T04','Biology','10','T',100)
insert into Books values('10T05','CS','10','T',100)
insert into Books values('10T06','History','10','T',100)

select * from Books

create table areaList(Pincode int unique,Area varchar(25))

insert into arealist values(638001,'Erode')
insert into arealist values(638002,'Erode Railway Colony')
insert into arealist values(638003,'Karungalpalayam')
insert into arealist values(638004,'Veerappanchatram')
insert into arealist values(638005,'Peria Agraharam')
insert into arealist values(638007,'Cauvery Railway Station')
insert into arealist values(638009,'Surampatti')
insert into arealist values(638010,'SPB Colony')
insert into arealist values(638011,'Erode Collectorate')
insert into arealist values(638012,'Thindal')
insert into arealist values(638051,'Chennimalai')
insert into arealist values(638052,'Perundurai')
insert into arealist values(638053,'Perundurai Sanitorium')
insert into arealist values(638054,'Siruvalur')
insert into arealist values(638055,'Kuthambi')
insert into arealist values(638056,'Greynagar')
insert into arealist values(638057,'Nallampatti')
insert into arealist values(638101,'Arachalur')
insert into arealist values(638102,'Chittode')
insert into arealist values(638103,'Athiyur')
insert into arealist values(638104,'Modakurichi')
insert into arealist values(638105,'Muthur')
insert into arealist values(638106,'Mulanur')
insert into arealist values(638107,'Nasiyanur')
insert into arealist values(638108,'Nathakadaiyur')
insert into arealist values(638109,'Ammankoil')
insert into arealist values(638110,'Getticheyur')
insert into arealist values(638111,'Vellakoil')
insert into arealist values(638112,'Vadamugam Vellodu')
insert into arealist values(638115,'Avalpundurai')
insert into arealist values(638116,'Kanjikovil')
insert into arealist values(638151,'Kodumudi')
insert into arealist values(638152,'Unjalur')
insert into arealist values(638153,'Ganapathipalayam')
insert into arealist values(638154,'Pasur')
insert into arealist values(638301,'Bhavani')
insert into arealist values(638311,'Ammapettai')
insert into arealist values(638312,'Dalavoipettai')
insert into arealist values(638314,'Vellitirupur')
insert into arealist values(638315,'Appakudal')
insert into arealist values(638316,'Elavamalai')
insert into arealist values(638401,'Sathyamangalam')
insert into arealist values(638402,'Rangasamudram')
insert into arealist values(638451,'Bhavanisagar')
insert into arealist values(638452,'Gobichettipalayam')
insert into arealist values(638454,'Arasur')
insert into arealist values(638455,'Kavindapadi')
insert into arealist values(638456,'Kolappalur')
insert into arealist values(638457,'Kurumandur')
insert into arealist values(638458,'Nambiyur')
insert into arealist values(638459,'Punjai Puliampatti')
insert into arealist values(638460,'Olalakoil')
insert into arealist values(638461,'Talavadi')
insert into arealist values(638462,'Vemandampalayam')
insert into arealist values(638476,'Polavakalipalayam')
insert into arealist values(638501,'Anthiyur')
insert into arealist values(638502,'Athani')
insert into arealist values(638503,'Kodiveri')
insert into arealist values(638504,'Guruvareddiyur')
insert into arealist values(638505,'Kallipatti')
insert into arealist values(638506,'Nanjai Puliampatti')
insert into arealist values(638657,'Alangiam')
insert into arealist values(638660,'Koduvoi')
insert into arealist values(638661,'Alampalayam')
insert into arealist values(638672,'Dalavoipattinam')
insert into arealist values(638673,'Achur')
insert into arealist values(638701,'Kangayam')
insert into arealist values(638702,'Kundadam')
insert into arealist values(638703,'Udhiyur')
insert into arealist values(638706,'Kambiliampatti')
insert into arealist values(638751,'Uttukuli')
insert into arealist values(638752,'Uttukuli Rs')
insert into arealist values(638812,'Chengapalli')
insert into arealist values(639202,'Kannivadi')
insert into arealist values(641605,'Ganapathipalayam')
insert into arealist values(641607,'Sarkarperiapalayam')
insert into arealist values(642206,'Pottikkampalayam')

select * from areaList 

create table BookIssue(
RegNo int Primary key foreign key references StuInfo(RegNo),
BookCode varchar(5),
IssueDt date default getdate(),
IssueBy varchar(15))

Create table attandance(
RegNo int Primary key foreign key references StuInfo(RegNo),
AttDate date default getdate(),
InTime time default time(getdate()),
OutTime time default time(getdate()),
AttStat char(3))

---------------------------------- STAFF INFORMATION --------------------------------------------------------------
create table staffInfo(
EmpID int identity(9000,1) unique,
StaffName varchar(25) Not null,
FName varchar(25) Not null,
Gender varchar not null check(Gender in('M','F','T')),
DOB date not null,
Age tinyint not null default 0,
Qualification varchar(15) not null,
Designation varchar(15) not null,
DOJ date not null,
Experience int,
Salary int,
Nationality varchar(15) default 'Indian',
Category varchar(6) check (Category in ('BC','MBC','SC','ST','BCM','OBC','OT')),
Addrs1 varchar(20),
Addrs2 varchar(20),
Area varchar(30),
City varchar(10) default 'Erode',
Pincode int,
Phone bigint,
Email varchar(25),
Aadhar bigint,
PF varchar(15),
EmpStat varchar(10) default 'Regular')

insert into StaffInfo (StaffName,FName,Gender,DOB,Qualification,Designation,DOJ,Experience,Salary,Nationality,Category,Addrs1,Addrs2,Area,City,Pincode,Phone,Email,Aadhar,PF,EmpStat) values('Saravanan','Kumaresh','M','1975-05-04','M.Sc,MEd','PG Teacher','1996-09-06',24,48000,'Indian','MBC','7 Kumaran Street','Raja Nagar','','Erode',638056,7878457812,'Saravanan@gmail.com',4545121241102,5002,'Regular')
insert into StaffInfo (StaffName,FName,Gender,DOB,Qualification,Designation,DOJ,Experience,Salary,Nationality,Category,Addrs1,Addrs2,Area,City,Pincode,Phone,Email,Aadhar,PF,EmpStat) values('Maran','Nagaraj','M','1976-06-08','M.Com,Med','PG Teacher','1998-07-08',26,45000,'Indian','SC','16 Pavadi Street','Perundurai','','Erode',638052,7878457813,'Maran@gmail.com',4545121241103,5003,'Regular')
insert into StaffInfo (StaffName,FName,Gender,DOB,Qualification,Designation,DOJ,Experience,Salary,Nationality,Category,Addrs1,Addrs2,Area,City,Pincode,Phone,Email,Aadhar,PF,EmpStat) values('Bakyam','Narayanan','F','1980-02-04','MA,MEd','PG Teacher','1999-09-08',25,44500,'Indian','BC','15 4th Street','Ganga Nagar','','Erode',638456,7878457814,'Bakyam@gmail.com',4545121241104,5004,'Regular')
insert into StaffInfo (StaffName,FName,Gender,DOB,Qualification,Designation,DOJ,Experience,Salary,Nationality,Category,Addrs1,Addrs2,Area,City,Pincode,Phone,Email,Aadhar,PF,EmpStat) values('Kanmani','karthikeyan','F','1978-09-06','MA,MEd','PG Teacher','1999-07-01',25,44000,'Indian','MBC','27 Maya Avenue','Sakthinagar','','Erode',638054,7878457815,'Kanmani@gmail.com',4545121241105,5005,'Regular')
insert into StaffInfo (StaffName,FName,Gender,DOB,Qualification,Designation,DOJ,Experience,Salary,Nationality,Category,Addrs1,Addrs2,Area,City,Pincode,Phone,Email,Aadhar,PF,EmpStat) values('Raguram','Mani','F','1977-09-06','M.Sc,MEd','PG Teacher','1998-06-06',26,47000,'Indian','BC','17 Bharathi St','Muthu Nagar','','Erode',638455,7878457816,'Raguram@gmail.com',4545121241106,5006,'Regular')
insert into StaffInfo (StaffName,FName,Gender,DOB,Qualification,Designation,DOJ,Experience,Salary,Nationality,Category,Addrs1,Addrs2,Area,City,Pincode,Phone,Email,Aadhar,PF,EmpStat) values('Srinivasan','Subramani','M','1975-07-06','M.Sc,MEd','PG Teacher','1998-01-06',26,47000,'Indian','MBC','14 Mani Building','Marutham Nagar','','Erode',638107,7878457817,'Srinivasan@gmail.com',4545121241107,5007,'Regular')
insert into StaffInfo (StaffName,FName,Gender,DOB,Qualification,Designation,DOJ,Experience,Salary,Nationality,Category,Addrs1,Addrs2,Area,City,Pincode,Phone,Email,Aadhar,PF,EmpStat) values('Banu','Musthafa','F','1979-05-06','M.Com,Med','PG Teacher','1999-04-06',25,46000,'Indian','BCM','17 Baba Street','Musthafa Nagar','','Erode',638116,7878457818,'Banu@gmail.com',4545121241108,5008,'Regular')
insert into StaffInfo (StaffName,FName,Gender,DOB,Qualification,Designation,DOJ,Experience,Salary,Nationality,Category,Addrs1,Addrs2,Area,City,Pincode,Phone,Email,Aadhar,PF,EmpStat) values('Ravi','Rajan','M','1974-01-01','M.Sc,MEd','AHM','1995-06-01',28,69000,'Indian','BC','11 Nalan St','Guru Road','','Erode',638103,7878457819,'Ravi@gmail.com',4545121241109,5009,'Regular')
insert into StaffInfo (StaffName,FName,Gender,DOB,Qualification,Designation,DOJ,Experience,Salary,Nationality,Category,Addrs1,Addrs2,Area,City,Pincode,Phone,Email,Aadhar,PF,EmpStat) values('Krishnan','Raman','M','1972-06-01','M.Sc,MEd','HM','1994-04-01',29,79000,'Indian','BC','17 Ramnagar','Erode Road','','Erode',638055,7878457820,'Krishnan@gmail.com',4545121241110,5010,'Regular')
insert into StaffInfo (StaffName,FName,Gender,DOB,Qualification,Designation,DOJ,Experience,Salary,Nationality,Category,Addrs1,Addrs2,Area,City,Pincode,Phone,Email,Aadhar,PF,EmpStat) values('Balan','Palanisamy','M','1982-04-01','M.Sc,B.Ed','BT Teacher','2004-09-01',19,38000,'Indian','MBC','56 North St','Erode Road','','Erode',638116,7878457821,'Balan@gmail.com',4545121241111,5011,'Regular')
insert into StaffInfo (StaffName,FName,Gender,DOB,Qualification,Designation,DOJ,Experience,Salary,Nationality,Category,Addrs1,Addrs2,Area,City,Pincode,Phone,Email,Aadhar,PF,EmpStat) values('Manikam','Kannan','M','1980-05-01','M.Com,BEd','BT Teacher','2005-09-06',18,37000,'Indian','MBC','44 Majnu St','Ingur Erode','','Erode',638051,7878457822,'Manikam@gmail.com',4545121241112,5012,'Regular')
insert into StaffInfo (StaffName,FName,Gender,DOB,Qualification,Designation,DOJ,Experience,Salary,Nationality,Category,Addrs1,Addrs2,Area,City,Pincode,Phone,Email,Aadhar,PF,EmpStat) values('Maragatham','Marisamy','F','1982-09-01','B.Com','Accountant','2005-05-06',14,20000,'Indian','BC','27 Bala Illam','Erode Road','','Erode',638107,7878457823,'Maragatham@gmail.com',4545121241113,5013,'Regular')
insert into StaffInfo (StaffName,FName,Gender,DOB,Qualification,Designation,DOJ,Experience,Salary,Nationality,Category,Addrs1,Addrs2,Area,City,Pincode,Phone,Email,Aadhar,PF,EmpStat) values('Selvi','Maran','F','1974-06-01','12th','OA','2008-07-06',12,9000,'Indian','SC','27 Sivam Nagar','Bazzar','','Erode',638001,7878457824,'Selvi@gmail.com',4545121241114,5014,'Temprory')
insert into StaffInfo (StaffName,FName,Gender,DOB,Qualification,Designation,DOJ,Experience,Salary,Nationality,Category,Addrs1,Addrs2,Area,City,Pincode,Phone,Email,Aadhar,PF,EmpStat) values('Saroja','Saminathan','F','1974-06-01','12th','OA','2007-05-06',13,9000,'Indian','SC','26 Gandhi nagar','Nallampatti','','Erode',638057,7878457825,'Saroja@gmail.com',4545121241115,5015,'Temprory')
insert into StaffInfo (StaffName,FName,Gender,DOB,Qualification,Designation,DOJ,Experience,Salary,Nationality,Category,Addrs1,Addrs2,Area,City,Pincode,Phone,Email,Aadhar,PF,EmpStat) values('Santhosh','Ramar','M','1980-08-01','10th','OA','2005-05-06',18,9800,'Indian','BC','25 Sri Nagar','Erode Road','','Erode',638058,7878457826,'Santhosh@gmail.com',4545121241116,5016,'Temprory')
insert into StaffInfo (StaffName,FName,Gender,DOB,Qualification,Designation,DOJ,Experience,Salary,Nationality,Category,Addrs1,Addrs2,Area,City,Pincode,Phone,Email,Aadhar,PF,EmpStat) values('Meenatchi','Natesan','F','1988-09-01','12th','OA','2006-07-06',15,9800,'Indian','SC','45 Elumalai St','Naduvalasu','','Erode',638053,7878457827,'Meenatchi@gmail.com',4545121241117,5017,'Temprory')
insert into StaffInfo (StaffName,FName,Gender,DOB,Qualification,Designation,DOJ,Experience,Salary,Nationality,Category,Addrs1,Addrs2,Area,City,Pincode,Phone,Email,Aadhar,PF,EmpStat) values('Karnan','Ganesan','M','1978-08-07','BA,Bed','Sec.Grade','2005-09-06',18,28000,'Indian','MBC','54 Palanisamy Illam','Perundurai','','Erode',638003,7878457828,'Karnan@gmail.com',4545121241118,5018,'Regular')
insert into StaffInfo (StaffName,FName,Gender,DOB,Qualification,Designation,DOJ,Experience,Salary,Nationality,Category,Addrs1,Addrs2,Area,City,Pincode,Phone,Email,Aadhar,PF,EmpStat) values('Geetha','Viswanathan','F','1985-09-01','BA,Bed','Sec.Grade','2005-09-06',18,25000,'Indian','MBC','45 Raja Street','Gobi Road','','Erode',638456,7878457829,'Geetha@gmail.com',4545121241119,5019,'Regular')
insert into StaffInfo (StaffName,FName,Gender,DOB,Qualification,Designation,DOJ,Experience,Salary,Nationality,Category,Addrs1,Addrs2,Area,City,Pincode,Phone,Email,Aadhar,PF,EmpStat) values('Sangeetha','Tamilarasu','F','1990-08-01','BSc,Bed','Sec.Grade','2012-09-06',10,20000,'Indian','BCM','45 Kajamoideen St','Agragaram','','Erode',638104,7878457830,'Sangeetha@gmail.com',4545121241120,5020,'Regular')
insert into StaffInfo (StaffName,FName,Gender,DOB,Qualification,Designation,DOJ,Experience,Salary,Nationality,Category,Addrs1,Addrs2,Area,City,Pincode,Phone,Email,Aadhar,PF,EmpStat) values('Malliga','Sivaram','F','1990-08-01','BSc,Bed','Sec.Grade','2011-12-06',11,20500,'Indian','BC','45 Selvam Nagar','16 VelamPalayam','','Erode',638103,7878457831,'Malliga@gmail.com',4545121241121,5021,'Regular')
insert into StaffInfo (StaffName,FName,Gender,DOB,Qualification,Designation,DOJ,Experience,Salary,Nationality,Category,Addrs1,Addrs2,Area,City,Pincode,Phone,Email,Aadhar,PF,EmpStat) values('Marisamy','Gurunathan','M','1985-08-01','BA,Bed','Sec.Grade','2005-09-06',13,24000,'Indian','SC','Indira St','Rajiv Nagar','','Erode',638102,7878457832,'Marisamy@gmail.com',4545121241122,5022,'Regular')
insert into StaffInfo (StaffName,FName,Gender,DOB,Qualification,Designation,DOJ,Experience,Salary,Nationality,Category,Addrs1,Addrs2,Area,City,Pincode,Phone,Email,Aadhar,PF,EmpStat) values('Prabhu','Samy','M','1980-04-01','BSc,Bed','Sec.Grade','2005-05-06',13,26000,'Indian','MBC','Nadu Palayam','Malar Nagar','','Erode',638052,7878457833,'Prabhu@gmail.com',4545121241123,5023,'Regular')
insert into StaffInfo (StaffName,FName,Gender,DOB,Qualification,Designation,DOJ,Experience,Salary,Nationality,Category,Addrs1,Addrs2,Area,City,Pincode,Phone,Email,Aadhar,PF,EmpStat) values('Manivannan','Govind','M','1968-05-01','10th','Security','1990-05-06',33,14000,'Indian','BC','45 Manal Medu','V Thottam','','Erode',638054,7878457834,'Manivannan@gmail.com',4545121241124,5024,'Temprory')

select * from staffInfo 


create table Library(
LibId int primary key,
ReaderType varchar not null check( ReaderType in('S','T','O')) default 'S',
BookId int not null unique,
BookName varchar(35) default '-',
Publication varchar(25) not null default '-',
Edition varchar(10) Not null default '-',
DOI date not null default getdate(),
DOR date not Null default getdate()+15,
remarks varchar(10))

insert into Library (LibID,BookId) values(1000,100)
insert into Library (LibID,BookId) values(1003,104)
insert into Library (LibID,BookId) values(1006,108)
insert into Library (LibID,BookId) values(1009,112)
insert into Library (LibID,BookId) values(1012,116)
insert into Library (LibID,BookId) values(1015,120)
insert into Library (LibID,BookId) values(1018,124)
insert into Library (LibID,BookId) values(1021,128)
insert into Library (LibID,BookId) values(1024,132)
insert into Library (LibID,BookId) values(1002,136)
insert into Library (LibID,BookId) values(1007,103)
insert into Library (LibID,BookId) values(1012,105)
insert into Library (LibID,BookId) values(1017,107)
insert into Library (LibID,BookId) values(1022,109)
insert into Library (LibID,BookId) values(9001,111)
insert into Library (LibID,BookId) values(9003,113)
insert into Library (LibID,BookId) values(9005,115)
insert into Library (LibID,BookId) values(9007,117)
insert into Library (LibID,BookId) values(9009,100)
insert into Library (LibID,BookId) values(9011,107)
insert into Library (LibID,BookId) values(9013,114)
insert into Library (LibID,BookId) values(9015,121)
insert into Library (LibID,BookId) values(9017,128)
insert into Library (LibID,BookId) values(9002,135)
insert into Library (LibID,BookId) values(9008,101)
insert into Library (LibID,BookId) values(9014,102)
insert into Library (LibID,BookId) values(9020,103)
select Min(bookID) from Library 
select * from Library 
create table LibraryBooks (BookID int primary key,BookName varchar(25) Not Null,Publication varchar(25)Not null,Edition varchar(15)Not null,Instock int)
insert into Librarybooks values(100,'C Programming','CSC Pblication','First',10)
insert into Librarybooks values(101,'C++ Programming','Sigaram Publication','Second',15)
insert into Librarybooks values(102,'Core Java','ABC Publication','Second',15)
insert into Librarybooks values(103,'Advanced Java','Sigaram Publication','First',10)
insert into Librarybooks values(104,'C Projects','Sigaram Publication','First',15)
insert into Librarybooks values(105,'Java Projects','Jey Publications','First',20)
insert into Librarybooks values(106,'.Net Master','Kavi Publications','Second',10)
insert into Librarybooks values(107,'Expert in SQL Server','Jey Publications','Second',10)
insert into Librarybooks values(108,'Mastering in SQL Server','Kavi Publications','Second',5)
insert into Librarybooks values(109,'MySQL Mastering','Ram Publications','First',5)
insert into Librarybooks values(110,'Advanced MySQL','Jey Publications','Second',10)
insert into Librarybooks values(111,'Python Programming','Jey Publications','First',5)
insert into Librarybooks values(112,'Expert in MySQl','Deiva Publication','Second',5)
insert into Librarybooks values(113,'Mastering in .Net','Deiva Publication','Second',5)
insert into Librarybooks values(114,'Oracale Database','Jey Publications','Second',2)
insert into Librarybooks values(115,'RDBMS with Oracale','Deiva Publication','Second',1)
insert into Librarybooks values(116,'Web Designing is Easy','Jey Publications','First',5)
insert into Librarybooks values(117,'Web Programming Expert','Jey Publications','Second',5)
insert into Librarybooks values(118,'Computer Hardware','Sigaram Publication','First',5)
insert into Librarybooks values(119,'Master Mind Programmer','Deiva Publication','First',10)
insert into Librarybooks values(120,'What is Full Stack','Deiva Publication','Second',5)
insert into Librarybooks values(121,'PHP Programming','Deiva Publication','First',5)
insert into Librarybooks values(122,'The Legent of Programming','Deiva Publication','Second',10)
insert into Librarybooks values(123,'Scripting Languages','Jey Publications','First',5)
insert into Librarybooks values(124,'All Script','Jey Publications','Second',4)
insert into Librarybooks values(125,'The Python with AI','Kavi Publications','Second',5)
insert into Librarybooks values(126,'Algorithms','Jey Publications','First',5)
insert into Librarybooks values(127,'Mastering in PYTHON','Jey Publications','First',4)
insert into Librarybooks values(128,'HTML5','Deiva Publication','First',10)
insert into Librarybooks values(129,'CSS 3','Deiva Publication','Second',5)
insert into Librarybooks values(130,'Java Script','Jey Publications','Second',5)
insert into Librarybooks values(131,'BootStrab','Deiva Publication','First',5)
insert into Librarybooks values(132,'Mastering Web Designing','Kavi Publications','Second',10)
insert into Librarybooks values(133,'Advanced Python','CSC Pblication','First',5)
insert into Librarybooks values(134,'Advanced Oracale','Kavi Publications','Second',15)
insert into Librarybooks values(135,'Advanced SQL','Deiva Publication','First',5)
insert into Librarybooks values(136,'Java Frameworks','Deiva Publication','Second',5)
insert into Librarybooks values(137,'Spring Boot','Jey Publications','Second',5)

select * from LibraryBooks 
--------------------- UPDATE USING FUNCTION / SUB_QUERIES---------------------------------------------
--update TableName set ColumnName=value,......... [where]
update StuInfo set Age=DATEDIFF(yy,DOB,getdate())
update StuInfo set DOB=DATEADD(yyyy,5,dob)
select * from StuInfo 
update staffInfo set DOB=DATEADD(yyyy,5,dob)
update staffInfo set Age=DATEDIFF(yy,DOB,getdate())
select * from staffInfo 
select * from ClassInfo 
update ClassInfo set Total = Sub1+Sub2+Sub3+Sub4+Sub5+Sub6  
update ClassInfo set Avrg = Total/6

update ClassInfo set Result ='F'
update ClassInfo set Result ='P' where Sub1>=35 and Sub2>=35 and Sub3>=35 and Sub4>=35 and Sub5>=35 and Sub6>=35 
--------------------- or ---------------------
update ClassInfo set result= case when Sub1>=35 and Sub2>=35 and Sub3>=35 and Sub4>=35 and Sub5>=35 and Sub6>=35 then 'P'
		             else 'F' END
--------------------------------------------------
update ClassInfo set Std= 1 where RegNo in(select RegNo from StuInfo where Age=5) 
update ClassInfo set Std= 2 where RegNo in(select RegNo from StuInfo where Age=6) 
update ClassInfo set Std= 3 where RegNo in(select RegNo from StuInfo where Age=7) 
update ClassInfo set Std= 4 where RegNo in(select RegNo from StuInfo where Age=8) 
update ClassInfo set Std= 5 where RegNo in(select RegNo from StuInfo where Age=9) 
update ClassInfo set Std= 6 where RegNo in(select RegNo from StuInfo where Age=10) 
update ClassInfo set Std= 7 where RegNo in(select RegNo from StuInfo where Age=11) 
update ClassInfo set Std= 8 where RegNo in(select RegNo from StuInfo where Age=12) 
update ClassInfo set Std= 9 where RegNo in(select RegNo from StuInfo where Age=13) 
update ClassInfo set Std= 10 where RegNo in(select RegNo from StuInfo where Age=14) 
update ClassInfo set Std= 11 where RegNo in(select RegNo from StuInfo where Age=15) 
update ClassInfo set Std= 12 where RegNo in(select RegNo from StuInfo where Age>=16) 
------------------------------------- Or -----------------
 
select * from ClassInfo 
select * from LibraryBooks
Select * from Library

update StuInfo set Area = (select area from areaList where areaList.Pincode  =StuInfo .Pincode ) 
update staffInfo  set Area = (select area from areaList where areaList.Pincode =staffInfo.Pincode) 
update Library set BookName =(select BookName from LibraryBooks where Library.BookId=LibraryBooks.BookID)
update Library set Publication  =(select publication from LibraryBooks where Library.BookId=LibraryBooks.BookID)
update Library set Edition =(select Edition  from LibraryBooks where Library.BookId=LibraryBooks.BookID)
select * from staffInfo 
select * from Library 
------------ Working with Aggreate Functions -----------------
select * from Library  
 select COUNT(gender) as totalStudent,Gender  from StuInfo group by Gender 
 select SUM(instock) from LibraryBooks 
 select BookName,Instock  as Available from LibraryBooks 
 select LibraryBooks.BookName,count(LibraryBooks.Instock) from Library,LibraryBooks where Library.BookId=LibraryBooks.BookID group by LibraryBooks.BookName
  select category,Gender, COUNT(category) from staffInfo group by Gender,Category
 select Area,category,Gender,COUNT(category) from staffInfo group by Gender,Category ,Area
 
 ------------ JOIN -------------------
 --Join is a tecnique to combile the records of two or more tables in a database.Joins indicate how SQL Server should use data from one table to select the rows in another table.
--1. INNER(JOIN): Returns records that have matching values in both tables
--2. LEFT  (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
--3. RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
--4. FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table
--5. SELF JOIN : A self join is a regular join, but the table is joined with itself.

 -- SYNTAX for INNER JOIN
 ----SELECT column_name(s)FROM table1 INNER JOIN table2 ON table1.column_name = table2.column_name;
 --Example
 --Inner Join
select regno,Sname,Phone  from StuInfo inner join Library on StuInfo.RegNo=Library.LibId 
select regno,Sname,Library.BookName,Library.DOI 'Date Of Issue',Library.DOR 'Date of Return'   from StuInfo inner join Library on StuInfo.RegNo=Library.LibId 
-- Left Join
select regno,Sname,Library.BookName,Library.DOI 'Date Of Issue',Library.DOR 'Date of Return'   from StuInfo left join Library on StuInfo.RegNo=Library.LibId 
select staffInfo.EmpID,staffInfo.StaffName,staffInfo.Area,StuInfo.RegNo,StuInfo.SName,StuInfo.Area,staffInfo.Pincode  from StuInfo left join staffInfo on staffInfo.Pincode=StuInfo.Pincode 
-- Right Join
select regno,Sname,Library.BookName,Library.DOI 'Date Of Issue',Library.DOR 'Date of Return'   from StuInfo right join Library on StuInfo.RegNo=Library.LibId 
select staffInfo.EmpID,staffInfo.StaffName,staffInfo.Area,StuInfo.RegNo,StuInfo.SName,StuInfo.Area,staffInfo.Pincode  from StuInfo right join staffInfo on staffInfo.Pincode=StuInfo.Pincode 
-- Full Join
select regno,Sname,Library.BookName,Library.DOI 'Date Of Issue',Library.DOR 'Date of Return'   from StuInfo full join Library on StuInfo.RegNo=Library.LibId 
select staffInfo.EmpID,staffInfo.StaffName,staffInfo.Area,StuInfo.RegNo,StuInfo.SName,StuInfo.Area,staffInfo.Pincode  from StuInfo full join staffInfo on staffInfo.Pincode=StuInfo.Pincode 
--self Join
update library set ReaderType='T' where LibId>=9000
update library set doi= dateadd(dd,-7,doi) where ReaderType='S' 

select StuInfo.RegNo,StuInfo.SName,Library.BookName,Library.Publication,Library.DOI 'Date Of Issue',Library.DOR 'Date of Return', datediff(dd,GETDATE(),library.dor) as DaysLeft from StuInfo,Library where StuInfo.RegNo=Library.LibId 
select StuInfo.RegNo,StuInfo.SName,Library.BookName,Library.Publication,Library.DOI 'Date Of Issue',Library.DOR 'Date of Return', datediff(dd,GETDATE(),library.dor) as DaysLeft from StuInfo,Library where StuInfo.RegNo=Library.LibId and Library.DOR > GETDATE()
select * from library

 --- UNION --------
 select stuinfo.RegNo,stuinfo.SName,Library.BookName,Library.DOR  from StuInfo,Library  where Library.LibId=StuInfo.RegNo union select staffInfo.EmpID,staffInfo.StaffName,Library.BookName,Library.DOR  from staffInfo,Library where Library.LibId =staffInfo.EmpID 
 select StuInfo.RegNo,StuInfo.SName,Library.BookName,Library.Publication,Library.DOI 'Date Of Issue',Library.DOR 'Date of Return', datediff(dd,GETDATE(),library.dor) as DaysLeft from StuInfo,Library where StuInfo.RegNo=Library.LibId and Library.DOR > GETDATE() union select staffInfo.EmpID,staffInfo.StaffName,Library.BookName,Library.Publication,Library.DOI 'Date Of Issue',Library.DOR 'Date of Return',datediff(dd,GETDATE(),library.dor) as DaysLeft  from staffInfo,Library where Library.LibId =staffInfo.EmpID 
 select StuInfo.RegNo,StuInfo.SName,Library.BookName,Library.Publication,Library.DOI 'Date Of Issue',Library.DOR 'Date of Return', datediff(dd,GETDATE(),library.dor) as DaysLeft from StuInfo,Library where StuInfo.RegNo=Library.LibId and Library.DOR > GETDATE() union all select staffInfo.EmpID,staffInfo.StaffName,Library.BookName,Library.Publication,Library.DOI 'Date Of Issue',Library.DOR 'Date of Return',datediff(dd,GETDATE(),library.dor) as DaysLeft  from staffInfo,Library where Library.LibId =staffInfo.EmpID 
 select bookname from LibraryBooks where BookName like '%sql%'
 
 ------------ VIEWS ---------------------------------
 
 --SYNTAX
--CREATE VIEW view_name AS
--SELECT column1, column2, ...
--FROM table_name
--WHERE condition;

--CREATE OR REPLACE VIEW view_name AS
--SELECT column1, column2, ...
--FROM table_name
--WHERE condition;


 ---Simple View
 create view StudentAcending as
 select * from StuInfo where nationality='Indian' 

select * from StudentAcending order by sname
update StudentAcending set sname=UPPER(sname)

 create view 
 create view LibListAll as
    select stuinfo.RegNo,stuinfo.SName,Library.BookName,Library.DOR  from StuInfo,Library  where Library.LibId=StuInfo.RegNo union select staffInfo.EmpID,staffInfo.StaffName,Library.BookName,Library.DOR  from staffInfo,Library where Library.LibId =staffInfo.EmpID 
--- View with Join and Union, Aggreate Function    
 create View LibDefaultersList as
   select StuInfo.RegNo,StuInfo.SName,Library.BookName,Library.Publication,Library.DOI 'Date Of Issue',Library.DOR 'Date of Return', datediff(dd,GETDATE(),library.dor) as DaysLeft from StuInfo,Library where StuInfo.RegNo=Library.LibId and Library.DOR > GETDATE() union all select staffInfo.EmpID,staffInfo.StaffName,Library.BookName,Library.Publication,Library.DOI 'Date Of Issue',Library.DOR 'Date of Return',datediff(dd,GETDATE(),library.dor) as DaysLeft  from staffInfo,Library where Library.LibId =staffInfo.EmpID
-- alter View
alter View LibDefaultersList as
   select StuInfo.RegNo,StuInfo.SName,Library.BookName,Library.Publication,Library.DOI 'Date Of Issue',Library.DOR 'Date of Return', datediff(dd,GETDATE(),library.dor) as DaysLeft from StuInfo,Library where StuInfo.RegNo=Library.LibId and Library.DOR > GETDATE() union all select staffInfo.EmpID,staffInfo.StaffName,Library.BookName,Library.Publication,Library.DOI 'Date Of Issue',Library.DOR 'Date of Return',datediff(dd,GETDATE(),library.dor) as DaysLeft  from staffInfo,Library where Library.LibId =staffInfo.EmpID
-- Update View

-- drop view 
drop view LibListAll
	   select * from LibListAll
	   select * from LibDefaultersList
	   select * from LibDefaultersList where RegNo>=9000	   
	   select * from LibDefaultersList where RegNo<9000


