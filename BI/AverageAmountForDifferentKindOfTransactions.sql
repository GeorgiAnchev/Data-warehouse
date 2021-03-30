select 
	Avg(amount),
	operation
from dw.dbo.transaction_fact
inner join transaction_type_dim
	on transaction_type_dim.transaction_type_id = transaction_fact.transaction_type_id
group by operation