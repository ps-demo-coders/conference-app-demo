

MERGE INTO TicketTypes AS Target
USING (VALUES
    ('P', 'Premium', 'Access to all conference events plus attend the workshop of your choice.', 1),
	('S', 'Premium', 'Access to all conference keynotes, sessions, community open spaces and the exhibition hall', 0),
	('E', 'Premium', 'Access to keynotes, community open spaces and the exhibition hall', 0)
)
AS Source (TicketTypeCode, TicketTypeName, Description, IncludesWorkshop )
ON Target.TicketTypeCode = Source.TicketTypeCode
    WHEN MATCHED THEN
        UPDATE
		    SET
			TicketTypeName = Source.TicketTypeName,
			Description = Source.Description,
			IncludesWorkshop = Source.IncludesWorkshop
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (TicketTypeCode, TicketTypeName, Description, IncludesWorkshop, PricingCategory, PricingStartDate, PricingEndDate, BasePrice )
        VALUES (TicketTypeCode, TicketTypeName, Description, IncludesWorkshop, PricingCategory, PricingStartDate, PricingEndDate, BasePrice );




      