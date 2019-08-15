CREATE TABLE [dbo].[Sessions]
(
	SessionId            INT IDENTITY   NOT NULL,
	SessionName          VARCHAR(80)    NOT NULL,
	SessionDescription   VARCHAR(1024)  NOT NULL,
	SessionLength        INTEGER        NOT NULL,
	CONSTRAINT PK_Sessions PRIMARY KEY (SessionId)
)
