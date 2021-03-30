select count(*)
from dw.dbo.loan_fact
inner join loan_type_dim
	on loan_fact.loan_type_id = loan_type_dim.loan_type_id
inner join date_dim
	on loan_fact.date_id = date_dim.date_id
where 
	year >= 1996 and
	status = 'runnning_in_debt'