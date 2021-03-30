delete dw.dbo.transaction_fact;

insert into dw.dbo.transaction_fact(
	source_id,
	date_id,
	account_id,
	district_id,
	transaction_type_id,
	amount,
	balance)

select 
	trans_id as source_id,
	date_dim.date_id,
	transact.account_id,
	account_dim.district_id,
	transaction_type_dim.transaction_type_id,
	transact.amount,
	transact.balance

from SourceDB.dbo.transact
inner join dw.dbo.date_dim
	on CONVERT (date,convert(char(8),transact.date )) = date_dim.date
inner join dw.dbo.account_dim
	on transact.account_id = account_dim.account_id
inner join transaction_type_dim
	on transact.operation = transaction_type_dim.operation_source and transact.type = transaction_type_dim.type_source
