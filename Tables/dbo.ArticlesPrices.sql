CREATE TABLE [dbo].[ArticlesPrices]
(
[RecordID] [int] NOT NULL IDENTITY(1, 1),
[ArticlesID] [int] NULL,
[Price] [money] NULL,
[ValidFrom] [datetime] NULL CONSTRAINT [DF_ArticlesPrices_ValidFrom] DEFAULT (getdate()),
[ValidTo] [datetime] NULL,
[Active] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_ArticlesPrices_Active] DEFAULT ('N')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ArticlesPrices] ADD CONSTRAINT [PK_ArticlesPrices] PRIMARY KEY NONCLUSTERED  ([RecordID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ArticlesPrices] ON [dbo].[ArticlesPrices] ([ArticlesID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ArticlesPrices_1] ON [dbo].[ArticlesPrices] ([ValidFrom]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ArticlesPrices_2] ON [dbo].[ArticlesPrices] ([ValidTo]) ON [PRIMARY]
GO
DENY REFERENCES ON  [dbo].[ArticlesPrices] TO [public]
GRANT SELECT ON  [dbo].[ArticlesPrices] TO [public]
DENY INSERT ON  [dbo].[ArticlesPrices] TO [public]
DENY DELETE ON  [dbo].[ArticlesPrices] TO [public]
DENY UPDATE ON  [dbo].[ArticlesPrices] TO [public]
GO
