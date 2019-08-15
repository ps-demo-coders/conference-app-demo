CREATE TABLE [dbo].PricingCategories
(
	PricingCategoryCode    VARCHAR(1)      NOT NULL,
	PricingCategoryName    VARCHAR(20)     NOT NULL,
	PricingStartDate       DATE            NOT NULL,
	PricingEndDate         DATE            NOT NULL,
	CONSTRAINT PK_PricingCategories PRIMARY KEY (PricingCategoryCode)
);
