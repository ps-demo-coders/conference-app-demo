CREATE TABLE [dbo].[ConferenceTimeSlots]
(
	ConferenceTimeSlotId   INT IDENTITY       NOT NULL,
	ConferenceDateId       INT                NOT NULL,
	StartTime              TIME               NOT NULL,
	EndTime                TIME               NOT NULL,
	CONSTRAINT PK_ConferenceTimeSlots PRIMARY KEY (ConferenceTimeSlotId),
	CONSTRAINT FK_ConferenceTimeSlots 
	    FOREIGN KEY (ConferenceDateId) REFERENCES ConferenceDates (ConferenceDateId)

)
