CREATE TABLE [dbo].[ArticlesDescriptions]
(
[ArticlesID] [int] NOT NULL IDENTITY(1, 1),
[ShortDescription] [nvarchar] (2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ArticlesName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Picture] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ArticlesDescriptions] ADD CONSTRAINT [PK_ArticlesDescriptions] PRIMARY KEY CLUSTERED  ([ArticlesID]) ON [PRIMARY]
GO
