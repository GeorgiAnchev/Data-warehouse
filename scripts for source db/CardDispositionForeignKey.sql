ALTER TABLE dbo.card
ADD CONSTRAINT fk_card_disposition
FOREIGN KEY (disposition_id) REFERENCES dbo.disposition(disposition_id);

/*
ALTER TABLE dbo.card
Drop constraint fk_card_disposition;

*/