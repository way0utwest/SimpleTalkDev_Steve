SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--SET QUOTED_IDENTIFIER ON|OFF
--SET ANSI_NULLS ON|OFF

CREATE PROCEDURE [dbo].[spGetArticlePicture]
	@ArticleID AS int
AS
	SELECT ad.articlesid
	, ad.Picture
	FROM dbo.ArticlesDescriptions ad
	WHERE ad.ArticlesID = @articleID
GO
