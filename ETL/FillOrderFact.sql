delete DW.dbo.order_fact;

insert into DW.dbo.order_fact(
	source_order_id,
	account_id,
	account_opened_at_id,
	order_type_id,
	district_id,
	amount)
select 
	permanent_order.order_id as source_order_id,
	account.account_id,
	date_dim.date_id as account_opened_at_id,
	order_type_dim.order_type_id,
	account.district_id,
	amount
from permanent_order
inner join sourcedb.dbo.account 
	on account.account_id = permanent_order.account_id 
inner join dw.dbo.date_dim
	on account.date = date_dim.date
inner join dw.dbo.order_type_dim
	on permanent_order.k_symbol = order_type_dim.k_symbol_source

