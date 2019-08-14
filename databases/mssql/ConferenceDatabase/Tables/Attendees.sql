CREATE TABLE [dbo].[Attendees]
(
	AttendeeId            INT IDENTITY     NOT NULL,
	FirstName             VARCHAR(30)      NOT NULL,
	LastName              VARCHAR(30)      NOT NULL,
	Title                 VARCHAR(40)      NULL,
	Company               VARCHAR(50)      NULL,
	Email                 VARCHAR(80)      NOT NULL,
	PhoneNumber           VARCHAR(20)      NULL,
	CONSTRAINT PK_Attendees PRIMARY KEY (AttendeeId)
)
