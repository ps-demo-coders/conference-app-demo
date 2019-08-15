CREATE TABLE [dbo].[TicketTypes]
(
	TicketTypeCode        VARCHAR(1)     NOT NULL,
	TicketTypeName        VARCHAR(30)    NOT NULL,
	Description           VARCHAR(100)     NOT NULL,
	IncludesWorkshop      BIT            NOT NULL,	
	CONSTRAINT PK_TicketTypes PRIMARY KEY (TicketTypeCode)
);
