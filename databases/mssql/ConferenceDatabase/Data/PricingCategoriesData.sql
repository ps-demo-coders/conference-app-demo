MERGE INTO PricingCategories AS Target
USING (VALUES
    ('E', 'Early Bird', '2019-12-01', '2020-01-15'),
    ('R', 'Regular', '2020-01-16', '2020-03-20'),
    ('L', 'Last Minute', '2020-03-21', '2020-04-07')
)
AS Source (PricingCategoryCode, PricingCategoryName, PricingStartDate, PricingEndDate)
ON Target.PricingCategoryCode = Source.PricingCategoryCode
    WHEN MATCHED THEN
        UPDATE
		    SET
			    PricingCategoryName = Source.PricingCategoryName,
				PricingStartDate = Source.PricingStartDate,
				PricingEndDate = Source.PricingEndDate
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (PricingCategoryCode, PricingCategoryName)
        VALUES (PricingCategoryCode, PricingCategoryName);

GO