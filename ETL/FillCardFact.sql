delete dw.dbo.card_fact;

insert into card_fact(card_count, card_type_dim_id, account_district_id)
select 
	card_count,
	card_type_dim_id,
	account_district
from 
	(select 
		count (*) as card_count,
		types.card_type,
		types.issued_year,
		types.account_district
	from(
		select  
			card.type as card_type,
			DATEPART(year, convert(date, card.issued)) as issued_year,
			account_dim.district_id as account_district
			
		from sourceDB.dbo.card
		inner join SourceDB.dbo.disposition
			on card.disposition_id = disposition.disposition_id
		inner join account_dim
			on disposition.account_id = account_dim.account_id
		
		) as types
	group by card_type, issued_year, account_district) as aggregated_info
inner join dw.dbo.card_type_dim
	on aggregated_info.card_type = card_type_dim.type
	and aggregated_info.issued_year = card_type_dim.year_issued