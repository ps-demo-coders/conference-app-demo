CREATE TABLE [dbo].EventSchedule
(
    ScheduleId            INT IDENTITY         NOT NULL,
    TimeSlotId            INT                  NOT NULL,
	SessionId             INT                  NOT NULL,
	Room                  VARCHAR(30)          NOT NULL,
	CONSTRAINT PK_ConferenceSchedules PRIMARY KEY (ScheduleId),
	CONSTRAINT FK_ConferenceSchedules_TimeSlotId
	    FOREIGN KEY (TimeSlotId) REFERENCES TimeSlots (TimeSlotId)
);
