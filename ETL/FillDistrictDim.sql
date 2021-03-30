delete DW.dbo.district_dim;

INSERT INTO DW.dbo.district_dim (district_id, name, region, no_of_inhabitants, no_of_municipalities_less_499, no_of_municipalities_500_1999, no_of_municipalities_2000_9999, no_of_municipalities_more_10000, no_of_cities, ratio_of_urban_inhabitants, average_salary, unemploymant_rate_95, unemploymant_rate_96, enterpreneurs_per_1000, crimes_95, crimes_96)
SELECT [district_id]
      ,[A2]
      ,[A3]
      ,[A4]
      ,[A5]
      ,[A6]
      ,[A7]
      ,[A8]
      ,[A9]
      ,CAST(A10 AS decimal(18,2)) 
      ,CAST(A11 AS decimal(18,2)) 
      ,CASE 
		WHEN A12 = '?' THEN NULL
		ELSE CAST(A12 AS decimal(18,2)) 
	   END
      ,CAST(A13 AS decimal(18,2)) 
      ,[A14]
      ,CASE 
		WHEN A15 = '?' THEN NULL
		ELSE A15
	   END
      ,[A16]
FROM SourceDB.dbo.district;
