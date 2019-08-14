CREATE TABLE [dbo].[SpeakerSessions]
(
	SpeakerSessionId    INT IDENTITY     NOT NULL,
	SpeakerId           INT              NOT NULL,
	SessionID           INT              NOT NULL,
	CONSTRAINT PK_SpeakerSessions PRIMARY KEY (SpeakerSessionId),
	CONSTRAINT FK_SpeakerSessions_SpeakerId
	    FOREIGN KEY (SpeakerId) REFERENCES Speakers (SpeakerId),
	CONSTRAINT FK_SpeakerSessions_SessionId
	    FOREIGN KEY (SessionId) REFERENCES Sessions (SessionId)
);
