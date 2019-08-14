CREATE TABLE [dbo].[ConferenceDates]
(
	ConferenceDateId INT IDENTITY      NOT NULL,
	ConferenceId     INT               NOT NULL,
	ConferenceDay    DATE              NOT NULL,
	WorkshopDay      BIT               NOT NULL,
	CONSTRAINT PK_ConferenceDates PRIMARY KEY (ConferenceDateId),
	CONSTRAINT FK_ConferenceDates_ConferenceID
	    FOREIGN KEY (ConferenceId) REFERENCES Conferences (ConferenceId),
)
