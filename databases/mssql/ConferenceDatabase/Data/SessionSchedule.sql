SET IDENTITY_INSERT SessionSchedule ON

MERGE INTO SessionSchedule AS Target
USING (VALUES
    (1, 1, 1, 'Grand Ballroom'),

    ( 2,  2, 2 , 'Cedar'),
    ( 3,  4, 3 , 'Cedar'),
    ( 4,  5, 4 , 'Cedar'),
    ( 5,  7, 5 , 'Cedar'),
    ( 6,  8, 6 , 'Cedar'),
    ( 7, 11, 7, 'Cedar'),
    ( 8,  3, 8 , 'Cedar'),
    ( 9,  6, 9 , 'Cedar'),
    (10,  9, 10, 'Cedar'),
    (11, 10, 11, 'Cedar'),

    (12,  2, 12, 'Cherry'),
    (13,  4, 13, 'Cherry'),
    (14,  5, 14, 'Cherry'),
    (15,  7, 15, 'Cherry'),
    (16,  8, 16, 'Cherry'),
    (17, 11, 17, 'Cherry'),
    (18,  3, 18, 'Cherry'),
    (19,  6, 19, 'Cherry'),
    (20,  9, 20, 'Cherry'),
    (21, 10, 21, 'Cherry'),

    (22,  2, 22, 'Maple'),
    (23,  4, 23, 'Maple'),
    (24,  5, 24, 'Maple'),
    (25,  7, 25, 'Maple'),
    (26,  8, 26, 'Maple'),
    (27, 11, 27, 'Maple'),
    (28,  3, 28, 'Maple'),
    (29,  6, 29, 'Maple'),
    (30,  9, 30, 'Maple'),
    (31, 10, 31, 'Maple'),

    (32,  2, 32, 'Aspen'),
    (33,  4, 33, 'Aspen'),
    (34,  5, 34, 'Aspen'),
    (35,  7, 35, 'Aspen'),
    (36,  8, 36, 'Aspen'),
    (37, 11, 37, 'Aspen'),
    (38,  3, 38, 'Aspen'),
    (39,  6, 39, 'Aspen'),
    (40,  9, 40, 'Aspen'),
    (41, 10, 41, 'Aspen'),

    (42,  2, 42, 'Hickory'),
    (43,  4, 43, 'Hickory'),
    (44,  5, 44, 'Hickory'),
    (45,  7, 45, 'Hickory'),
    (46,  8, 46, 'Hickory'),
    (47, 11, 47, 'Hickory'),
    (48,  3, 48, 'Hickory'),
    (49,  6, 49, 'Hickory'),
    (50,  9, 50, 'Hickory'),
    (51, 10, 51, 'Hickory'),

    (62,  2, 62, 'Cottonwood'),
    (63,  4, 63, 'Cottonwood'),
    (64,  5, 64, 'Cottonwood'),
    (65,  7, 65, 'Cottonwood'),
    (66,  8, 66, 'Cottonwood'),
    (67, 11, 67, 'Cottonwood'),
    (68,  3, 68, 'Cottonwood'),
    (69,  6, 69, 'Cottonwood'),
    (70,  9, 70, 'Cottonwood'),
    (71, 10, 71, 'Cottonwood'),

	(82,  2, 82, 'Sycamore'),
    (83,  4, 83, 'Sycamore'),
    (84,  5, 84, 'Sycamore'),
    (85,  7, 85, 'Sycamore'),
    (86,  8, 86, 'Sycamore'),
    (87, 11, 87, 'Sycamore'),
    (88,  3, 88, 'Sycamore'),
    (89,  6, 89, 'Sycamore'),
    (90,  9, 90, 'Sycamore'),
    (91, 10, 91, 'Sycamore')


)
AS Source (ScheduleId, TimeSlotId, SessionId, Room)
ON Target.ScheduleId = Source.ScheduleId
    WHEN MATCHED THEN
        UPDATE
		    SET
			TimeSlotId = Source.TimeSlotId,
			SessionId = Source.SessionId,
			Room = Source.Room
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (ScheduleId, TimeSlotId, SessionId, Room)
        VALUES (ScheduleId, TimeSlotId, SessionId, Room);


DECLARE @nextSessionScheduleId INT;
SELECT @nextSessionScheduleId = (
        SELECT max(ScheduleId)
            FROM SessionSchedule
	) ;


DBCC CHECKIDENT (SessionSchedule, RESEED, @nextSessionScheduleId)

SET IDENTITY_INSERT SessionSchedule OFF







     