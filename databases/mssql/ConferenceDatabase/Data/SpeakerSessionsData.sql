SET IDENTITY_INSERT SpeakerSessions ON

MERGE INTO SpeakerSessions AS Target
USING (VALUES
    ( 1,  1, 'Keynote - The Golden Age of Software', 45, ''),
		 
    ( 2,  2,  4),
    ( 3,  3,  5),
    ( 4,  4,  1),
    ( 5,  5, 15),
    ( 6,  6, 20),
    ( 7,  7, 21 ),
    ( 8,  8,  1),
    ( 9,  9,  4),
    (10, 10, 20),
    (11, 11,  5),
		 
    (12, 12,  7),
    (13, 13, 23),
    (14, 14, 24),
    (15, 15, 22),
    (16, 16, 21),
    (17, 17, 22),
    (18, 18, 23),
    (19, 19,  7),
    (20, 20, 24),
    (21, 21, 15),
		 
    (22, 22,  2),
    (23, 23,  3),
    (24, 24, 19),
    (25, 25, 25),
    (26, 26, 26),
    (27, 27, 27),
    (28, 28, 25),
    (29, 29,  9),
    (30, 30, 27),
    (31, 31, 16),
		 
    (32, 32,  9),
    (33, 33, 16),
    (34, 34, 28),
    (35, 35, 29),
    (36, 36, 26),
    (37, 37, 28),
    (38, 38, 19),
    (39, 39,  3),
    (40, 40,  2),
    (41, 41, 29),
		 
    (42, 42, 13),
    (43, 43, 30),
    (44, 44, 32),
    (45, 45, 31),
    (46, 46,  8),
    (47, 47, 31),
    (48, 48, 32),
    (49, 49, 13),
    (50, 50,  8),
    (51, 51, 30),
		 
    (62, 62, 34),
    (63, 63, 'Migrating On-Premises Applications to AWS'      , 60, ''),
    (64, 64, 'IOT Solutions Using AWS'                        , 60, ''),
    (65, 65, 33),
    (66, 66, 34),
    (67, 67, 'Serverless Computing on AWS'                    , 60, ''),
    (68, 68, 33),
    (69, 69, 'Undersanding the Amazon Elastic Kubernetes Service', 30, ''),
    (70, 70, 33),
    (71, 71, 33),
		 
	(82, 82, 'How Agile Are You Really?'                      , 60, ''),
    (83, 83, 17),
    (84, 84, 17),
    (85, 85, 14),
    (86, 86, 'Creating a Culture of Learning'                 , 60, ''),
    (87, 87, 'The Seven Habits of Highly Effective Developers', 60, ''),
    (88, 88, 'Writing Better User Stories'                    , 30, ''),
    (89, 89, 'Techniques for Better Estimates'                , 30, ''),
    (90, 90, 14),
    (91, 91, 'Personal Kanban'                                , 30, '')


)
AS Source (SpeakerSessionId, SessionId, SpeakerId)
ON Target.SpeakerSessionId = Source.SpeakerSessionId
    WHEN MATCHED THEN
        UPDATE
		    SET
			SessionId = Source.SessionId,
			SpeakerId = Source.SpeakerId
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (SpeakerSessionId, SessionId, SpeakerId)
        VALUES (SpeakerSessionId, SessionId, SpeakerId);


DECLARE @nextSpeakerSessionId INT;
SELECT @nextSpeakerSessionId = (
        SELECT max(SpeakerSessionId)
            FROM SpeakerSessions
	) ;


DBCC CHECKIDENT (SpeakerSessions, RESEED, @nextSpeakerSessionId)

SET IDENTITY_INSERT SpeakerSessions OFF







     