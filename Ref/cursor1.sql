select * from busroute

declare bf cursor for select buscode,origin, fare from busroute
declare	@bc  int,@or varchar(30),@fr int
	print 'BusCode    Origin            Fare'
	print'========================'
	open  bf
	fetch next from bf into @bc,@or,@fr
	while @@fetch_status=0
	begin
	print convert(varchar, @bc)+'=>'+convert(varchar ,@fr)
end
close bf