
SET IDENTITY_INSERT Conferences ON

MERGE INTO Conferences AS Target
USING (VALUES
    (1, 'Globalmantics Developer Conference - New York', 'World Conference Center', 'New York, NY, USA', '2019-12-04', '2019-12-06'),
	(2, 'Globalmantics Developer Conference - London', 'Grand Britannia Conference Center', 'London, UK', '2020-01-13', '2020-01-16'),
	(3, 'Globalmantics Developer Conference - Antwerp', 'Antwerp Central Hotel and Conference Center', 'Antwerp, Belgium', '2020-01-27', '2020-01-29'),
	(4, 'Globalmantics Security Conference - Singapore', 'Lion City Event Hall', 'Singapore', '2020-01-03', '2020-01-06')

)
AS Source (ConferenceId, ConferenceName, Location, City, RegionCode, StartDate, EndDate)
ON Target.ConferenceId = Source.ConferenceId
    WHEN MATCHED THEN
        UPDATE
		    SET
			ConferenceName = Source.ConferenceName,
			Location = Source.Location,
			City = Source.City,
			RegionCode = Source.RegionCode,
			StartDate = Source.StartDate,
			EndDate = Source.EndDate
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (ConferenceId, ConferenceName, Location, City, RegionCode, StartDate, EndDate)
        VALUES (ConferenceId, ConferenceName, Location, City, RegionCode, StartDate, EndDate);


DECLARE @nextConferenceId INT;
SELECT @nextConferenceId = (
        SELECT max(ConferenceId)
            FROM Conferences
	) ;


DBCC CHECKIDENT (Conferences, RESEED, @nextConferenceId)

SET IDENTITY_INSERT Conferences OFF



