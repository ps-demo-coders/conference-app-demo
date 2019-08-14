CREATE TABLE [dbo].[DiscountCodes]
(
	DiscountCodeId      INT IDENTITY      NOT NULL,
	ConferenceId        INT               NOT NULL,
	DiscountCode        VARCHAR(20)       NOT NULL,
	DiscountName        VARCHAR(30)       NOT NULL,
	DiscountType        VARCHAR(1)        NOT NULL,
	DiscountAmount      DECIMAL(8,2)      NOT NULL,
	CONSTRAINT PK_DiscountCodes PRIMARY KEY (DiscountCodeId),
	CONSTRAINT FK_DiscountCodes_ConferenceId
	    FOREIGN KEY (ConferenceId) REFERENCES Conferences (ConferenceId)
);
