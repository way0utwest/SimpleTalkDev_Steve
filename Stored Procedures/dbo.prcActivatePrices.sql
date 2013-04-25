SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[prcActivatePrices]  AS

UPDATE ArticlesPrices SET Active='N' WHERE GETDATE()<ValidTo OR GETDATE()>ValidFrom
UPDATE ArticlesPrices SET Active='Y' WHERE GETDATE()>=ValidFrom OR GETDATE()<=ValidFrom

GO
DENY EXECUTE ON  [dbo].[prcActivatePrices] TO [public]
GO
