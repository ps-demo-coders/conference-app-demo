CREATE TABLE [dbo].[AtendeeTickets]
(
	AttendeeTicketId   INT IDENTITY     NOT NULL,
	AttendeeId          INT              NOT NULL,
	TicketPriceId      INT              NOT NULL,
	DiscountCodeId     INT              NULL,
	NetPrice           DECIMAL(8,2)     NOT NULL,
	CONSTRAINT PK_AtendeeTickets PRIMARY KEY (AttendeeTicketId),
	CONSTRAINT FK_AttendeeTickets_AttendeeId 
	    FOREIGN KEY (AttendeeId) REFERENCES Attendees (AttendeeId),
	CONSTRAINT FK_AttendeeTickets_TicketPriceId 
	    FOREIGN KEY (TicketPriceId) REFERENCES TicketPrices (TicketPriceId),
	CONSTRAINT FK_AttendeeTickets_DiscountId 
	    FOREIGN KEY (DiscountCodeId) REFERENCES DiscountCodes (DiscountCodeId)
)
