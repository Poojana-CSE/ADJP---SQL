------------------------ STORED PROCEDURES---------------------------------------------------------
	   
use SQLClass2 
select * from StuInfo 
select * from ClassInfo 
 
select * from staffInfo 
select * from Library 
select * from LibraryBooks  
Example1
========
create proc InsertData   @SN varchar(20),@FN varchar(20),@MN varchar(20),@DOB date,@GEN char,@NAT varchar(20),@CAT varchar(10), @AD1 varchar(50),
@AD2 varchar(50),@CITY varchar(15),@PIN INT,@PH bigint,@EMAIL varchar(30),@ADR bigint,@EMIS varchar(15),@STD int,@SEC varchar(5),@MED char,@EX varchar(5),
@S1 int,@S2 int, @S3 int,@S4 int,@S5 int, @S6 int as
begin
  declare @AGE int
  declare @AR varchar(20)
  declare @TOT int
  declare @AV numeric(5,2)
  declare @RES varchar(5)
  declare @GR varchar(5)
  declare @REG int
  set @AGE=DATEDIFF(YY,@DOB,getdate())
  set @AR=(select Area from AreaList where Pincode=@PIN)
  set @TOT=@S1+@S2+@S3+@S4+@S5+@S6
  set @AV = @TOT/6
  if @S1 >=35 and @S2 >=35 and @S3 >=35 and @S4 >=35 and @S5 >=35 and @S6 >=35
	  begin=
	   set @RES='P'
	  end
  else
	begin
		set @RES='F'
    end  
  if @AV>=95
   begin
    set @GR='A+'
    end
   else if @AV>=80 and @AV<95
     begin
     set @GR='A'
    end
   else if @AV>=70 and @AV<80
     begin
    set @GR='B'
    end
   else if @AV>=60 and @AV<70
     begin
     set @GR='C'
    end
   else if @AV>=50 and @AV<60
     begin
     set @GR='D'
    end
   else
   begin
    set  @GR='E'
   end 
   
   insert into stuInfo (Sname,Fname,Mname,DOB,Age,Gender,Nationality,Category,Addrs1,Addrs2,Area,City,Pincode,Phone,Email,Aadhar,EMIS,CurStat) values(@SN,@FN,@MN,@DOB,@AGE,@GEN,@NAT,@CAT,@AD1,@AD2,@AR,@CITY,@PIN,@PH,@EMAIL,@ADR,@EMIS,'Active')
    set @REG=(select MAX(RegNo) from Stuinfo)
   insert into classInfo values(@REG,@STD,@SEC,@MED,@EX,@S1,@S2,@S3,@S4,@S5,@S6,@TOT,@AV,@RES,@GR)
end 

exec InsertData 'DeepNandha','Viswanathan','Ramya','2006-02-01','M','Indian','BC','Erode Road','Kanjikovil','Erode',638116,'9955446622','deep@gmail.com',123123123123,'1122112211',12,'B','E','FM',98,99,98,99,99,96
Example2
========
alter proc UptSection_ClassInfo as 
begin
  declare @RegNo int
  declare @StuCount int
  declare @TM int=65
  declare @EM int=65
  declare @MED char
  declare @Class int
  set @Class=1
  set @RegNo=(select MIN(RegNo) from classInfo)
  set @StuCount=(select Max(regno) from classinfo)
	while(@RegNo<=@StuCount)
		begin
		    if @TM >68
		      set @TM=65
		    if @EM>68
		      set @EM=65  
			if exists (select RegNo from classInfo)
			  begin
			    set @Class=(select STD from classinfo where RegNo=@RegNo )
			    set @MED =(select Medium from classinfo where RegNo=@RegNo )
			    if(@MED='T')
			      begin
			       update classinfo set Sec=CHAR(@TM) where RegNo=@RegNo 
			       set @TM=@TM+1
			      end  
			     else if(@MED='E')
			      begin
			       update classinfo set Sec=CHAR(@EM) where RegNo=@RegNo 
			       set @EM=@EM+1
			      end  
			    set @RegNo=@RegNo+1
			  end

		end	
  
end 

exec UptSection_ClassInfo 


--------------TRIGERS-------------------
alter trigger CountRec on StuInfo for insert as
select * from stuInfo


---------------------- INJECTION ------------------------
--SQL injection
--=============
--SQL injection is a code injection technique that might destroy your database.SQL injection is one of the most common web hacking techniques.
--Example for Injection
--=======================
--SELECT * FROM Users WHERE Name ="" or ""="" AND Pass ="" or ""=""

--tSName = getRequestString("CustomerName");
--tAddrs1 = getRequestString("Address");
--tCity = getRequestString("City");
--Qry = "INSERT INTO StuInfo (StuName,Addrs1,City) Values(@0,@1,@2)";
--db.Execute(Qry,tSName,tAddrs,tCity);

--SELECT * FROM StuInfo  WHERE SName ='' or ''='' AND Gender ='' or ''=''	   
-----------------------------------GRAND and REVOKE
------GRANT,REVOKE COMMANDS DCL(Data Control Language) ---------------
select * from sys.databases -- List all the Database in SQL Server
SELECT * FROM sysobjects WHERE xtype='U'  -- List all the Tables in Current Database

Step 1.
  --create a user Login Under Security-Logins with UserName as 'ClassAsst, and Passwor as 'test@123' from Object Explorer
  -- Login user 'ClassAsst' by clicking Start-Sql Server Management Studio
  -- select database SQLClass2 by using Keyword
  -- Now Try to select / insert / update Quries
-- Ooops! Doesn't work?????
-- Now try after giving this
------- SYNTAX : GRANT SELECT, UPDATE,references ON MY_TABLE TO SOME_USER, ANOTHER_USER;  
			--GRANT ALL ON MY_TABLE TO SOME_USER, ANOTHER_USER;  
grant select,update on stuinfo to ClassAsst

-- Now try to select or Update query Now It's working fine? !!!
-- But you could not use insert or delete quries
-- Now jus Revoke the Permissions using 'Revoke ' Command
  ---------SYNTAX REVOKE SELECT, UPDATE ON MY_TABLE FROM USER1, USER2;  
  ---------SYNTAX REVOKE ALL ON MY_TABLE FROM USER1, USER2;  
revoke select,update on stuinfo to ClassAsst  
