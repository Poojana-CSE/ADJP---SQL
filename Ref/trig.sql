//*
Triggers
* It is a special type of procedure.
* It is automatically called when an insert
  update or delete commands executed in a table.
* It doesnt return any value or take any arguments.
* Cannot be include 
	1. create statement
	2. all drop
	3. alter
	4. select into

1. Triggers are affect the origninal tables
	we can refer 3 types of tables
	1. insert trigger table
	2. delete trigger table
	3. update trigger table
Syntax
create trigger trigname on tablename for
(Insert or delete or update) where condition
as
	function coding

To delete the trigger means
	drop trigger triname

to alter the trigger
	alter trigger triname 
*/
select * from emp

create trigger newtrig on emp for insert as
print 'New row inserted'

create trigger n1 on emp for update as
print 'Data updated'

update emp set country='Pakistan' where age=34


insert into emp values(7986,'Raj','Manager',7892,'12/12/08',600,400,10)



create table d(no int,name varchar(10),sal int)