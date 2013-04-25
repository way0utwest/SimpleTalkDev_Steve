CREATE TABLE [dbo].[Articles]
(
[ArticleID] [int] NOT NULL IDENTITY(1, 1),
[AuthorID] [int] NULL,
[Title] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Date] [date] NULL,
[ModifiedDate] [datetime] NULL,
[URL] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Articles] ADD CONSTRAINT [PK__Articles__9C6270C87487CB21] PRIMARY KEY CLUSTERED  ([ArticleID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Articles] ADD CONSTRAINT [FK_Author] FOREIGN KEY ([AuthorID]) REFERENCES [dbo].[Contacts] ([ID])
GO
