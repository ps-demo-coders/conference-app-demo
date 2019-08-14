CREATE TABLE [dbo].[Conferences]
(
	ConferenceId        INT IDENTITY     NOT NULL,
	ConferenceName      VARCHAR(50)      NOT NULL,
	Location            VARCHAR(40)      NOT NULL,
	City                VARCHAR(40)      NOT NULL,
	RegionCode          VARCHAR(2)       NOT NULL,
	StartDate           DATE             NOT NULL,
	EndDate             DATE             NOT NULL,
	Description         VARCHAR(4000)    NOT NULL,
	CONSTRAINT PK_Conferences PRIMARY KEY (ConferenceId)
);



