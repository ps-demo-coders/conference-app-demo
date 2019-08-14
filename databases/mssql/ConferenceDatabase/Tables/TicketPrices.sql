CREATE TABLE [dbo].[TicketPrices]
(
	TicketPriceId         INT IDENTITY   NOT NULL,
	ConferenceId          INT            NOT NULL,
	TicketTypeCode        VARCHAR(1)     NOT NULL,
	PricingCategoryCode   VARCHAR(1)     NOT NULL,
	PricingStartDate      DATE           NOT NULL,
	PricingEndDate        DATE           NOT NULL,
	BasePrice             DECIMAL(8,2)   NOT NULL,
	CONSTRAINT PK_TicketPrices PRIMARY KEY (TicketPriceId),
	CONSTRAINT FK_TicketPrices_ConferenceId
	    FOREIGN KEY (ConferenceId) REFERENCES Conferences (ConferenceID),
	CONSTRAINT FK_TicketPrices_TicketTypeCode 
	    FOREIGN KEY (TicketTypeCode) REFERENCES TicketTypes (TicketTypeCode),
	CONSTRAINT FK_TicketPrices_PricingCategoryCode
	    FOREIGN KEY (PricingCategoryCode) REFERENCES PricingCategories (PricingCategoryCode)
);
