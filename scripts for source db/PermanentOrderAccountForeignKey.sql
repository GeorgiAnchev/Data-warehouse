ALTER TABLE dbo.permanent_order
ADD CONSTRAINT fk_permanent_order_account
FOREIGN KEY (account_id) REFERENCES dbo.account(account_id);

/*
ALTER TABLE dbo.permanent_order
Drop constraint fk_permanent_order_account;


*/