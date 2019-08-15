CREATE TABLE [dbo].[Speakers]
(
	SpeakerId      INT IDENTITY     NOT NULL,
	FirstName      VARCHAR(30)      NOT NULL,
	LastName       VARCHAR(30)      NOT NULL,
	Title          VARCHAR(40)      NOT NULL,
	Company        VARCHAR(40)      NOT NULL,
	SpeakerBio     VARCHAR(2000)    NOT NULL,	
	SpeakerPhoto   VARCHAR(80)      NULL,
	CONSTRAINT     PK_Speakers PRIMARY KEY (SpeakerId)
)
