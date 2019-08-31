SET IDENTITY_INSERT TimeSlots ON

MERGE INTO TimeSlots AS Target
USING (VALUES
    (1, '2020-04-09', '9:00', '9:45', 1),
    (2, '2020-04-09', '10:00', '11:00', 0),
    (3, '2020-04-09', '11:15', '11:45', 0),
    (4, '2020-04-09', '12:45', '13:45', 0),
    (5, '2020-04-09', '14:00', '15:00', 0),
    (6, '2020-04-09', '15:15', '15:45', 0),
    (7, '2020-04-09', '16:00', '17:00', 0),

    (8, '2020-04-10', '9:00', '10:00', 0),
    (9, '2020-04-10', '10:15', '11:15', 0),
    (10, '2020-04-10', '11:30', '12:00', 0),
    (11, '2020-04-10', '13:00', '14:00', 0),
    (12, '2020-04-10', '14:15', '15:00', 1)
)
AS Source (TimeSlotId, TimeSlotDate, StartTime, EndTime, IsKeynoteTimeSlot)
ON Target.TimeSlotId = Source.TimeSlotId
    WHEN MATCHED THEN
        UPDATE
		    SET
			TimeSlotDate = Source.TimeSlotDate,
			StartTime = Source.StartTime,
			EndTime = Source.EndTime,
			IsKeynoteTimeSlot = Source.IsKeynoteTimeSlot
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (TimeSlotId, TimeSlotDate, StartTime, EndTime, IsKeynoteTimeSlot)
        VALUES (TimeSlotId, TimeSlotDate, StartTime, EndTime, IsKeynoteTimeSlot);


DECLARE @nextTimeSlotId INT;
SELECT @nextTimeSlotId = (
        SELECT max(TimeSlotId)
            FROM TimeSlots
	) ;


DBCC CHECKIDENT (TimeSlots, RESEED, @nextTimeSlotId)

SET IDENTITY_INSERT TimeSlots OFF