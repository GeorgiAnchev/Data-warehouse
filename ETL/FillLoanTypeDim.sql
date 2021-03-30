delete DW.dbo.loan_type_dim;

Insert into DW.dbo.loan_type_dim(duration, status, status_source)
SELECT Distinct 
	duration, 
	case when status = 'A' then 'finished_no_problem'
		 when status = 'B' then 'finished_not_paid'
		 when status = 'C' then 'runnning_ok'
		 else 'runnning_in_debt'
	END,
	status

  FROM [SourceDB].[dbo].[loan]





