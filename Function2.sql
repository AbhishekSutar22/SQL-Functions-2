use abhishek
go

print 'v#' --v#
print replicate('v#', 5) --v#v#v#v#v#
print replicate('*', 8) + '9182' --********9182
print '********' + '9182 ' --********9182

go

print 'Abhishek' + ' ' + 'Sutar' --Abhishek Sutar
print 'Abhishek' + '     ' + 'Sutar' --Abhishek     Sutar
print 'Abhishek' + space(20) + 'Sutar' --Abhishek                    Sutar

go

declare @site varchar(50) = 'www.google.com'
print @site --www.google.com
print replace(@site, '.com', '.co.in') --www.google.co.in
 
go

declare @Adhaar varchar(12) = '956312564684'
print @Adhaar --956312564684
print 'XXXXXXXX' + right(@Adhaar, 4) --XXXXXXXX4684
print stuff(@Adhaar, 1, 8, 'XXXXXXXX') --XXXXXXXX4684

declare @Email varchar(100) = 'abhisutar22@gmail.com'
print @Email --abhisutar22@gmail.com
print stuff(@Email, 3, 2, '******') --ab******sutar22@gmail.com

go

select getdate() -- 2023-10-04 20:36:49.357 ---> miilisec
select current_timestamp -- 2023-10-04 20:38:02.590 ---> miilisec
select sysDateTime() -- 2023-10-04 20:40:17.9023700 ---> microsec
select SYSDATETIMEOFFSET() -- 2023-10-04 20:40:28.5497683 +05:30
select GETUTCDATE() -- 2023-10-04 15:10:40.010
select SysUTCDATETIME() -- 2023-10-04 15:10:47.5484421

-- date time parts
-- year, month, day, hour, time, seconds, milliseconds, seconds precision
-- quarter, day of year, week day, day of week
-- offset 

go

create table TimeTable
(
cdate date,
ctime time,
csmalldatetime smalldatetime,
cdatetime datetime,
cdatetime2 datetime2,
cdatetimeoffset datetimeoffset
)
insert into TimeTable values
(getdate(),getdate(),getdate(),getdate(),SYSDATETIMEOFFSET(),SYSDATETIMEOFFSET())
-- date     2023-10-04
-- time     21:14:41.1200000
-- smalldatetime     2023-10-04 21:15:00
-- datetime     2023-10-04 21:14:41.120
-- datetime2     2023-10-04 21:14:41.1200084
-- datetimeoffset     2023-10-04 21:14:41.1200084 +05:30

select * from TimeTable



