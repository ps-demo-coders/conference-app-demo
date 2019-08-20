SET IDENTITY_INSERT Sessions ON

MERGE INTO Sessions AS Target
USING (VALUES
    (1, 'Keynote - The Golden Age of Software', 45, ''),

    (2 , 'A Better Way to Access Data with Spring Data', 60, ''),
    (3 , 'A Deep Dive Int Sping IoC'                   , 60, ''),
    (4 , 'Building RESTful APIs with Spring Data Rest' , 60, ''),
    (5 , 'Spring Integration Quick Start'              , 60, ''),
    (6 , 'Building Microservices with Spring'          , 60, ''),
    (7 , 'Spring Cloud Primer'                         , 60, ''),
    (8 , 'Spring Boot in 30 Minutes'                   , 30, ''),
    (9 , 'Testing Spring Applciations'                 , 30, ''),
    (10, 'Writing Your First Advice with Spring AOP'   , 30, ''),
    (11, '', 30, ''),

    (12, 'Functional Programming in Java'                 , 60, ''),
    (13, 'Making the Switch from Java to Kotlin'          , 60, ''),
    (14, 'Mastering Concurrency in Java'                  , 60, ''),
    (15, 'Mastering Object-Orientated Programming in Java', 60, ''),
    (16, 'SOLID Principles in Java'                       , 60, ''),
    (17, 'The Most Important Design Patterns'             , 60, ''),
    (18, 'Using EasyMock for Java Testing'                , 30, ''),
    (19, 'IntelliJ IDEA Debugging Secrets'                , 30, ''),
    (20, 'Getting Started with Java Flight Recorder'      , 30, ''),
    (21, '', 30, ''),

    (22, 'Designing Large Scale ASP.NET Core Applications', 60, ''),
    (23, 'Application Security in ASP.NET Core Apps'      , 60, ''),
    (24, '.NET''s HttpClient: The Missing Manual'         , 60, ''),
    (25, 'Using Vue.js in ASP.NET and ASP.NET Core Applications', 60, ''),
    (26, 'Clean Code Practices in C#'                     , 60, ''),
    (27, 'Modern Desktop Applications in .NET'            , 60, ''),
    (28, 'SignalR Quickstart'                             , 30, ''),
    (29, 'Visual Studio Tips and Tricks'                  , 30, ''),
    (30, 'Logging in ASP.NET Core'                        , 30, ''),
    (31, 'A Quick Tour of MiniProfiler'                   , 30, ''),

    (32, 'Demystifying Dependency Injection in .NET'      , 60, ''),
    (33, 'Microservices Architectures using ASP.NET Core' , 60, ''),
    (34, 'Advanced Techniques in Entity Framework Core'   , 60, ''),
    (35, 'C# Language Features You May Not Know About'    , 60, ''),
    (36, 'Asynchronous Programming in .NET'               , 60, ''),
    (37, ''            , 60, ''),
    (38, ''                             , 30, ''),
    (39, ''                  , 30, ''),
    (40, 'Code Analysis for .NET Projects'                , 30, ''),
    (41, 'Better Logging with Serilog'                    , 30, '')


)
AS Source (SessionId, SessionName, SessionLength, SessionDescription)
ON Target.SessionId = Source.SessionId
    WHEN MATCHED THEN
        UPDATE
		    SET
			SessionName = Source.SessionName,
			SessionLength = Source.SessionLength,
			SessionDescription = Source.SessionDescription
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (SessionId, SessionName, SessionLength, SessionDescription)
        VALUES (SessionId, SessionName, SessionLength, SessionDescription);


DECLARE @nextSessionId INT;
SELECT @nextSessionId = (
        SELECT max(SessionID)
            FROM Sessions
	) ;


DBCC CHECKIDENT (Sessions, RESEED, @nextTimeSlotId)

SET IDENTITY_INSERT Sessions OFF







     