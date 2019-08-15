CREATE TABLE [dbo].[TimeSlots]
(
	TimeSlotId         INT IDENTITY       NOT NULL,
	TimeSlotDate       DATE               NOT NULL,
	StartTime          TIME               NOT NULL,
	EndTime            TIME               NOT NULL,
	IsKeynoteTimeSlot  BIT                DEFAULT 0 NOT NULL
	CONSTRAINT PK_TimeSlots PRIMARY KEY (TimeSlotId)
)
