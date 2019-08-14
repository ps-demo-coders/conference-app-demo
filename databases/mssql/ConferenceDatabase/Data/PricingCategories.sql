MERGE INTO PricingCategories AS Target
USING (VALUES
    ('E', 'Early Bird'),
    ('R', 'Regular'),
    ('L', 'Last Minute')
)
AS Source (PricingCategoryCode, PricingCategoryName)
ON Target.PricingCategoryCode = Source.PricingCategoryCode
    WHEN MATCHED THEN
        UPDATE
		    SET
			PricingCategoryName = Source.PricingCategoryName
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (PricingCategoryCode, PricingCategoryName)
        VALUES (PricingCategoryCode, PricingCategoryName);

GO