SET IDENTITY_INSERT Sessions ON

MERGE INTO Sessions AS Target
USING (VALUES
    (1, 'Keynote - The Golden Age of Software', 45, ''),

    (2 , 'A Better Way to Access Data with Spring Data', 60, ''),
    (3 , 'A Deep Dive Into Spring IoC'                 , 60, ''),
    (4 , 'Building RESTful APIs with Spring Data Rest' , 60, ''),
    (5 , 'Spring Integration Quick Start'              , 60, ''),
    (6 , 'Building Microservices with Spring'          , 60, ''),
    (7 , 'Spring Cloud Primer'                         , 60, ''),
    (8 , 'Spring Boot in 30 Minutes'                   , 30, ''),
    (9 , 'Testing Spring Applications'                 , 30, ''),
    (10, 'Writing Your First Advice with Spring AOP'   , 30, ''),
    (11, 'IntelliJ IDEA Tips and Tricks'               , 30, ''),

    (12, 'Functional Programming in Java'                 , 60, ''),
    (13, 'Making the Switch from Java to Kotlin'          , 60, ''),
    (14, 'Mastering Concurrency in Java'                  , 60, ''),
    (15, 'Mastering Object-Orientated Programming in Java', 60, ''),
    (16, 'SOLID Principles in Java'                       , 60, ''),
    (17, 'The Most Important Java Design Patterns'        , 60, ''),
    (18, 'Using EasyMock for Java Testing'                , 30, ''),
    (19, 'IntelliJ IDEA Debugging Secrets'                , 30, ''),
    (20, 'Getting Started with Java Flight Recorder'      , 30, ''),
    (21, 'Clean Code Principls for Java Developers'       , 30, ''),

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
    (37, 'Advanced Entity Framework Core'                 , 60, ''),
    (38, 'A lap around the .NET Command Line Interface (CLI)', 30, ''),
    (39, 'Deploying .NET Apps with Azure DevOps'          , 30, ''),
    (40, 'Code Analysis for .NET Projects'                , 30, ''),
    (41, 'Better Logging with Serilog'                    , 30, ''),

    (42, 'Deploying Web Applications to Azure'            , 60, ''),
    (43, 'Getting Started with Azure Cognitive Services'  , 60, ''),
    (44, 'Building Microservices with Azure Functions'    , 60, ''),
    (45, 'Big Data and Analytics on the Azure Platform'   , 60, ''),
    (46, 'Getting Started with CosmosDB'                  , 60, ''),
    (47, 'Securing Azure Services'                        , 60, ''),
    (48, 'Azure Event Grid Quickstart'                    , 30, ''),
    (49, 'Managing Azure with the Azure CLI'              , 30, ''),
    (50, 'Migrating to Azure SQL'                         , 30, ''),
    (51, 'Understanding the Azure Blockchain Service'     , 30, ''),

    (62, 'Building Hybrid Cloud Architectures in AWS'     , 60, ''),
    (63, 'Migrating On-Premises Applications to AWS'      , 60, ''),
    (64, 'IOT Solutions Using AWS'                        , 60, ''),
    (65, 'Getting Startedd with Machine Learning in AWS'  , 60, ''),
    (66, 'DevOps on the AWS Platform'                     , 60, ''),
    (67, 'Serverless Computing on AWS'                    , 60, ''),
    (68, 'Amazon DynamoDB Quickstart'                     , 30, ''),
    (69, 'Understanding the Amazon Elastic Kubernetes Service', 30, ''),
    (70, 'Creating Your First Data Lake in AWS'           , 30, ''),
    (71, 'Migrating to Amazon Aurora'                     , 30, ''),

	(82, 'How Agile Are You Really?'                      , 60, ''),
    (83, 'Better Retrospectives'                          , 60, ''),
    (84, 'Developer to Leader'                            , 60, ''),
    (85, 'Selling Your Ideas to Leadership: A Guide for Technology Professionals'  , 60, ''),
    (86, 'Creating a Culture of Learning'                 , 60, ''),
    (87, 'The Seven Habits of Highly Effective Developers', 60, ''),
    (88, 'Writing Better User Stories'                    , 30, ''),
    (89, 'Techniques for Better Estimates'                , 30, ''),
    (90, 'Communication Skills for the Technology Professional', 30, ''),
    (91, 'Personal Kanban'                                , 30, '')


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


DBCC CHECKIDENT (Sessions, RESEED, @nextSessionId)

SET IDENTITY_INSERT Sessions OFF







     