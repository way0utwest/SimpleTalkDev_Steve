CREATE TABLE [dbo].[ArticlesReferences]
(
[ArticlesID] [int] NOT NULL IDENTITY(1, 1),
[Reference] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ArticlesReferences] ADD CONSTRAINT [PK_ArticlesReferences] PRIMARY KEY NONCLUSTERED  ([ArticlesID]) ON [PRIMARY]
GO
