SET IDENTITY_INSERT Workshops ON

MERGE INTO Workshops AS Target
USING (VALUES
	(1, 'More Effective Agile Practices', '', '', 'Cedar', 50),
	(2, 'Azure DevOps One Day Bootcamp', '', '', 'Cherry', 50),
	(3, 'Level Up Your Architecure Skills', '', '', 'Maple', 20),
	(4, 'Building Microservices with Spring', '', '', 'Aspen', 30),
	(5, 'SQL Server Performance Tuning', '', '', 'Hickory', 40),
	(6, 'Serverless Architectures Using AWS', '', '', 'Cottonwood', 30),
	(7, 'Architecting Large Scale React Applications', '', '', 'Sycamore', 30),
	(8, 'Machine Learning Quick Start', '', '', 'Chestnut', 40),
	(9, 'Data Analytics with Tableau', '', '', 'Poplar', 40),
	(10, 'Python for Enterprise Developers', '', '', 'Birch', 40),
	(11, 'Hands on Vue.js', '', '', 'Ash', 40),
	(12, 'Building APIs in ASP.NET Core', '', '', 'Oak', 30)
)
AS Source (WorkshopId, WorkshopName, Description, Requirements, Room, Capacity)
ON Target.WorkshopId = Source.WorkshopId
    WHEN MATCHED THEN
        UPDATE
		    SET
			WorkshopName = Source.WorkshopName,
			Description = Source.Description,
			Requirements = Source.Requirements,
			Room = Source.Room,
			Capacity = Source.Capacity
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (WorkshopId, WorkshopName, Description, Requirements, Room, Capacity)
        VALUES (WorkshopId, WorkshopName, Description, Requirements, Room, Capacity);

GO


DECLARE @nextWorkshopId INT;
SELECT @nextWorkshopId = (
        SELECT max(WorkshopId)
            FROM Workshops
	) ;


DBCC CHECKIDENT (Workshops, RESEED, @nextWorkshopId)

SET IDENTITY_INSERT Workshops OFF


