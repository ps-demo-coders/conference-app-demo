SET IDENTITY_INSERT TicketPrices ON

MERGE INTO TicketPrices AS Target
USING (VALUES
	(1, 'P', 'E', 800),
	(2, 'P', 'R', 1000),
	(3, 'P', 'L', 1200),

	(4, 'S', 'E', 500),
	(5, 'S', 'R', 700),
	(6, 'S', 'L', 1000),

	(7, 'C', 'E', 100),
	(8, 'C', 'R', 200),
	(9, 'C', 'L', 300)
)
AS Source (TicketPriceId, TicketTypeCode, PricingCategoryCode, BasePrice)
ON Target.TicketPriceId = Source.TicketPriceId
    WHEN MATCHED THEN
        UPDATE
		    SET
			TicketTypeCode = Source.TicketTypeCode,
			PricingCategoryCode = Source.PricingCategoryCode,
			BasePrice = Source.BasePrice
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (TicketPriceId, TicketTypeCode, PricingCategoryCode, BasePrice)
        VALUES (TicketPriceId, TicketTypeCode, PricingCategoryCode, BasePrice);

GO


DECLARE @nextTicketPriceId INT;
SELECT @nextTicketPriceId = (
        SELECT max(TicketPriceId)
            FROM TicketPrices
	) ;


DBCC CHECKIDENT (TicketPrices, RESEED, @nextTicketPriceId)

SET IDENTITY_INSERT TicketPrices OFF


            









