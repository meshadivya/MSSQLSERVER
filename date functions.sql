---date functions

select getdate() as date, * from order_details -- to get current time stamp
select year(getdate()), month(getdate()), day(getdate()) from order_details -- to get year, month , day columns from timestamp
----------------------------------------------------dateadd----------------------------------------------------------------------
select dateadd(month, 2 , getdate()) as previous_month from order_details 
select dateadd(year, -5 , getdate()) as previous_month from order_details
select dateadd(day, -2 , getdate()) as previous_month from order_details
----------------------------------------------------date name---------------------------------------------------------------------
select DATEname(weekday, getdate()) from order_details
select DATEname(month, getdate()) from order_details
------------------------------------------------------datepart--------------------------------------------------------------------
select datepart(weekday, getdate()) from order_details
select datepart(HOUR, getdate()) from order_details
select datepart(minute, getdate()) from order_details
select datepart(second, getdate()) from order_details
select datepart(quarter, getdate()) from order_details
select datepart(month, getdate()) from order_details
------------------------------------------------------datediff--------------------------------------------------------------------
select DATEDIFF(year, '2025-11-20', '2025-12-20') as dd from order_details

