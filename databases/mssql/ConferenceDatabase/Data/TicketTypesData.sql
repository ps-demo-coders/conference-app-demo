MERGE INTO TicketTypes AS Target
USING (VALUES
    ('P', 'Premium', 'Access to all conference events plus a workshop of your choice', 1),
    ('S', 'Standard', 'Access to the keynote sessions, all breakout sessions and the exhibit hall', 0),
    ('B', 'Basic', 'Access to the Keynote sessions and the exhibit hall', 0)
)
AS Source (TicketTypeCode, TicketCategoryName, Description, IncludesWorkshop)
ON Target.TicketTypeCode = Source.TicketTypeCode
    WHEN MATCHED THEN
        UPDATE
		    SET
			TicketCategoryName = Source.TicketCategoryName,
			Description = Source.Description,
			IncludesWorkshop = Source.IncludesWorkshop
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (TicketTypeCode, TicketCategoryName, Description, IncludesWorkshop)
        VALUES (TicketTypeCode, TicketCategoryName, Description, IncludesWorkshop);

GO