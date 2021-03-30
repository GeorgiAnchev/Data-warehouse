ALTER TABLE dbo.transact
ADD CONSTRAINT fk_transact_account
FOREIGN KEY (account_id) REFERENCES dbo.account(account_id);

/*
ALTER TABLE dbo.transact
Drop constraint fk_transact_account;


*/