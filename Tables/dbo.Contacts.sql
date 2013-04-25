CREATE TABLE [dbo].[Contacts]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[ContactFullName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PhoneWork] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PhoneMobile] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address1] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address2] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address3] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[JoiningDate] [datetime] NULL CONSTRAINT [DF_const_join_date] DEFAULT (getdate()),
[ModifiedDate] [datetime] NULL,
[Email] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Contacts] ADD CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
