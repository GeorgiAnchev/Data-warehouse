delete dw.dbo.transaction_type_dim;

insert into dw.dbo.transaction_type_dim(
	operation,
	operation_source,
	type,
	type_source)
select distinct
	case
		when transact.operation = 'VYBER KARTOU' then 'card withdraw'
		when transact.operation = 'VKLAD' then 'credit in cash'
		when transact.operation = 'PREVOD Z UCTU' then 'collection from another bank'
		when transact.operation = 'VYBER' then 'withdraw in cash'
		when transact.operation = 'PREVOD NA UCET' then 'remitance to another bank'
		else null
	end as operation, 
	transact.operation as operation_source,
	case
		when transact.type = 'PRIJEM' then 'credit'
		else 'debit'
	end as type,
	transact.type as type_source
from transact

