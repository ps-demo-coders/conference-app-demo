CREATE TABLE [dbo].PricingCategories
(
	PricingCategoryCode    VARCHAR(1)      NOT NULL,
	PricingCategoryName    VARCHAR(20)     NOT NULL,
	CONSTRAINT PK_PricingCategories PRIMARY KEY (PricingCategoryCode)

)
