delete dw.dbo.client_dim;

insert into dw.dbo.client_dim(
	client_source_id,
	birth_dateS,
	sex,
	district_id)
select 
	client_id,
	case 
		when (birth_number % 10000) > 5000 
			then CONVERT (date, convert(char(8),(birth_number - 5000) + 19000000),0) --have to add 19 centuries or birth year is casted to year 2000+
		else CONVERT (date,convert(char(8),(birth_number) + 19000000),0)
	end as birth_date,
	case 
		when (birth_number % 10000) > 5000 
			then 'Female'
		else 'Male' 
	end as Sex,
	district_id

from SourceDB.dbo.client