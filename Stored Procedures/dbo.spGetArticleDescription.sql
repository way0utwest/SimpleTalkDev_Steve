SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--SET QUOTED_IDENTIFIER ON|OFF
--SET ANSI_NULLS ON|OFF

CREATE PROCEDURE [dbo].[spGetArticleDescription]
	@ArticlesID AS int
AS
	SELECT  ArticleID ,
	        Title ,
	        a.Description ,
	        URL ,
	        ShortDescription ,
	        ad.Description ,
	        ArticlesName 
	 FROM articles a
	  INNER JOIN dbo.ArticlesDescriptions ad
	   ON a.ArticleID = ad.ArticlesID
	   WHERE a.ArticleID = @ArticlesID

GO
