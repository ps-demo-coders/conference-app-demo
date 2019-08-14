CREATE TABLE [dbo].[TicketTypes]
(
	TicketTypeCode        VARCHAR(1)      NOT NULL,
	TicketCategoryName    VARCHAR(20)     NOT NULL,
	Description           VARCHAR(100)    NOT NULL,
	IncludesWorkshop      BIT             DEFAULT 0  NOT NULL,
	CONSTRAINT PK_TicketTypes PRIMARY KEY (TicketTypeCode) 
);
