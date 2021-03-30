delete DW.dbo.date_dim;

DECLARE @startDate date = CAST('1990-01-01' AS date),
    @endDate date = CAST('1999-12-31' AS date);
 
WITH Date_CTE 
AS 
(
    SELECT [Date] = @startDate 
    
    UNION ALL 
    
    SELECT [Date] = DATEADD(day, 1, [Date])
    FROM Date_CTE
    WHERE [Date] < CAST('1999-12-31' AS date)
)

insert into DW.dbo.date_dim(
	date,
	year,
	half,
	quarter,
	month,
	day,
	weekday)
(SELECT 
	Date, 
	DATEPART(yyyy, Date) as year,
	case
		when DATEPART(mm, Date) < 7 then 1
		else 2
	end as half,
	case
		when DATEPART(mm, Date) < 4 then 1
		when DATEPART(mm, Date) < 7 then 2
		when DATEPART(mm, Date) < 10 then 3
		else 4
	end as quarter,
	DATEPART(mm, Date) as month,
	DATEPART(dd, Date) as day,
	DATENAME(weekday,Date) as weekday

FROM Date_CTE)
OPTION (MAXRECURSION 0)