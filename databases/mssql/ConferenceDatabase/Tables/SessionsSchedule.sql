CREATE TABLE [dbo].SessionSchedule
(
    ScheduleId            INT IDENTITY         NOT NULL,
    TimeSlotId            INT                  NOT NULL,
	SessionId             INT                  NOT NULL,
	Room                  VARCHAR(30)          NOT NULL,
	CONSTRAINT PK_SessionSchedule PRIMARY KEY (ScheduleId),
	CONSTRAINT FK_SessionSchedule_TimeSlotId
	    FOREIGN KEY (TimeSlotId) REFERENCES TimeSlots (TimeSlotId),
	CONSTRAINT FL_SessionSchedule_SessionId
	    FOREIGN KEY (SessionId) REFERENCES Sessions (SessionId)
);
