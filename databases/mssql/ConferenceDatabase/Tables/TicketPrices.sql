CREATE TABLE TicketPrices
(
    TicketPriceId        INT IDENTITY   NOT NULL,
	TicketTypeCode       VARCHAR(1)     NOT NULL,
	PricingCategoryCode  VARCHAR(1)     NOT NULL,
	BasePrice            DECIMAL(8,2)   NOT NULL,
	CONSTRAINT PK_TicketPrices PRIMARY KEY (TicketPriceId),
	CONSTRAINT FK_TicketPrices_TicketTypeCode
	    FOREIGN KEY (TicketTypeCode) REFERENCES TicketTypes (TicketTypeCode),
	CONSTRAINT FK_TicketPrices_PricingCategoryCode
	    FOREIGN KEY (PricingCategoryCode) REFERENCES PricingCategories (PricingCategoryCode)

)
