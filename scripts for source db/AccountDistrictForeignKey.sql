ALTER TABLE dbo.account
ADD CONSTRAINT fk_account_district
FOREIGN KEY (district_id) REFERENCES dbo.district(district_id);


/*
ALTER TABLE dbo.account
Drop constraint fk_account_district;
*/