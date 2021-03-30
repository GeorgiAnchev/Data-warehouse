ALTER TABLE dbo.disposition
ADD CONSTRAINT fk_disposition_account
FOREIGN KEY (account_id) REFERENCES dbo.account(account_id);

ALTER TABLE dbo.disposition
ADD CONSTRAINT fk_disposition_client
FOREIGN KEY (client_id) REFERENCES dbo.client(client_id);


/*
ALTER TABLE dbo.disposition
Drop constraint fk_disposition_account;

ALTER TABLE dbo.disposition
Drop constraint fk_disposition_client;

*/