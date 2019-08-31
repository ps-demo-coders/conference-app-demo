SET IDENTITY_INSERT Speakers ON

MERGE INTO Speakers AS Target
USING (VALUES
    (1, 'Sergio', 'Becker'        , 'Senior Developer'       , 'MicroOcean Software'              , 'Test', ''),
    (2 , 'James'  , 'Lowrey'      , 'Solutions Architect'    , 'Fabrikam Industries'              , 'Test', ''),
    (3 , 'Gloria' , 'Franklin'    , 'Enerprise Architect'    , 'Carved Rock Online'               , 'Test', ''),
    (4 , 'Lori'   , 'Vanhoose'    , 'Java Technical Lead'    , 'National Bank'                    , 'Test', ''),
    (5 , 'Raymond', 'Hall'        , 'Senior Developer'       , 'City Power and Electric'          , 'Test', ''),
    (6 , 'Sam'    , 'Vasquez'     , 'Software Analyst'       , 'Globalmantics Consulting'         , 'Test', ''),
    (7 , 'Justin' , 'Clark'       , 'Principal Engineer'     , 'Tangerine Hippopotamus Consulting', 'Test', ''),
    (8 , 'Barbara', 'Williams'    , 'Senior DBA'             , 'Contoso'                          , 'Test', ''),
    (9 , 'James'  , 'Sharp'       , 'Technical Lead'         , 'Adventureworks'                   , 'Test', ''),
    (10, 'Julie'  , 'Rowe'        , 'Software Architect'     , 'Northwind Trading'                , 'Test', ''),
    (11, 'Tonya'  , 'Burke'       , 'Senior Cloud Consultant', 'Big Data Consulting'              , 'Test', ''),
    (12, 'Nicole' , 'Perry'       , 'Engineering Manager'    , 'World Wide Importers'             , 'Test', ''),
    (13, 'James'  , 'Curtis'      , 'Cloud Architect'        , 'Farmington Research'              , 'Test', ''),
    (14, 'Patti'  , 'White'       , 'Program Manager'        , 'State Investments'                , 'Test', ''),
    (15, 'Andrew' , 'Graham'      , 'Software Architect'     , 'Property Insurance Group'         , 'Test', ''),
    (16, 'Lenn'   , 'van der Brug', 'Solutions Architect'    , 'Globalmantics Consulting'         , 'Test', ''),
    (17, 'Stephan', 'Leijtens'    , 'Application Development Manager', 'Bank Europe'              , 'Test', ''),
    (18, 'Anja'   , 'Koehler'     , 'Software Engineer'      , 'Contoso'                          , 'Test', ''),
    (19, 'Petra'  , 'Holtzmann'   , 'Senior API Engineer'    , 'European Investment Partners'     , 'Test', ''),
	(20, 'Jens'   , 'Lundberg'    , 'Consultant'             , 'Aqua Sky Consulting'              , 'Test', ''),
	(21, 'Linda'  , 'Carver'      , 'Senior Developer'       , 'Chicago Technology Research'      , 'Test', ''), 
	(22, 'Ronald' , 'McMillian'   , 'Software Architect'     , 'National Bank'                    , 'Test', ''), 
	(23, 'Dustin' , 'Finn'        , 'Software Engineer'      , 'Globalmantics Consulting'         , 'Test', ''), 
	(24, 'Sharon' , 'Johnson'     , 'Solutions Architect'    , 'National Aerospace Technologies'  , 'Test', ''), 
	(25, 'Karen'  , 'McClure'     , '.NET Architect'         , 'Adventureworks'                   , 'Test', ''), 
	(26, 'Matthew', 'Thompson'    , 'Technical Lead'         , 'Fabrikam Industries'              , 'Test', ''), 
	(27, 'Chris'  , 'Moore'       , 'Solutions Architect'    , 'World Wide Importers'             , 'Test', ''),
	(28, 'Ken'    , 'Perry'       , 'Software Engineer'      , 'International Industrial Works'   , 'Test', ''),
	(29, 'Christie', 'Fournier'   , 'Application Architect'  , 'National Software Services'       , 'Test', ''), 
	(30, 'Jenny'  , 'Lee'         , 'Azure Cloud Architect'  , 'Prairie Cloud Solutions'          , 'Test', ''), 
	(31, 'Alicia' , 'Peng'        , 'Senior Cloud Consultant', 'Cloud Management Partners'        , 'Test', ''), 
	(32, 'Page'   , 'Reid'        , 'Lead Azure Engineer'    , 'State Investments'                , 'Test', ''), 

	(33, 'Anke' , 'Holzman'       , 'Senior AWS Consultant', 'Cloud Management Partners'          , 'Test', ''), 
	(34, 'Dylan', 'Wilkinson'     , 'Principal AWS Engineer', 'Cloud Native Labs'                 , 'Test', '') 


)
AS Source (SpeakerId, FirstName, LastName, Title, Company, SpeakerBio, SpeakerPhoto)
ON Target.SpeakerId = Source.SpeakerId
    WHEN MATCHED THEN
        UPDATE
		    SET
			    FirstName = Source.FirstName,
			    LastName = Source.LastName,
			    Title = Source.Title,
				Company = Source.Company,
				SpeakerBio = Source.SpeakerBio,
				SpeakerPhoto = Source.SpeakerPhoto
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (SpeakerId, FirstName, LastName, Title, Company, SpeakerBio, SpeakerPhoto)
        VALUES (SpeakerId, FirstName, LastName, Title, Company, SpeakerBio, SpeakerPhoto);


DECLARE @nextSpeakerId INT;
SELECT @nextSpeakerId = (
        SELECT max(SpeakerId)
            FROM Speakers
	) ;


DBCC CHECKIDENT (Speakers, RESEED, @nextSpeakerId)

SET IDENTITY_INSERT Speakers OFF

