CREATE TABLE [dbo].[SessionTags]
(
	SessionTagId    INT IDENTITY  NOT NULL,
	SessionID       INT           NOT NULL,
	Tag             VARCHAR(30)   NOT NULL,
	CONSTRAINT PK_SessionTags PRIMARY KEY (SessionTagId),
	CONSTRAINT FK_SessionTags_SessionID 
	    FOREIGN KEY (SessionID) REFERENCES Sessions (SessionID),
	CONSTRAINT FK_SessionTags_Tag
	    FOREIGN KEY (Tag) REFERENCES Tags (Tag)
);
