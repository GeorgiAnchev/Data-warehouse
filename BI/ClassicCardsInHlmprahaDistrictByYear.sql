select 
	card_count,
	year_issued
from dw.dbo.card_fact
inner join dw.dbo.card_type_dim
	on card_fact.card_fact_id = card_type_dim.card_type_dim_id
inner join dw.dbo.district_dim
	on district_dim.district_id = card_fact.account_district_id
where 
	card_type_dim.type = 'classic' and
	district_dim.name = 'Hl.m. Praha'
order by year_issued