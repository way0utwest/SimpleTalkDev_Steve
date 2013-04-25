CREATE TABLE [dbo].[ArticlesPurchases]
(
[PurchaseID] [int] NOT NULL IDENTITY(1, 1),
[ArticlesPriceID] [int] NOT NULL,
[Quantity] [int] NOT NULL CONSTRAINT [DF__ArticlesP__Quant__1B0907CE] DEFAULT ((1)),
[InvoiceNumber] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Date] [datetime] NOT NULL CONSTRAINT [DF__ArticlesPu__Date__1BFD2C07] DEFAULT (getdate())
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [IX_ArticlesPurchases] ON [dbo].[ArticlesPurchases] ([PurchaseID]) ON [PRIMARY]
GO
