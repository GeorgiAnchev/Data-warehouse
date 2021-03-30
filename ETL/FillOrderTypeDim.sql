delete DW.dbo.order_type_dim;

insert into DW.dbo.order_type_dim(type, k_symbol_source)
select distinct 
	case 
		when permanent_order.k_symbol = 'POJISTNE' then 'insurance_payment'
		when permanent_order.k_symbol = 'SIPO' then 'household'
		when permanent_order.k_symbol = 'LEASING' then 'leasing'
		when permanent_order.k_symbol = 'UVER' then 'loan_payment'
		else null
	end as k_symbol,
	permanent_order.k_symbol as k_symbol_source
from SourceDB.dbo.permanent_order
