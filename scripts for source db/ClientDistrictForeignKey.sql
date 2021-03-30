ALTER TABLE dbo.client
ADD CONSTRAINT fk_client_district
FOREIGN KEY (district_id) REFERENCES dbo.district(district_id);


/*ALTER TABLE dbo.client
DROP CONSTRAINT fk_client_district;
*/