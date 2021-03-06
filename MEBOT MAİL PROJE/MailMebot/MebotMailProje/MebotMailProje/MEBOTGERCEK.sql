
GO
/****** Object:  Table [dbo].[Dosyalar]    Script Date: 22.11.2016 16:44:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dosyalar](
	[dosya_ID] [int] IDENTITY(1,1) NOT NULL,
	[dosyaAdi] [nvarchar](100) NULL,
	[mail_ID] [int] NULL,
 CONSTRAINT [PK_Dosyalar] PRIMARY KEY CLUSTERED 
(
	[dosya_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GonderilenMail]    Script Date: 22.11.2016 16:44:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GonderilenMail](
	[Gonderilen_ID] [int] IDENTITY(1,1) NOT NULL,
	[Alici] [nvarchar](100) NULL,
	[Konu] [nvarchar](max) NULL,
	[icerik] [nvarchar](max) NULL,
	[tarih] [datetime] NULL,
	[kul_ID] [int] NULL,
 CONSTRAINT [PK_GonderilenMail] PRIMARY KEY CLUSTERED 
(
	[Gonderilen_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 22.11.2016 16:44:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori](
	[kategori_ID] [int] IDENTITY(1,1) NOT NULL,
	[kategoriAdi] [nvarchar](100) NULL,
 CONSTRAINT [PK_Kategori] PRIMARY KEY CLUSTERED 
(
	[kategori_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kullanici]    Script Date: 22.11.2016 16:44:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanici](
	[kullanici_ID] [int] IDENTITY(1,1) NOT NULL,
	[kullaniciAdi] [nvarchar](100) NULL,
	[sifre] [nvarchar](50) NULL,
	[ad] [nvarchar](50) NULL,
	[soyad] [nvarchar](50) NULL,
	[dogumTarihi] [date] NULL,
	[imza] [nvarchar](max) NULL,
 CONSTRAINT [PK_Kullanici] PRIMARY KEY CLUSTERED 
(
	[kullanici_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MailCekme]    Script Date: 22.11.2016 16:44:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MailCekme](
	[mail_ID] [int] IDENTITY(1,1) NOT NULL,
	[gonderen] [nvarchar](100) NULL,
	[konu] [nvarchar](max) NULL,
	[icerik] [nvarchar](max) NULL,
	[tarih] [datetime] NULL,
	[kul_ID] [int] NULL,
 CONSTRAINT [PK_MailCekme] PRIMARY KEY CLUSTERED 
(
	[mail_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tur]    Script Date: 22.11.2016 16:44:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tur](
	[Kategori_ID] [int] NOT NULL,
	[mail_ID] [int] NOT NULL,
 CONSTRAINT [PK_Tur] PRIMARY KEY CLUSTERED 
(
	[Kategori_ID] ASC,
	[mail_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Dosyalar]  WITH CHECK ADD  CONSTRAINT [FK_Dosyalar_MailCekme] FOREIGN KEY([mail_ID])
REFERENCES [dbo].[MailCekme] ([mail_ID])
GO
ALTER TABLE [dbo].[Dosyalar] CHECK CONSTRAINT [FK_Dosyalar_MailCekme]
GO
ALTER TABLE [dbo].[GonderilenMail]  WITH CHECK ADD  CONSTRAINT [FK_GonderilenMail_Kullanici] FOREIGN KEY([kul_ID])
REFERENCES [dbo].[Kullanici] ([kullanici_ID])
GO
ALTER TABLE [dbo].[GonderilenMail] CHECK CONSTRAINT [FK_GonderilenMail_Kullanici]
GO
ALTER TABLE [dbo].[MailCekme]  WITH CHECK ADD  CONSTRAINT [FK_MailCekme_Kullanici] FOREIGN KEY([kul_ID])
REFERENCES [dbo].[Kullanici] ([kullanici_ID])
GO
ALTER TABLE [dbo].[MailCekme] CHECK CONSTRAINT [FK_MailCekme_Kullanici]
GO
ALTER TABLE [dbo].[Tur]  WITH CHECK ADD  CONSTRAINT [FK_Tur_Kategori] FOREIGN KEY([Kategori_ID])
REFERENCES [dbo].[Kategori] ([kategori_ID])
GO
ALTER TABLE [dbo].[Tur] CHECK CONSTRAINT [FK_Tur_Kategori]
GO
ALTER TABLE [dbo].[Tur]  WITH CHECK ADD  CONSTRAINT [FK_Tur_MailCekme] FOREIGN KEY([mail_ID])
REFERENCES [dbo].[MailCekme] ([mail_ID])
GO
ALTER TABLE [dbo].[Tur] CHECK CONSTRAINT [FK_Tur_MailCekme]
GO
