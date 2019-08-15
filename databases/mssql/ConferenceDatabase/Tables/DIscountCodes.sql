CREATE TABLE [dbo].[DiscountCodes]
(
	DiscountCodeId      INT IDENTITY      NOT NULL,
	DiscountCode        VARCHAR(20)       NOT NULL,
	DiscountName        VARCHAR(30)       NOT NULL,
	DiscountType        VARCHAR(1)        NOT NULL,
	DiscountAmount      DECIMAL(8,2)      NOT NULL,
	CONSTRAINT PK_DiscountCodes PRIMARY KEY (DiscountCodeId)
);
