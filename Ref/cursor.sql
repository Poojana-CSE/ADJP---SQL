/*
Cursors
A cursor is a database object, it points the resutlset

Implemented by 
	1. API's
	2. T-SQL statements 
Keywords for cursor processing
DECLARE 	=> Defines the cursor
OPEN		=> To open the cursor executed with SELECT
FETCH		=> Reterives a row from a cursor
CLOSE		=> Close the cursor
DEALLOCATE	=> To removes the cursor

DECLARE cursor_name [SCROLL][insensitive] cursor for select statement

[for {readonly|Update}] 

FETCH
 	FETCH [NEXT|PRIOR|FIRST|LAST|ABSOLUTE n|RELATIVE n]
	from cur_name [INTO variables]
*/

declare cur CURSOR
for
	select sno,sname from student
declare
   @sn int,@sname varchar(40)
print 'SNUMBER    SNAME'
print '================'
open cur
fetch next from cur into @sn,@sname
while @@fetch_status=0
begin 
print convert(varchar,@sn)+'=>'+@sname
fetch next from cur into @sn,@sname
end
close cur
deallocate cur


/*Types of Cursors

declare cursorname cursor type

1. FORWARD_ONLY 
	* it is not scrollable
	* Use to reterive the next row from current row
2. Dynamic
 	* Scrollable
	* Every time fetch a new row
	* It takes more time
3. KEYSET_DRIVEN
	* Scrollable
	* Sensitive for updates and delets
4. STATIC 
 	* Scrollable
	* insensitive to any changes

Additonal cursors supported by T-SQL only

	1. Forward_only keyset
		* not scrollable
		* sensitive to updates and delets
		* not for insertion
	2. Forward_only Static
		* not scrollable and not sensitive
	3. FAST_FORWARD
		*  not scrollable& not sensitive 
		* Performance is fast
*/	
/*
Transaction
	* Collection of SQL STATMENTS
1. begin
2. commit
3. rollback trn
4. save transaction
*/
begin tran
	select * from student
	delete from student where sname='balu'
	select * from student
commit tran
	