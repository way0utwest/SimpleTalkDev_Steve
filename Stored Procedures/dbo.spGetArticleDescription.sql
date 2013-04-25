
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--SET QUOTED_IDENTIFIER ON|OFF
--SET ANSI_NULLS ON|OFF

CREATE PROCEDURE [dbo].[spGetArticleDescription]
	@ArticlesID AS int = NULL
/*
Description:
This procedure should return a specific article's name and description.
*/AS

IF @articlesID IS NOT NULL
	SELECT  a.ArticleID ,
	        a.Title ,
	        a.[Description] ,
	        a.URL ,
	        ad.ShortDescription ,
	        ad.Description ,
	        ad.ArticlesName 
	 FROM articles a
	  INNER JOIN dbo.ArticlesDescriptions ad
	   ON a.ArticleID = ad.ArticlesID
	   WHERE a.ArticleID = @ArticlesID
ELSE  SELECT 'ArticleID' = NULL
RETURN
GO
