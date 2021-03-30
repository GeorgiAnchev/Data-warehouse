delete card_type_dim;

insert into card_type_dim(type, year_issued)
select *
from
	(select distinct
		card.type
		from sourceDB.dbo.card) as card_types,
	(select distinct
		DW.dbo.date_dim.year
	from DW.dbo.date_dim) as years
order by type, year

