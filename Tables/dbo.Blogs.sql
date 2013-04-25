CREATE TABLE [dbo].[Blogs]
(
[RecordID] [int] NOT NULL IDENTITY(1, 1),
[Description] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SKU] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Blogs] ADD CONSTRAINT [PK_Blogs] PRIMARY KEY NONCLUSTERED  ([RecordID]) ON [PRIMARY]
GO
DENY REFERENCES ON  [dbo].[Blogs] TO [public]
GRANT SELECT ON  [dbo].[Blogs] TO [public]
DENY INSERT ON  [dbo].[Blogs] TO [public]
DENY DELETE ON  [dbo].[Blogs] TO [public]
DENY UPDATE ON  [dbo].[Blogs] TO [public]
GO
