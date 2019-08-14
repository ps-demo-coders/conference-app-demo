CREATE TABLE [dbo].[SessionTypes]
(
    SessionTypeCode     VARCHAR(4)     NOT NULL,
	TalkTypeName     VARCHAR(20)    NOT NULL,
	CONSTRAINT PK_TalkTypes PRIMARY KEY (SessionTypeCode)
);
