CREATE TABLE [dbo].[ConferenceSchedules]
(
    ScheduleId            INT IDENTITY         NOT NULL,
	ConferenceTimeSlotId  INT                  NOT NULL,
	SessionId             INT                  NOT NULL,
	Room                  VARCHAR(30)          NOT NULL,
	CONSTRAINT PK_ConferenceSchedules PRIMARY KEY (ScheduleId),
	CONSTRAINT FK_ConferenceSchedules_TimeSlotId
	    FOREIGN KEY (ConferenceTimeSlotId) REFERENCES ConferenceTimeSlots (ConferenceTimeSlotId)
);
