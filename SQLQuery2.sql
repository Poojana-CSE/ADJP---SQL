use gokul 
create table StuInfo (Sno int,SName varchar(20),Gender varchar(10),DOB date,BloodGrop varchar(5),FName varchar(20),MName varchar(20),Phone bigint,Addrs varchar(30))
insert into StuInfo values(1,'Buubesh','Male','2006-04-12','B+','Sakthivel','Sivagamasundari',7373739090,'Erode Road, Perundurai')
insert into StuInfo values(2,'Poobesh','Male','2006-05-17','O+','Thanavel','Bharathi',7373739091,'Erode Road, Karur')
insert into StuInfo values(3,'Hariprasath','Male','2005-11-20','O+','Palanisam','Sudha',7373739090,'Erode Road, Perundurai')
insert into StuInfo values(4,'Mukuntan','Male','2005-06-13','O+','Senthilkumar','Siowmiya',7373739093,'Erode Road, Salem')
insert into StuInfo values(5,'Sakthi','Male','2005-03-12','A1+','Mani','Selvi',7373739095,'Erode Road, Perundurai')

insert into StuInfo (Sno,SName,Gender,DOB,BloodGrop,FName,MName ) values(6,'Deiva','Male','1983-08-15','B+','Ramasamy','Arukkani')
select * from StuInfo 
select sno,sname from StuInfo 
select sno,sname as studentName from StuInfo 
select sno,sname as 'Student Name' from StuInfo 
select sno,sname 'Student Name', DOB,Phone  from StuInfo 

--where clause
    1. relational operators (<,>,<=,>=,=,<>)
    2. Logical Operators (and,or,not)
    3. between
    4. like, in , is
    
    select * from StuInfo where Sno=1
    select * from StuInfo where Sno>4
    select * from StuInfo where Sno>=4 and BloodGrop ='B+'
    select * from StuInfo where Sno>=4 and BloodGrop <>'B+'
    select * from StuInfo where BloodGrop = 'O+' or BloodGrop ='B+'
    select Sname,Gender,Phone from StuInfo where DOB between '2005-01-01' and '2006-12-31'
    select Sname,Gender,Phone from StuInfo where DOB not between '2005-01-01' and '2006-12-31'
    select * from StuInfo where SName like 'b%'
    select * from StuInfo where mName like 's%'
    select * from StuInfo where SName like '%h'
    select * from StuInfo where SName like '%sa%'
    select * from StuInfo where SName like 'S[a-k]%'
    select * from StuInfo where SName not like 'S[a-k]%'
    select * from StuInfo where BloodGrop ='O+' or BloodGrop ='O-' or BloodGrop ='A+' or BloodGrop ='A-' or BloodGrop ='B+' or BloodGrop ='B-'
    select * from StuInfo where BloodGrop in ('A+','A-','B+','B-','O+','O-')
    select * from StuInfo where BloodGrop not in ('A+','A-','B+','B-','O+','O-')
    select * from StuInfo where Addrs is Null
    select * from StuInfo where Addrs is not Null
    
    -- Order by
    select * from StuInfo order by SName ASC
    select * from StuInfo order by SName desc
    select * from StuInfo order by BloodGrop, SName asc
    select * from StuInfo order by BloodGrop,DOB asc
    
    -- update tablename set columnName=value,... [where clause]
    update StuInfo set Gender ='Female' WHERE Sno='5'
    update StuInfo set Gender ='male'
    select * from StuInfo 
    update StuInfo set Gender ='male',Addrs='Coimbatore' where Sno=5
    update StuInfo set Phone=9898984545,Addrs='Dubai main road, Dubhai' where Sno=5
    
    
    -- Make a Duplicate Copy
    select * into Temp from StuInfo  -- in sql server
    insert into temp as select * from StuInfo -- mysql
    select * from Temp
    -- delete
    select * from StuInfo 
    delete from StuInfo 
    truncate table Stuinfo
    drop table stuinfo
    use master 
    drop database gokul
