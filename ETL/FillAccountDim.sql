delete DW.dbo.account_dim;

INSERT INTO DW.dbo.account_dim (account_id, district_id, frequency, date_created)
SELECT account_id,
	  district_id,
	  CASE 
		WHEN frequency = 'POPLATEK MESICNE' THEN 'monthly'
		WHEN frequency = 'POPLATEK TYDNE' THEN 'weekly'
		WHEN frequency = 'POPLATEK PO OBRATU' THEN 'after_transaction'
		ELSE null
	   END,
	  CAST(date AS date) 
FROM SourceDB.dbo.account;
