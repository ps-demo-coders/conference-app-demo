MERGE INTO Tags AS Target
USING (VALUES
	    ('.NET'),
		('Java'),
		('Python'),
		('JavaScript'),
		('Angular'),
		('React'),
		('Vue.js'),
		('Web'),
		('Architecture'),
		('Soft Skills'),
		('Agile'),
		('Cloud')
)
AS Source (Tag)
ON Target.Tag = Source.Tag
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (Tag)
        VALUES (Tag);
