SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[prcAddArticle]
	@AuthorID INT ,
	@Title VARCHAR(142) = NULL ,
	@Description VARCHAR(MAX) = NULL ,
	@Date DATETIME = NULL ,
	@URL VARCHAR(100) = NULL
	WITH EXECUTE AS CALLER
AS 
	BEGIN
		INSERT	INTO dbo.Articles
				( AuthorID ,
				  Title ,
				  [Description] ,
				  [Date] ,
				  [ModifiedDate] ,
				  [URL] 
        		)
		VALUES	( @AuthorID ,
				  @Title ,
				  @Description ,
				  @Date , -- Publish date
				  GETDATE() , -- ModifiedDate
				  @URL
        		)
	END;
GO
