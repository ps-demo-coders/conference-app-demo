CREATE TABLE [dbo].[WorkshopPresenters]
(
	WorkshopPresentersId INT IDENTITY       NOT NULL,
	WorkshopId           INT                NOT NULL,
	SpeakerId            INT                NOT NULL,
	CONSTRAINT PK_WorkshopPresenters PRIMARY KEY (WorkshopPresentersId),
	CONSTRAINT FK_WorkshopPresenters_WorkshopId
	    FOREIGN KEY (WorkshopId) REFERENCES Workshops (WorkshopId),
	CONSTRAINT FK_WorkshopPresenters_SessionId
	    FOREIGN KEY (SpeakerId) REFERENCES Speakers (SpeakerId)
);
