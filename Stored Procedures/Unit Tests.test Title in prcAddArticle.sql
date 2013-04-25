SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [Unit Tests].[test Title in prcAddArticle]
AS
BEGIN
-- Create a fake table
EXEC tSQLt.FakeTable 'dbo.Articles';

-- Populate a record using the procedure I'm testing
EXEC [prcAddArticle]
@AuthorID = '6',
@Title = 'Why most SQL professionals are crazy about Red Gate tools';


-- Specify the actual results
DECLARE @ActualTitle CHAR(100);
SET @ActualTitle = (SELECT Title FROM dbo.Articles);

-- Verify that the actual results corresponds to the expected results
EXEC tSQLt.AssertEquals @Expected = 'Why most SQL professionals are crazy about Red Gate tools', @Actual = @ActualTitle;
END;

GO
