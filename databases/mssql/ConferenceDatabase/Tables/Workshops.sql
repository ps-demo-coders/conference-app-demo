CREATE TABLE [dbo].[Workshops]
(
	WorkshopId           INT IDENTITY            NOT NULL,
	WorkshopName         VARCHAR(60)             NOT NULL,
	Description          VARCHAR(1024)           NOT NULL,
	Requirements         VARCHAR(1024)           NOT NULL,
	Room                 VARCHAR(30)             NOT NULL,
	Capacity             INT                     NOT NULL,
    CONSTRAINT PK_Workshops PRIMARY KEY (WorkshopId)
);
