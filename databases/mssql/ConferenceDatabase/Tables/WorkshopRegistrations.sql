CREATE TABLE [dbo].[WorkshopRegistrations]
(
	WorkshopRegistrationId    INT IDENTITY       NOT NULL,
	WorkshopId                INT                NOT NULL,
	AttendeeTicketId          INT                NOT NULL,
	CONSTRAINT PK_WorkshopRegistrations PRIMARY KEY (WorkshopRegistrationId),
	CONSTRAINT FK_WorkshopRegistrations_WorkshopId
	    FOREIGN KEY (WorkshopId) REFERENCES Workshops (WorkshopId),
	CONSTRAINT FK_WorkshopRegistrations_AttendeeTicketId
	    FOREIGN KEY (AttendeeTicketId) REFERENCES AttendeeTickets (AttendeeTicketId)

)
