SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- Create indexed view

CREATE VIEW dbo.ArticlesPriceList
WITH SCHEMABINDING 
AS
SELECT     dbo.Blogs.RecordID, dbo.Blogs.Description AS Articles, dbo.ArticlesPrices.Price
FROM       dbo.Blogs INNER JOIN
           dbo.ArticlesPrices ON dbo.Blogs.RecordID = dbo.ArticlesPrices.RecordID
GO
CREATE UNIQUE CLUSTERED INDEX [IX_ArticlesPriceList] ON [dbo].[ArticlesPriceList] ([RecordID]) ON [PRIMARY]
GO
