delete DW.dbo.loan_fact;

insert into DW.dbo.loan_fact(
	loan_source_id,
	district_id,
	account_id,
	date_id,
	loan_type_id,
	payments,
	amount)
SELECT loan_id
	  ,district_id
      ,loan.account_id
	  ,date_dim.date_id
	  ,loan_type_dim.loan_type_id
      ,Convert(decimal(18, 5), loan.payments) as payments
      ,loan.amount
  FROM [SourceDB].[dbo].[loan]
inner join sourcedb.dbo.account 
	on account.account_id = loan.account_id 
inner join dw.dbo.loan_type_dim 
	on loan.duration = loan_type_dim.duration and loan.status = loan_type_dim.status_source
inner join dw.dbo.date_dim
	on CONVERT (date,convert(char(8),loan.date )) = date_dim.date
