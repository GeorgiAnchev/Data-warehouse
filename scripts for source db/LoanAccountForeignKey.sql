ALTER TABLE dbo.loan
ADD CONSTRAINT fk_loan_account
FOREIGN KEY (account_id) REFERENCES dbo.account(account_id);

/*
ALTER TABLE dbo.loan
Drop constraint fk_loan_account;


*/