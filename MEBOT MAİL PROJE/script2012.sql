USE [MailDB]
GO
/****** Object:  Table [dbo].[Dosyalar]    Script Date: 4.1.2017 22:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dosyalar](
	[dosya_ID] [int] IDENTITY(1,1) NOT NULL,
	[dosyaAdi] [nvarchar](max) NULL,
	[dosyaUzantisi] [nvarchar](max) NULL,
	[mail_ID] [int] NULL,
 CONSTRAINT [PK_Dosyalar] PRIMARY KEY CLUSTERED 
(
	[dosya_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kullanici]    Script Date: 4.1.2017 22:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanici](
	[kullanici_ID] [int] IDENTITY(1,1) NOT NULL,
	[kullaniciAdi] [nvarchar](50) NULL,
	[sifre] [nvarchar](50) NULL,
	[ad] [nvarchar](50) NULL,
	[soyad] [nvarchar](50) NULL,
	[dogumTarihi] [date] NULL,
	[durum] [bit] NULL,
	[mailSayisi] [int] NULL,
	[kulDurum] [int] NULL,
 CONSTRAINT [PK_Kullanici] PRIMARY KEY CLUSTERED 
(
	[kullanici_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MailBox]    Script Date: 4.1.2017 22:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MailBox](
	[mailbox_ID] [int] IDENTITY(1,1) NOT NULL,
	[durum_No] [int] NULL,
	[kullanici_No] [int] NULL,
	[gonderen] [nvarchar](max) NULL,
	[alici] [nvarchar](max) NULL,
	[konu] [nvarchar](max) NULL,
	[icerik] [nvarchar](max) NULL,
	[tarih] [datetime] NULL,
 CONSTRAINT [PK_MailBox] PRIMARY KEY CLUSTERED 
(
	[mailbox_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MailDurum]    Script Date: 4.1.2017 22:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MailDurum](
	[durum_ID] [int] NOT NULL,
	[durumAdi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MailDurum] PRIMARY KEY CLUSTERED 
(
	[durum_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Dosyalar] ON 

INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (79, N'görsel programlama Ders3.docx', N'dosyalar/word/görsel programlama Ders3.docx', 201)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (80, N'yarın yapülacekler.rar', N'dosyalar/rar/yarın yapülacekler.rar', 202)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (81, N'Adsız.png', N'dosyalar/resimler/Adsız.png', 202)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (82, N'beste.MP4', N'dosyalar/videolar/beste.MP4', 203)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (83, N'MEBOTMAIL.accdb', N'dosyalar/diger/MEBOTMAIL.accdb', 204)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (84, N'yarın yapülacekler.txt', N'dosyalar/word/yarın yapülacekler.txt', 205)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (85, N'18-12-2016 13-48-02yarın yapülacekler.rar', N'dosyalar/rar/18-12-2016 13-48-02yarın yapülacekler.rar', 205)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (86, N'18-12-2016 16-07-15görsel programlama Ders3.docx', N'dosyalar/word/18-12-2016 16-07-15görsel programlama Ders3.docx', 205)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (87, N'One piece.png', N'dosyalar/resimler/One piece.png', 205)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (88, N'18-12-2016 16-10-22Adsız.png', N'dosyalar/resimler/18-12-2016 16-10-22Adsız.png', 206)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (89, N'add (1).png', N'dosyalar/resimler/add (1).png', 208)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (90, N'Bleach 7. Sezon Türkçe Altyazı Paketi.zip', N'dosyalar/rar/Bleach 7. Sezon Türkçe Altyazı Paketi.zip', 208)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (93, N'New Text Document.txt', N'dosyalar/word/New Text Document.txt', 210)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (94, N'puzzle.ico', N'dosyalar/resimler/puzzle.ico', 210)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (95, N'yilsonu2015bm.doc', N'dosyalar/word/yilsonu2015bm.doc', 210)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (96, N'butunleme2016guz.doc', N'dosyalar/word/butunleme2016guz.doc', 213)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (98, N'Ders3.docx', N'dosyalar/word/Ders3.docx', 227)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (99, N'link.txt', N'dosyalar/word/link.txt', 229)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (100, N'Adb.torrent', N'dosyalar/diger/Adb.torrent', 231)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (101, N'facebook.png', N'dosyalar/resimler/facebook.png', 231)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (102, N'move.png', N'dosyalar/resimler/move.png', 231)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (103, N'add.png', N'dosyalar/resimler/add.png', 236)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (104, N'cloudy.png', N'dosyalar/resimler/cloudy.png', 236)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (107, N'skype.png', N'dosyalar/resimler/skype.png', 239)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (108, N'twitter.png', N'dosyalar/resimler/twitter.png', 239)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (109, N'MailMebot.rar', N'dosyalar/rar/MailMebot.rar', 239)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (110, N'22-12-2016 21-13-24twitter.png', N'dosyalar/resimler/22-12-2016 21-13-24twitter.png', 242)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (111, N'22-12-2016 21-14-22twitter.png', N'dosyalar/resimler/22-12-2016 21-14-22twitter.png', 243)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (112, N'facebook (1).png', N'dosyalar/resimler/facebook (1).png', 245)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (113, N'facebook (1).png', N'dosyalar/resimler/facebook (1).png', 244)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (114, N'calendar.png', N'dosyalar/resimler/calendar.png', 245)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (115, N'calendar.png', N'dosyalar/resimler/calendar.png', 244)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (153, N'clip.png', N'dosyalar/resimler/clip.png', 609)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (158, N'3-1-2017 00-38-49cloudy.png', N'dosyalar/resimler/3-1-2017 00-38-49cloudy.png', 731)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (159, N'3-1-2017 00-39-41cloudy.png', N'dosyalar/resimler/3-1-2017 00-39-41cloudy.png', 732)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (160, N'bing.png', N'dosyalar/resimler/bing.png', 734)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (161, N'(no name)', N'dosyalar/diger/(no name)', 737)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (162, N'3-1-2017 01-54-53(no name)', N'dosyalar/diger/3-1-2017 01-54-53(no name)', 741)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (163, N'3-1-2017 01-57-27(no name)', N'dosyalar/diger/3-1-2017 01-57-27(no name)', 745)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (166, N'3-1-2017 10-25-08bing.png', N'dosyalar/resimler/3-1-2017 10-25-08bing.png', 752)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (167, N'3-1-2017 11-07-43add (1).png', N'dosyalar/resimler/3-1-2017 11-07-43add (1).png', 759)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (168, N'3-1-2017 11-19-38(no name)', N'dosyalar/diger/3-1-2017 11-19-38(no name)', 765)
INSERT [dbo].[Dosyalar] ([dosya_ID], [dosyaAdi], [dosyaUzantisi], [mail_ID]) VALUES (169, N'3-1-2017 11-20-06(no name)', N'dosyalar/diger/3-1-2017 11-20-06(no name)', 769)
SET IDENTITY_INSERT [dbo].[Dosyalar] OFF
SET IDENTITY_INSERT [dbo].[Kullanici] ON 

INSERT [dbo].[Kullanici] ([kullanici_ID], [kullaniciAdi], [sifre], [ad], [soyad], [dogumTarihi], [durum], [mailSayisi], [kulDurum]) VALUES (1, N'okandeneme60@gmail.com', N'74185296', N'Hüseyin', N'Armut', CAST(N'2016-11-30' AS Date), 0, 0, 0)
INSERT [dbo].[Kullanici] ([kullanici_ID], [kullaniciAdi], [sifre], [ad], [soyad], [dogumTarihi], [durum], [mailSayisi], [kulDurum]) VALUES (4, N'mebotadm@outlook.com', N'74185296a', N'MEBOT', N'admin', CAST(N'2016-12-28' AS Date), 0, 18, 0)
INSERT [dbo].[Kullanici] ([kullanici_ID], [kullaniciAdi], [sifre], [ad], [soyad], [dogumTarihi], [durum], [mailSayisi], [kulDurum]) VALUES (7, N'okan10203@outlook.com', N'74185296a', N'burak', N'admin', CAST(N'2015-12-30' AS Date), 0, 11, 0)
INSERT [dbo].[Kullanici] ([kullanici_ID], [kullaniciAdi], [sifre], [ad], [soyad], [dogumTarihi], [durum], [mailSayisi], [kulDurum]) VALUES (9, N'enessene2828@gmail.com', N'74185296', N'tuni', N'oki', CAST(N'1989-03-09' AS Date), 0, 0, 0)
INSERT [dbo].[Kullanici] ([kullanici_ID], [kullaniciAdi], [sifre], [ad], [soyad], [dogumTarihi], [durum], [mailSayisi], [kulDurum]) VALUES (12, N'aliduru28@yandex.com', N'74185296', N'Ali', N'Duru', CAST(N'1989-01-06' AS Date), 0, 4, 0)
INSERT [dbo].[Kullanici] ([kullanici_ID], [kullaniciAdi], [sifre], [ad], [soyad], [dogumTarihi], [durum], [mailSayisi], [kulDurum]) VALUES (18, N'admmebot@hotmail.com', N'74185296ayln', N'benim', N'hesabım', CAST(N'1995-10-10' AS Date), 0, 0, 1)
INSERT [dbo].[Kullanici] ([kullanici_ID], [kullaniciAdi], [sifre], [ad], [soyad], [dogumTarihi], [durum], [mailSayisi], [kulDurum]) VALUES (19, N'brkmebot@outlook.com', N'74185296a', N'burak', N'sirin', CAST(N'1989-02-08' AS Date), 0, 3, 0)
INSERT [dbo].[Kullanici] ([kullanici_ID], [kullaniciAdi], [sifre], [ad], [soyad], [dogumTarihi], [durum], [mailSayisi], [kulDurum]) VALUES (20, N'brkmebot2@outlook.com', N'74185296a', N'brk', N'siriner', CAST(N'1994-06-15' AS Date), 0, 0, 1)
INSERT [dbo].[Kullanici] ([kullanici_ID], [kullaniciAdi], [sifre], [ad], [soyad], [dogumTarihi], [durum], [mailSayisi], [kulDurum]) VALUES (21, N'tunatuna53@outlook.com', N'74185296a', N'akslf', N'alskfh', CAST(N'1989-01-03' AS Date), 0, 0, 1)
INSERT [dbo].[Kullanici] ([kullanici_ID], [kullaniciAdi], [sifre], [ad], [soyad], [dogumTarihi], [durum], [mailSayisi], [kulDurum]) VALUES (22, N'mebotsunum@yandex.com', N'74185296a', N'mebot', N'admin', CAST(N'1989-01-10' AS Date), 1, 4, 0)
INSERT [dbo].[Kullanici] ([kullanici_ID], [kullaniciAdi], [sifre], [ad], [soyad], [dogumTarihi], [durum], [mailSayisi], [kulDurum]) VALUES (23, N'mebotsunum@gmail.com', N'74185296a', N'mebot', N'admin', CAST(N'1977-01-03' AS Date), 0, 0, 1)
INSERT [dbo].[Kullanici] ([kullanici_ID], [kullaniciAdi], [sifre], [ad], [soyad], [dogumTarihi], [durum], [mailSayisi], [kulDurum]) VALUES (24, N'mebotsunum@outlook.com', N'74185296a', N'asf', N'asfgaf', CAST(N'1998-01-03' AS Date), 0, 2, 0)
SET IDENTITY_INSERT [dbo].[Kullanici] OFF
SET IDENTITY_INSERT [dbo].[MailBox] ON 

INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (50, 1, 7, N'okan10203@outlook.com', N'okandeneme60@gmail.com', N'albunu trek', N'bunu da al
', CAST(N'2015-11-01T14:51:40.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (51, 1, 7, N'okan10203@outlook.com', N'okandeneme60@gmail.com', N'polonyalı ', N'okan', CAST(N'2016-12-03T14:52:12.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (52, 1, 7, N'okan10203@outlook.com', N'okandeneme60@gmail.com', N'sdadas', N'sda', CAST(N'2016-12-11T14:59:59.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (53, 1, 7, N'okan10203@outlook.com', N'okandeneme60@gmail.com', N'of', N'got', CAST(N'2016-12-02T15:03:57.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (54, 1, 7, N'okan10203@outlook.com', N'okandeneme60@gmail.com', N'salamura', N'okan', CAST(N'2016-12-11T15:07:43.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (55, 1, 9, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'okul', N'okul mudur', CAST(N'2016-12-12T14:49:22.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (56, 1, 9, N'enessene2828@gmail.com', N'okandeneme60@outlook.com', N'müdür', N'müdür müdür', CAST(N'2014-12-01T14:50:35.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (57, 1, 9, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'str', N'ptr', CAST(N'2013-12-16T11:21:24.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (58, 1, 9, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'abc', N'cde', CAST(N'2015-12-16T11:22:38.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (59, 1, 9, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'qw', N'qwe', CAST(N'2016-11-16T11:24:37.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (60, 3, 9, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'mesaj', N'tesaj', CAST(N'2010-12-12T11:29:10.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (61, 1, 9, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'salamuraokan', N'tasdasda', CAST(N'2012-11-14T11:33:27.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (62, 1, 9, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'takriben', N'ben okanıl', CAST(N'2016-12-13T11:34:29.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (64, 1, 9, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'okanaa', N'nıl', CAST(N'2016-10-16T11:39:02.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (65, 1, 9, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'selam', N'okan', CAST(N'2015-10-16T11:41:36.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (66, 1, 9, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'salama', N'okana', CAST(N'2016-12-16T11:42:15.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (67, 1, 9, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'aka', N'asfl', CAST(N'2016-12-16T11:43:54.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (68, 1, 9, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'konu', N'icerik', CAST(N'2016-12-16T11:45:09.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (69, 1, 9, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'okan', N'deneme', CAST(N'2016-12-16T11:47:43.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (70, 1, 9, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'adss', N'nmk', CAST(N'2016-12-16T13:57:27.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (80, 1, 9, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'rap', N'yap', CAST(N'2016-12-14T14:29:33.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (82, 1, 9, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'Tat', N'Bunu', CAST(N'2016-12-16T14:31:12.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (83, 1, 9, N'enessene2828@gmail.com', N'okan10203@outlook.com', N'Tat', N'Bunu', CAST(N'2016-12-16T14:31:12.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (192, 4, 9, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'al bunu', N'al', CAST(N'2016-12-18T14:05:00.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (197, 1, 9, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'Tarantula', N'Koc', CAST(N'2016-12-18T15:45:19.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (200, 1, 9, N'enessene2828@gmail.com', N'mebotadm@outlook.com', N'seveceksen', N'sen beni sev', CAST(N'2016-12-18T16:00:10.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (201, 1, 9, N'enessene2828@gmail.com', N'mebotadm@outlook.com', N'konu', N'kim', CAST(N'2016-12-18T16:00:51.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (202, 1, 9, N'enessene2828@gmail.com', N'mebotadm@outlook.com', N'hangimiz', N'sevmedik', CAST(N'2016-12-18T16:01:55.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (203, 1, 9, N'enessene2828@gmail.com', N'mebotadm@outlook.com', N'bos', N'sun', CAST(N'2016-12-18T16:04:44.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (204, 1, 9, N'enessene2828@gmail.com', N'mebotadm@outlook.com', N'asıl', N'konu ney', CAST(N'2016-12-18T16:05:32.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (205, 1, 9, N'enessene2828@gmail.com', N'mebotadm@outlook.com', N'tokatlı ', N'tuna', CAST(N'2016-12-18T16:07:15.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (206, 1, 9, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'okan sen bunu ', N'hakattin', CAST(N'2016-12-18T16:10:22.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (207, 1, 9, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'okan', N'hacklendin çünkü hakettin', CAST(N'2016-12-18T16:13:39.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (208, 1, 9, N'enessene2828@gmail.com', N'mebotadm@outlook.com', N'katlet', N'onu', CAST(N'2016-12-18T16:14:23.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (210, 1, 9, N'enessene2828@gmail.com', N'mebotadm@outlook.com', N'kon', N'du kuş', CAST(N'2016-12-18T16:16:28.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (212, 1, 9, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'select * from Kullanici', N'www', CAST(N'2016-12-21T14:07:41.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (213, 1, 9, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'Selam', N'Ali Duru okulda mı?', CAST(N'2016-12-21T17:58:53.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (214, 1, 9, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'Mustafa', N'Tulmen Bana soruları atsana kanka?', CAST(N'2016-12-21T20:34:07.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (215, 1, 9, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'Boş', N'VE KOF YAPMA KARDEŞ', CAST(N'2016-12-21T20:35:23.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (216, 1, 9, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'Sarıbaş', N'Okan', CAST(N'2016-12-21T20:47:21.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (217, 1, 9, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'mavibaş', N'Okan', CAST(N'2016-12-21T20:48:57.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (219, 1, 9, N'enessene2828@gmail.com', N'mebotadm@outlook.com', N'Pembebas', N'okan', CAST(N'2016-12-21T20:50:00.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (220, 1, 9, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'tırt', N'mısın?', CAST(N'2016-12-22T20:13:35.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (227, 1, 12, N'aliduru28@yandex.com', N'okandeneme60@gmail.com', N'samet', N'kanka', CAST(N'2016-12-22T20:49:01.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (229, 3, 12, N'aliduru28@yandex.com', N'okandeneme60@gmail.com', N'selam', N'taasdas', CAST(N'2016-12-22T20:49:58.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (231, 1, 12, N'aliduru28@yandex.com', N'okandeneme60@gmail.com', N'boskluk', N'2828288282', CAST(N'2016-12-03T20:53:20.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (232, 4, 12, N'aliduru28@yandex.com', N'okandeneme60@gmail.com', N'tokatlı', N'okan', CAST(N'2015-09-15T20:53:46.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (234, 1, 12, N'aliduru28@yandex.com', N'okandeneme60@gmail.com', N'okan', N'naber', CAST(N'2011-10-22T20:54:20.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (235, 1, 12, N'aliduru28@yandex.com', N'okandeneme60@gmail.com', N'EN BÜYÜK', N'TRABZONNNNNN', CAST(N'2016-12-22T20:54:58.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (236, 1, 12, N'aliduru28@yandex.com', N'okandeneme60@gmail.com', N'bos', N'yapma', CAST(N'2011-05-16T20:55:28.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (238, 4, 12, N'aliduru28@yandex.com', N'okandeneme60@gmail.com', N'kelimem', N'neded,,,,,,,', CAST(N'2012-06-22T20:59:09.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (239, 1, 12, N'aliduru28@yandex.com', N'okandeneme60@gmail.com', N'lahana', N'mesajı', CAST(N'2016-12-22T21:10:38.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (241, 1, 12, N'aliduru28@yandex.com', N'okandeneme60@gmail.com', N'alı', N'asfljas', CAST(N'2016-12-22T21:11:12.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (242, 1, 12, N'aliduru28@yandex.com', N'okandeneme60@gmail.com', N'twitter', N'al', CAST(N'2016-12-22T21:13:24.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (243, 1, 12, N'aliduru28@yandex.com', N'okandeneme60@gmail.com', N'al', N'bunuda', CAST(N'2016-12-22T21:14:22.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (244, 1, 12, N'aliduru28@yandex.com', N'okandeneme60@gmail.com', N'konu', N'içerik', CAST(N'2016-12-22T21:15:35.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (245, 1, 12, N'aliduru28@yandex.com', N'mebotadm@outlook.com', N'konu', N'içerik', CAST(N'2016-12-22T21:15:35.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (246, 4, 12, N'aliduru28@yandex.com', N'okandeneme60@gmail.com', N'pattes', N'sattes', CAST(N'2016-12-23T15:00:50.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (251, 1, 1, N'okandeneme60@gmail.com', N'enessene2828@gmail.com', N'alall', N'llaslfkascas', CAST(N'2016-12-23T18:19:30.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (397, 3, 7, N'okandeneme60@gmail.com', N'okan10203@outlook.com', N'Paspas', N'Çekiyor', CAST(N'2016-12-07T10:00:01.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (398, 2, 7, N'okandeneme60@gmail.com', N'okan10203@outlook.com', N'enes', N'menes
', CAST(N'2016-12-07T10:02:30.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (399, 2, 7, N'okandeneme60@gmail.com', N'okan10203@outlook.com', N'Enes', N'Tenes
', CAST(N'2016-12-07T10:03:38.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (400, 2, 7, N'okandeneme60@gmail.com', N'okan10203@outlook.com', N'enes', N'tantuni
', CAST(N'2016-12-07T10:05:16.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (401, 2, 7, N'okandeneme60@gmail.com', N'okan10203@outlook.com', N'konu', N'içerik', CAST(N'2016-12-10T05:39:59.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (402, 2, 7, N'okandeneme60@gmail.com', N'okan10203@outlook.com', N'alll', N'nako
', CAST(N'2016-12-10T05:40:44.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (403, 2, 7, N'enessene2828@gmail.com', N'okan10203@outlook.com', N'selam', N'naber
', CAST(N'2016-12-11T03:34:29.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (404, 2, 7, N'enessene2828@gmail.com', N'okan10203@outlook.com', N'sen', N'nasılsın', CAST(N'2016-12-11T03:45:33.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (405, 2, 7, N'enessene2828@gmail.com', N'okan10203@outlook.com', N'tuni', N'qwe
', CAST(N'2016-12-18T02:20:10.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (406, 2, 7, N'"hüseyin hayvan" <okandeneme60@gmail.com>', N'okan10203@outlook.com', N'okan bak bakalım oluyomu', N'okan olduysa onayla', CAST(N'2016-12-21T21:29:10.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (407, 2, 7, N'"hüseyin hayvan" <okandeneme60@gmail.com>', N'okan10203@outlook.com', N'okan bunu ilk sıraya al', N'tamam mıdır&nbsp;', CAST(N'2016-12-21T21:29:54.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (468, 2, 1, N'"ali duru" <aliduru28@yandex.com>', N'okandeneme60@gmail.com', N'rap', N'bu derece farklı', CAST(N'2016-12-24T20:15:40.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (469, 2, 1, N'"hüseyin hayvan" <okandeneme60@gmail.com>', N'okandeneme60@gmail.com', N'her gece', N'yanllızlık son ses
', CAST(N'2016-12-24T20:16:19.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (470, 2, 1, N'"hüseyin hayvan" <okandeneme60@gmail.com>', N'okandeneme60@gmail.com', N'merhaba', N'nasılsın iyimisin ? 
', CAST(N'2016-12-24T20:21:35.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (576, 2, 18, N'"maaail mail" <enessene2828@gmail.com>', N'admmebot@hotmail.com', N'yeni mail', N'deneme', CAST(N'2016-12-24T23:00:35.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (577, 2, 4, N'"maaail mail" <enessene2828@gmail.com>', N'mebotadm@outlook.com', N'of offff', N'yarın ayın 21 i', CAST(N'2016-12-20T21:13:08.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (578, 2, 4, N'"maaail mail" <enessene2828@gmail.com>', N'mebotadm@outlook.com', N'asfasf', N'asfasfas', CAST(N'2016-12-20T21:46:02.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (579, 2, 4, N'"ahmet şaşmaz" <okan10203@outlook.com>', N'mebotadm@outlook.com', N'Kayıt Onaylama', N'Kayıt Oldum okan memnun', CAST(N'2016-12-21T15:41:33.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (580, 2, 4, N'"ahmet şaşmaz" <okan10203@outlook.com>', N'mebotadm@outlook.com', N'Kayıt Onaylama', N'Kayıt Oldum okan memnunn', CAST(N'2016-12-21T15:45:51.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (581, 2, 4, N'"brk siriner" <brkmebot@outlook.com>', N'mebotadm@outlook.com', N'Kayıt Onaylama', N'Kayıt Oldum burak şiriner', CAST(N'2016-12-21T16:27:25.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (582, 2, 4, N'aliduru28@yandex.com', N'mebotadm@outlook.com', N'Kayıt Onaylama', N'Kayıt Oldum ali DURU', CAST(N'2016-12-21T16:39:55.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (583, 2, 4, N'"hüseyin hayvan" <okandeneme60@gmail.com>', N'mebotadm@outlook.com', N'şasfasş', N'alsıfhasıof', CAST(N'2016-12-21T16:59:40.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (584, 2, 4, N'enessene2828@gmail.com', N'mebotadm@outlook.com', N'Pembebas', N'okan
', CAST(N'2016-12-21T09:51:19.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (585, 2, 4, N'aliduru28@yandex.com', N'mebotadm@outlook.com', N'Kayıt Onaylama', N'Kayıt Oldum Ali Duru', CAST(N'2016-12-22T20:43:42.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (586, 2, 4, N'"brk siriner" <brkmebot@outlook.com>', N'mebotadm@outlook.com', N'konu yok', N'', CAST(N'2016-12-22T20:48:02.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (587, 2, 4, N'"hüseyin hayvan" <okandeneme60@gmail.com>', N'mebotadm@outlook.com', N'bosluk', N'moskul', CAST(N'2016-12-22T20:58:32.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (588, 2, 4, N'"o bu şu" <tunatuna53@outlook.com>', N'mebotadm@outlook.com', N'Kayıt Onaylama', N'Kayıt Oldum kim sin', CAST(N'2016-12-23T21:20:08.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (589, 2, 4, N'"o bu şu" <tunatuna53@outlook.com>', N'mebotadm@outlook.com', N'Kayıt Onaylama', N'Kayıt Oldum gece golgenin rahatina bak', CAST(N'2016-12-23T21:22:24.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (590, 2, 4, N'"o bu şu" <tunatuna53@outlook.com>', N'mebotadm@outlook.com', N'Kayıt Onaylama', N'Kayıt Oldum Captain Cold', CAST(N'2016-12-23T21:25:58.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (591, 2, 4, N'"o bu şu" <tunatuna53@outlook.com>', N'mebotadm@outlook.com', N'Kayıt Onaylama', N'Kayıt Oldum kaptan soğuk', CAST(N'2016-12-23T21:27:53.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (592, 2, 4, N'"o bu şu" <tunatuna53@outlook.com>', N'mebotadm@outlook.com', N'Kayıt Onaylama', N'Kayıt Oldum bureası orası', CAST(N'2016-12-23T21:28:56.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (593, 2, 4, N'"maaail mail" <enessene2828@gmail.com>', N'mebotadm@outlook.com', N'merhaba', N'nasılsın ??', CAST(N'2016-12-24T20:24:35.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (594, 2, 4, N'"maaail mail" <enessene2828@gmail.com>', N'mebotadm@outlook.com', N'yeni', N'mailllll', CAST(N'2016-12-24T22:41:04.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (595, 2, 4, N'"Enes Kırlak" <kirlakenes@gmail.com>', N'mebotadm@outlook.com', N'merhaba nasılsın', N'ben iyiyim', CAST(N'2016-12-26T13:03:50.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (596, 2, 4, N'okanunlu@trakya.edu.tr', N'mebotadm@outlook.com', N'Kayıt Onaylama', N'Kayıt Oldum okan unlu', CAST(N'2016-12-26T19:07:09.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (597, 1, 4, N'mebotadm@outlook.com', N'okandeneme60@gmail.com', N'selam', N'naber', CAST(N'2016-12-28T13:55:38.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (598, 1, 4, N'mebotadm@outlook.com', N'okandeneme60@gmail.com', N'koaka', N'mamspşfoas', CAST(N'2016-12-28T13:57:57.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (599, 1, 4, N'mebotadm@outlook.com', N'okan10203@outlook.com', N'koaka', N'mamspşfoas', CAST(N'2016-12-28T13:57:57.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (600, 2, 4, N'okanunlu@trakya.edu.tr', N'mebotadm@outlook.com', N'Kayıt Onaylama', N'Kayıt Oldum okan unlu', CAST(N'2016-12-28T13:57:49.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (601, 2, 1, N'"mebot admin" <mebotadm@outlook.com>', N'okandeneme60@gmail.com', N'selam', N'naber
', CAST(N'2016-12-28T13:57:05.000' AS DateTime))
GO
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (602, 2, 1, N'"mebot admin" <mebotadm@outlook.com>', N'okandeneme60@gmail.com', N'koaka', N'mamspşfoas', CAST(N'2016-12-28T13:59:24.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (609, 1, 9, N'enessene2828@gmail.com', N'aliduru28@yandex.com', N'dosya yolluyorum', N'tunahan', CAST(N'2016-12-28T14:07:04.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (634, 1, 12, N'aliduru28@yandex.com', N'enessene2828@gmail.com', N'konu şifreleme', N'şifreledim okuyabilicekmisin ? ', CAST(N'2016-12-28T19:00:00.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (635, 1, 12, N'aliduru28@yandex.com', N'enessene2828@gmail.com', N'şifreleme', N'şifreledim', CAST(N'2016-12-28T19:05:18.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (638, 1, 12, N'aliduru28@yandex.com', N'enessene2828@gmail.com', N'konu şifre', N'şifreledim aga napcan ? ', CAST(N'2016-12-28T19:15:25.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (640, 1, 12, N'aliduru28@yandex.com', N'enessene2828@gmail.com', N'konu', N'şifreleme', CAST(N'2016-12-28T19:17:49.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (642, 1, 12, N'aliduru28@yandex.com', N'enessene2828@gmail.com', N'şifrelendimi ? ', N'şifre', CAST(N'2016-12-28T19:30:33.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (644, 1, 12, N'aliduru28@yandex.com', N'enessene2828@gmail.com', N'sanırım oldu', N'şifreledim geldimi ? ', CAST(N'2016-12-28T19:36:07.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (646, 1, 12, N'aliduru28@yandex.com', N'enessene2828@gmail.com', N'şifreleme neden olmuyor', N'şifreliyorum', CAST(N'2016-12-28T19:38:01.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (648, 1, 12, N'aliduru28@yandex.com', N'enessene2828@gmail.com', N'konu şifre', N'şifreliyorum olmuyo', CAST(N'2016-12-28T19:40:56.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (650, 1, 12, N'aliduru28@yandex.com', N'enessene2828@gmail.com', N'konu ', N'şifreledim tunahancım', CAST(N'2016-12-28T19:43:19.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (651, 1, 12, N'aliduru28@yandex.com', N'enessene2828@gmail.com', N'konu', N'şifreledim burki vs tuni', CAST(N'2016-12-28T19:48:10.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (654, 1, 12, N'aliduru28@yandex.com', N'enessene2828@gmail.com', N'konu', N'şifre tuna vs brk vs okan', CAST(N'2016-12-28T19:50:04.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (655, 1, 12, N'aliduru28@yandex.com', N'enessene2828@gmail.com', N'şifre', N'şifreliyorum sonca mı acaba', CAST(N'2016-12-28T19:53:28.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (656, 1, 12, N'aliduru28@yandex.com', N'enessene2828@gmail.com', N'şifreleme', N'okan vs enes', CAST(N'2016-12-28T20:03:05.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (657, 1, 12, N'aliduru28@yandex.com', N'enessene2828@gmail.com', N'konu', N'tuna suraya bak', CAST(N'2016-12-28T20:05:04.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (658, 1, 12, N'aliduru28@yandex.com', N'enessene2828@gmail.com', N'konu', N'35 alan kaplumbaga', CAST(N'2016-12-28T20:14:05.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (659, 1, 12, N'aliduru28@yandex.com', N'enessene2828@gmail.com', N'konu', N'şifreleme ders1', CAST(N'2016-12-28T20:33:02.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (661, 1, 9, N'enessene2828@gmail.com', N'aliduru28@yandex.com', N'konu', N'tunahanı şifreliyorum', CAST(N'2016-12-28T20:36:24.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (665, 1, 9, N'enessene2828@gmail.com', N'aliduru28@yandex.com', N'konu', N'konu', CAST(N'2016-12-28T20:57:05.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (666, 1, 9, N'enessene2828@gmail.com', N'aliduru28@yandex.com', N'konu', N'şifre', CAST(N'2016-12-28T20:57:20.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (667, 1, 9, N'enessene2828@gmail.com', N'aliduru28@yandex.com', N'sa', N'gar', CAST(N'2016-12-28T20:59:32.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (668, 1, 9, N'enessene2828@gmail.com', N'aliduru28@yandex.com', N'konu', N'yok dedm', CAST(N'2016-12-28T21:13:29.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (669, 1, 9, N'enessene2828@gmail.com', N'aliduru28@yandex.com', N'konu', N'yok dedk', CAST(N'2016-12-28T21:16:09.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (670, 1, 9, N'enessene2828@gmail.com', N'aliduru28@yandex.com', N'konu', N'şifre', CAST(N'2016-12-28T21:17:44.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (671, 1, 9, N'enessene2828@gmail.com', N'aliduru28@yandex.com', N'konu', N'yok', CAST(N'2016-12-28T21:17:58.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (672, 1, 9, N'enessene2828@gmail.com', N'aliduru28@yandex.com', N'konu', N'şifre', CAST(N'2016-12-28T21:27:58.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (673, 1, 9, N'enessene2828@gmail.com', N'aliduru28@yandex.com', N'konu', N'şifreliceğiz', CAST(N'2016-12-28T21:29:14.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (674, 1, 9, N'enessene2828@gmail.com', N'aliduru28@yandex.com', N'konu', N'merhaba kardeşim', CAST(N'2016-12-28T21:30:11.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (675, 1, 9, N'enessene2828@gmail.com', N'aliduru28@yandex.com', N'konu', N'durduramaz hacı onları', CAST(N'2016-12-28T21:31:40.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (685, 1, 12, N'aliduru28@yandex.com', N'brkmebot@outlook.com', N'konu', N'şifreleme', CAST(N'2016-12-28T23:23:57.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (686, 1, 12, N'aliduru28@yandex.com', N'brkmebot@outlook.com', N'konu', N'şifremi', CAST(N'2016-12-28T23:24:17.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (687, 1, 12, N'aliduru28@yandex.com', N'brkmebot2@outlook.com', N'konu', N'şifre', CAST(N'2016-12-28T23:28:30.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (688, 1, 20, N'brkmebot2@outlook.com', N'aliduru28@yandex.com', N'konu', N'okanın dangalaklıkları', CAST(N'2016-12-28T23:31:24.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (697, 1, 20, N'brkmebot2@outlook.com', N'aliduru28@yandex.com', N'konumuz şifre', N'enes bak bunlar gerçek', CAST(N'2016-12-28T23:37:03.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (707, 2, 12, N'"brk siriner" <brkmebot2@outlook.com>', N'aliduru28@yandex.com', N'konu', N'okan bak bunları anla oku.', CAST(N'2016-12-28T23:45:58.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (708, 1, 1, N'okandeneme60@gmail.com', N'aliduru28@yandex.com', N'konu', N'şifreliyoruzzzzzzzzz', CAST(N'2016-12-29T00:05:53.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (709, 1, 1, N'okandeneme60@gmail.com', N'aliduru28@yandex.com', N'sa', N'şifreliyoruzzzzzzz2', CAST(N'2016-12-29T00:06:09.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (710, 1, 1, N'okandeneme60@gmail.com', N'aliduru28@yandex.com', N'buda son olsun', N'şifreliyoruzzzzzzz4', CAST(N'2016-12-29T00:06:28.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (711, 2, 12, N'okandeneme60@gmail.com', N'aliduru28@yandex.com', N'sa', N'şifreliyoruzzzzzzz4', CAST(N'2016-12-28T13:07:37.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (712, 2, 12, N'okandeneme60@gmail.com', N'aliduru28@yandex.com', N'buda son olsun', N'şifreliyoruzzzzzzz4', CAST(N'2016-12-28T13:07:56.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (713, 2, 12, N'"brk siriner" <brkmebot2@outlook.com>', N'aliduru28@yandex.com', N'konu', N'şifreliyoruzzzzzzz4', CAST(N'2016-12-28T23:45:58.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (714, 1, 9, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'sal', N'yap bana bir tane', CAST(N'2017-01-02T21:47:00.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (715, 2, 1, N'"hüseyin hayvan" <okandeneme60@gmail.com>', N'okandeneme60@gmail.com', N'orda', N'yap bana bir tane', CAST(N'2016-12-28T21:00:28.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (716, 2, 1, N'"hüseyin hayvan" <okandeneme60@gmail.com>', N'okandeneme60@gmail.com', N'true', N'yap bana bir tane', CAST(N'2016-12-28T21:11:50.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (717, 2, 1, N'"hüseyin hayvan" <okandeneme60@gmail.com>', N'okandeneme60@gmail.com', N'bir daha', N'yap bana bir tane', CAST(N'2016-12-28T21:12:38.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (718, 2, 1, N'"hüseyin hayvan" <okandeneme60@gmail.com>', N'okandeneme60@gmail.com', N'beni delirtmeyin', N'yap bana bir tane', CAST(N'2016-12-28T21:22:36.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (719, 2, 1, N'"hüseyin hayvan" <okandeneme60@gmail.com>', N'okandeneme60@gmail.com', N'afnmn', N'yap bana bir tane', CAST(N'2016-12-28T21:26:12.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (720, 2, 1, N'"hüseyin hayvan" <okandeneme60@gmail.com>', N'okandeneme60@gmail.com', N'bana artık bir', N'yap bana bir tane', CAST(N'2016-12-28T21:28:20.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (721, 2, 1, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'sal', N'yap bana bir tane', CAST(N'2017-01-02T10:48:29.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (722, 1, 1, N'okandeneme60@gmail.com', N'okandeneme60@gmail.com', N'str', N'qwerty', CAST(N'2017-01-02T22:01:01.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (723, 1, 1, N'okandeneme60@gmail.com', N'okandeneme60@gmail.com', N'bi', N'maili cekemedin', CAST(N'2017-01-02T22:03:13.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (724, 1, 1, N'okandeneme60@gmail.com', N'enessene2828@gmail.com', N'biraz', N'yer açın', CAST(N'2017-01-02T22:34:39.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (725, 1, 1, N'okandeneme60@gmail.com', N'enessene2828@gmail.com', N'biraz', N'yer açın', CAST(N'2017-01-02T22:34:45.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (726, 2, 9, N'okandeneme60@gmail.com', N'enessene2828@gmail.com', N'biraz', N'yer açın', CAST(N'2017-01-02T11:36:08.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (728, 1, 9, N'enessene2828@gmail.com', N'brkmebot@outlook.com', N'okan', N'tunahan', CAST(N'2017-01-02T22:51:47.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (729, 1, 9, N'enessene2828@gmail.com', N'brkmebot@outlook.com', N'okan', N'tunahan', CAST(N'2017-01-02T22:51:52.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (730, 2, 9, N'"Mail Delivery Subsystem" <mailer-daemon@googlemail.com>', N'enessene2828@gmail.com', N'Delivery Status Notification (Failure)', N'Delivery to the following recipient failed permanently:
     okanulu@trakya.edu.tr
Technical details of permanent failure: 
Google tried to deliver your message, but it was rejected by the server for the recipient domain trakya.edu.tr by mail.trakya.edu.tr. [193.255.140.16].
The error that the other server returned was:
550 5.1.1 : Recipient address rejected: User unknown in virtual mailbox table
----- Original message -----
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:mime-version:from:to:subject
         :content-transfer-encoding;
        bh=AyYRu2H9Dw5Nnz5MKsaTeeaCto7dNmCTZG48qwY7Cso=;
        b=k5ZEyRvZTcXcv60Oeu6aw86agCHZn/MKovkAl8ag9gOmK9dcHzE2gDPV0oEOQDx55J
         6MPNN1dwNytz3OvitIaNTEJA+x+PquSAZk5QyC+BQrXIII4O+coQsZCgucTV19bv/Y4N
         qUOonN3e8+k1aA4osSI49Ont2HSlTn49ekpHF3Hk1hMRF2cRERs0T7z8+Uis833fbm3/
         OoAmrOD5JmFOidSAtV2B4LNGZwdmkymc04GmKkRO1Lwn0AnA45OmNj2NEdDMskQGcvok
         MjftZ5UJ/Yy4GzqSiCf3F4hb1LgcYTm6o87p2oESNizFHooQs0dqh87UXxotXUKYOfRj
         38Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:mime-version:from:to:subject
         :content-transfer-encoding;
        bh=AyYRu2H9Dw5Nnz5MKsaTeeaCto7dNmCTZG48qwY7Cso=;
        b=HoLdCV5VxQDXPf48zFniEM67k24k4XoYsQcDAKmJfAqndJ3TSzjOiY3mszHLZtAxxp
         jAodMxiKF7LNq37qeAJPY0pmDNsDwfCr3BvIyiOdLn805fxgrPBnAtsYk/YPM9CdLaGK
         l5sIsM1RusY4LLsjxO89R6YunqnL2YHD3Sl66/GrRUJ3NUC9I0ItilWNjya3mOY4g2t4
         TSD1PHIL7NYnOmmFKzm8hHWiYU3YQ231UaJODQ63EfuYsJxAe4483F5U05ZzdWFmgmA7
         ViF8cWEIdUJ+0ihkHN5VaWZLL2nbvLYIQHUF/wHRnoerxs3Yd1X2zV/baguYohCplDmZ
         48xQ==
X-Gm-Message-State: AIkVDXKnDh9ZUUFtnd7ItqSxVZHGngB8p5sCnV5N6dVScxziwnTBDmFT9srgJsyoGg1oZQ==
X-Received: by 10.194.148.134 with SMTP id ts6mr50693593wjb.220.1483392690310;
        Mon, 02 Jan 2017 13:31:30 -0800 (PST)
Return-Path: 
Received: from OKANUNLU ([81.213.34.3])
        by smtp.gmail.com with ESMTPSA id x188sm86360697wmx.4.2017.01.02.13.31.29
        for 
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 02 Jan 2017 13:31:29 -0800 (PST)
Message-ID: 
Date: Mon, 02 Jan 2017 13:31:29 -0800 (PST)
X-Google-Original-Date: 3 Jan 2017 00:31:32 +0300
MIME-Version: 1.0
From: enessene2828@gmail.com
To: okanulu@trakya.edu.tr
Subject: mesja
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64
', CAST(N'2017-01-03T00:31:32.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (731, 1, 9, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'salamura', N'okanmı acep', CAST(N'2017-01-03T00:38:49.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (732, 2, 1, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'salamura', N'okanmı acep', CAST(N'2017-01-02T13:40:17.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (734, 1, 9, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'biraz', N'okanıl mısın ', CAST(N'2017-01-03T00:55:23.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (735, 2, 23, N'"mebot saygı" <mebotsunum@gmail.com>', N'mebotsunum@gmail.com', N'aynı maili', N'10ker yaz
', CAST(N'2017-01-03T00:52:53.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (736, 2, 23, N'"Mail Delivery Subsystem" <mailer-daemon@googlemail.com>', N'mebotsunum@gmail.com', N'Delivery Status Notification (Failure)', N'Delivery to the following recipient failed permanently:
     mebutsunum@yandex.com
Technical details of permanent failure: 
Google tried to deliver your message, but it was rejected by the server for the recipient domain yandex.com by mx.yandex.ru. [2a02:6b8::89].
The error that the other server returned was:
550 5.7.1 No such user!
----- Original message -----
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=egfUZ6fB/1hbps2Xe9raCzULJcKKf/IsgntfGVAjEag=;
        b=r26xW4in9THwfsMdqiE6oPyn8Vi8YMWgiCv0k9jI3fD/bGI/AHQShE2d577WqA2fge
         zFw2KsedsYqfNkSDqluYf2V831IjZgwul3TIQ2ADyoxQtH2i9Nv/l+2FO0ko1CcyJe/h
         KFQnwPsWHm8qoCKyRZTYnECz87/8DbCFPUjdZ71Kisesg9anr+c2VaUVkUwHDLSej5et
         CbO3/qS556GS87iNhZR0S07nKRS29F7rQoN7+AvfxIZoKvuhGtkCkLASdnA4Js3QiA9/
         WrsfRU86iAeR9Zfw+vdE3IU5KqTgl5G+RXylDXlKgojPKI9WlL7lNeCNBWPIb+nGlPxh
         +gVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=egfUZ6fB/1hbps2Xe9raCzULJcKKf/IsgntfGVAjEag=;
        b=JY3i59MkAcY/nSxaNaeQ30iTQGyynKFZgRwBmEeEQqjZtihT5tX1NbLW1MjO5PWPyH
         oqsv339F7ghkRT+KvhgakCIyKKTRJTf+KWwO3hvfm83MpTR9Tp32M18f2V+LXSOCIuu8
         gPTbIe9RBMhXO/CAqe46sj4bDVWftPq4/F7kUn4zcGxp2ts1RpxXelDrK9RofLbONHKT
         9vW+WmVekslo2aUJnDe1417iWpIOaFiLOjmCqUuhX4mdoHLqoR91j6Wz7L3BSMePVVGX
         oqybKGqFLdlwoB1NEYXvu7OQwurZqy1UW67IRoaoV9SdvC5xuU7937l1Fvhr23FSxydY
         8fgw==
X-Gm-Message-State: AIkVDXICjW0asr3ANRqDYjLsoIkqPlALOakV4vAg2DgoJAcGssK9t37N/6Fj327GtzeaWIl1adzViCClaWKPDg==
X-Received: by 10.25.43.4 with SMTP id r4mr2256922lfr.76.1483393974981; Mon,
 02 Jan 2017 13:52:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.203.20 with HTTP; Mon, 2 Jan 2017 13:52:53 -0800 (PST)
From: =?UTF-8?B?bWVib3Qgc2F5Z8Sx?= 
Date: Tue, 3 Jan 2017 00:52:53 +0300
Message-ID: 
Subject: =?UTF-8?Q?ayn=C4=B1_maili?=
To: mebutsunum@outlook.com, mebutsunum@yandex.com
Content-Type: multipart/alternative; boundary=001a11401f92f0d9e805452392cf
10ker yaz', CAST(N'2017-01-03T00:52:55.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (737, 2, 23, N'postmaster@hotmail.com', N'mebotsunum@gmail.com', N'Delivery Status Notification (Failure)', N'This is an automatically generated Delivery Status Notification.
Delivery to the following recipients failed.
       mebutsunum@outlook.com
', CAST(N'2017-01-02T13:52:55.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (738, 2, 23, N'"mebot saygı" <mebotsunum@yandex.com>', N'mebotsunum@gmail.com', N'kod', N' Dim MailS As New MailSilmeIslemleri        mailAl = New MailAlma()        Dim mesajS As Integer        mesajS = dgv_mail.CurrentCell.RowIndex + 1        Using pop As New Pop3Client            If dizi(1) = "outlook.com" Or dizi(1) = "hotmail.com" Then                pop.Connect("pop3.live.com", "995", True)                pop.Authenticate(kullanici.Pro_Email, kullanici.Pro_Sifre, AuthenticationMethod.UsernameAndPassword)                pop.DeleteMessage(ms - mesajS + 1)            ElseIf dizi(1) = "trakya.edu.tr" Then                pop.Connect("mail.trakya.edu.tr", "110", False)                pop.Authenticate(kullanici.Pro_Email, kullanici.Pro_Sifre, AuthenticationMethod.UsernameAndPassword)                pop.DeleteMessage(ms - mesajS + 1)            End If         End Using         mailBox_ID = dgv_mail.CurrentRow.Cells(0).Value.ToString()        mailAl.Pro_mailBoxID = mailBox_ID        mailAl.GelenleriGuncelle()         mailAl.MailleriAl(dgv_mail, 2)        frm_mailicerik.lbl_gelenlerinSayisi.Text = mailAl.GelenMaillerinSayisi()        kullanici.VTMailSayisiGuncelle(ms - 1)         MailS.Pro_mailBoxID = mailBox_ID        MailS.ArkaplanDosyaSil()        MailS.SilinenlerMailSil()        MailS.SilinenlerDosyaSil()        frm_mailicerik.lbl_silinenler.Text = MailS.SilinenlerinSayisi()', CAST(N'2017-01-03T01:04:21.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (739, 2, 23, N'"mebot saygı" <mebotsunum@gmail.com>', N'mebotsunum@gmail.com', N'aynı maili', N'10ker yaz
', CAST(N'2017-01-03T00:52:53.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (740, 2, 23, N'"Mail Delivery Subsystem" <mailer-daemon@googlemail.com>', N'mebotsunum@gmail.com', N'Delivery Status Notification (Failure)', N'Delivery to the following recipient failed permanently:
     mebutsunum@yandex.com
Technical details of permanent failure: 
Google tried to deliver your message, but it was rejected by the server for the recipient domain yandex.com by mx.yandex.ru. [2a02:6b8::89].
The error that the other server returned was:
550 5.7.1 No such user!
----- Original message -----
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=egfUZ6fB/1hbps2Xe9raCzULJcKKf/IsgntfGVAjEag=;
        b=r26xW4in9THwfsMdqiE6oPyn8Vi8YMWgiCv0k9jI3fD/bGI/AHQShE2d577WqA2fge
         zFw2KsedsYqfNkSDqluYf2V831IjZgwul3TIQ2ADyoxQtH2i9Nv/l+2FO0ko1CcyJe/h
         KFQnwPsWHm8qoCKyRZTYnECz87/8DbCFPUjdZ71Kisesg9anr+c2VaUVkUwHDLSej5et
         CbO3/qS556GS87iNhZR0S07nKRS29F7rQoN7+AvfxIZoKvuhGtkCkLASdnA4Js3QiA9/
         WrsfRU86iAeR9Zfw+vdE3IU5KqTgl5G+RXylDXlKgojPKI9WlL7lNeCNBWPIb+nGlPxh
         +gVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=egfUZ6fB/1hbps2Xe9raCzULJcKKf/IsgntfGVAjEag=;
        b=JY3i59MkAcY/nSxaNaeQ30iTQGyynKFZgRwBmEeEQqjZtihT5tX1NbLW1MjO5PWPyH
         oqsv339F7ghkRT+KvhgakCIyKKTRJTf+KWwO3hvfm83MpTR9Tp32M18f2V+LXSOCIuu8
         gPTbIe9RBMhXO/CAqe46sj4bDVWftPq4/F7kUn4zcGxp2ts1RpxXelDrK9RofLbONHKT
         9vW+WmVekslo2aUJnDe1417iWpIOaFiLOjmCqUuhX4mdoHLqoR91j6Wz7L3BSMePVVGX
         oqybKGqFLdlwoB1NEYXvu7OQwurZqy1UW67IRoaoV9SdvC5xuU7937l1Fvhr23FSxydY
         8fgw==
X-Gm-Message-State: AIkVDXICjW0asr3ANRqDYjLsoIkqPlALOakV4vAg2DgoJAcGssK9t37N/6Fj327GtzeaWIl1adzViCClaWKPDg==
X-Received: by 10.25.43.4 with SMTP id r4mr2256922lfr.76.1483393974981; Mon,
 02 Jan 2017 13:52:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.203.20 with HTTP; Mon, 2 Jan 2017 13:52:53 -0800 (PST)
From: =?UTF-8?B?bWVib3Qgc2F5Z8Sx?= 
Date: Tue, 3 Jan 2017 00:52:53 +0300
Message-ID: 
Subject: =?UTF-8?Q?ayn=C4=B1_maili?=
To: mebutsunum@outlook.com, mebutsunum@yandex.com
Content-Type: multipart/alternative; boundary=001a11401f92f0d9e805452392cf
10ker yaz', CAST(N'2017-01-03T00:52:55.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (741, 2, 23, N'postmaster@hotmail.com', N'mebotsunum@gmail.com', N'Delivery Status Notification (Failure)', N'This is an automatically generated Delivery Status Notification.
Delivery to the following recipients failed.
       mebutsunum@outlook.com
', CAST(N'2017-01-02T13:52:55.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (742, 2, 23, N'"mebot saygı" <mebotsunum@yandex.com>', N'mebotsunum@gmail.com', N'kod', N' Dim MailS As New MailSilmeIslemleri        mailAl = New MailAlma()        Dim mesajS As Integer        mesajS = dgv_mail.CurrentCell.RowIndex + 1        Using pop As New Pop3Client            If dizi(1) = "outlook.com" Or dizi(1) = "hotmail.com" Then                pop.Connect("pop3.live.com", "995", True)                pop.Authenticate(kullanici.Pro_Email, kullanici.Pro_Sifre, AuthenticationMethod.UsernameAndPassword)                pop.DeleteMessage(ms - mesajS + 1)            ElseIf dizi(1) = "trakya.edu.tr" Then                pop.Connect("mail.trakya.edu.tr", "110", False)                pop.Authenticate(kullanici.Pro_Email, kullanici.Pro_Sifre, AuthenticationMethod.UsernameAndPassword)                pop.DeleteMessage(ms - mesajS + 1)            End If         End Using         mailBox_ID = dgv_mail.CurrentRow.Cells(0).Value.ToString()        mailAl.Pro_mailBoxID = mailBox_ID        mailAl.GelenleriGuncelle()         mailAl.MailleriAl(dgv_mail, 2)        frm_mailicerik.lbl_gelenlerinSayisi.Text = mailAl.GelenMaillerinSayisi()        kullanici.VTMailSayisiGuncelle(ms - 1)         MailS.Pro_mailBoxID = mailBox_ID        MailS.ArkaplanDosyaSil()        MailS.SilinenlerMailSil()        MailS.SilinenlerDosyaSil()        frm_mailicerik.lbl_silinenler.Text = MailS.SilinenlerinSayisi()', CAST(N'2017-01-03T01:04:21.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (743, 2, 23, N'"mebot saygı" <mebotsunum@gmail.com>', N'mebotsunum@gmail.com', N'aynı maili', N'10ker yaz
', CAST(N'2017-01-03T00:52:53.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (744, 2, 23, N'"Mail Delivery Subsystem" <mailer-daemon@googlemail.com>', N'mebotsunum@gmail.com', N'Delivery Status Notification (Failure)', N'Delivery to the following recipient failed permanently:
     mebutsunum@yandex.com
Technical details of permanent failure: 
Google tried to deliver your message, but it was rejected by the server for the recipient domain yandex.com by mx.yandex.ru. [2a02:6b8::89].
The error that the other server returned was:
550 5.7.1 No such user!
----- Original message -----
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=egfUZ6fB/1hbps2Xe9raCzULJcKKf/IsgntfGVAjEag=;
        b=r26xW4in9THwfsMdqiE6oPyn8Vi8YMWgiCv0k9jI3fD/bGI/AHQShE2d577WqA2fge
         zFw2KsedsYqfNkSDqluYf2V831IjZgwul3TIQ2ADyoxQtH2i9Nv/l+2FO0ko1CcyJe/h
         KFQnwPsWHm8qoCKyRZTYnECz87/8DbCFPUjdZ71Kisesg9anr+c2VaUVkUwHDLSej5et
         CbO3/qS556GS87iNhZR0S07nKRS29F7rQoN7+AvfxIZoKvuhGtkCkLASdnA4Js3QiA9/
         WrsfRU86iAeR9Zfw+vdE3IU5KqTgl5G+RXylDXlKgojPKI9WlL7lNeCNBWPIb+nGlPxh
         +gVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=egfUZ6fB/1hbps2Xe9raCzULJcKKf/IsgntfGVAjEag=;
        b=JY3i59MkAcY/nSxaNaeQ30iTQGyynKFZgRwBmEeEQqjZtihT5tX1NbLW1MjO5PWPyH
         oqsv339F7ghkRT+KvhgakCIyKKTRJTf+KWwO3hvfm83MpTR9Tp32M18f2V+LXSOCIuu8
         gPTbIe9RBMhXO/CAqe46sj4bDVWftPq4/F7kUn4zcGxp2ts1RpxXelDrK9RofLbONHKT
         9vW+WmVekslo2aUJnDe1417iWpIOaFiLOjmCqUuhX4mdoHLqoR91j6Wz7L3BSMePVVGX
         oqybKGqFLdlwoB1NEYXvu7OQwurZqy1UW67IRoaoV9SdvC5xuU7937l1Fvhr23FSxydY
         8fgw==
X-Gm-Message-State: AIkVDXICjW0asr3ANRqDYjLsoIkqPlALOakV4vAg2DgoJAcGssK9t37N/6Fj327GtzeaWIl1adzViCClaWKPDg==
X-Received: by 10.25.43.4 with SMTP id r4mr2256922lfr.76.1483393974981; Mon,
 02 Jan 2017 13:52:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.203.20 with HTTP; Mon, 2 Jan 2017 13:52:53 -0800 (PST)
From: =?UTF-8?B?bWVib3Qgc2F5Z8Sx?= 
Date: Tue, 3 Jan 2017 00:52:53 +0300
Message-ID: 
Subject: =?UTF-8?Q?ayn=C4=B1_maili?=
To: mebutsunum@outlook.com, mebutsunum@yandex.com
Content-Type: multipart/alternative; boundary=001a11401f92f0d9e805452392cf
10ker yaz', CAST(N'2017-01-03T00:52:55.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (745, 2, 23, N'postmaster@hotmail.com', N'mebotsunum@gmail.com', N'Delivery Status Notification (Failure)', N'This is an automatically generated Delivery Status Notification.
Delivery to the following recipients failed.
       mebutsunum@outlook.com
', CAST(N'2017-01-02T13:52:55.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (746, 2, 23, N'"mebot saygı" <mebotsunum@yandex.com>', N'mebotsunum@gmail.com', N'kod', N' Dim MailS As New MailSilmeIslemleri        mailAl = New MailAlma()        Dim mesajS As Integer        mesajS = dgv_mail.CurrentCell.RowIndex + 1        Using pop As New Pop3Client            If dizi(1) = "outlook.com" Or dizi(1) = "hotmail.com" Then                pop.Connect("pop3.live.com", "995", True)                pop.Authenticate(kullanici.Pro_Email, kullanici.Pro_Sifre, AuthenticationMethod.UsernameAndPassword)                pop.DeleteMessage(ms - mesajS + 1)            ElseIf dizi(1) = "trakya.edu.tr" Then                pop.Connect("mail.trakya.edu.tr", "110", False)                pop.Authenticate(kullanici.Pro_Email, kullanici.Pro_Sifre, AuthenticationMethod.UsernameAndPassword)                pop.DeleteMessage(ms - mesajS + 1)            End If         End Using         mailBox_ID = dgv_mail.CurrentRow.Cells(0).Value.ToString()        mailAl.Pro_mailBoxID = mailBox_ID        mailAl.GelenleriGuncelle()         mailAl.MailleriAl(dgv_mail, 2)        frm_mailicerik.lbl_gelenlerinSayisi.Text = mailAl.GelenMaillerinSayisi()        kullanici.VTMailSayisiGuncelle(ms - 1)         MailS.Pro_mailBoxID = mailBox_ID        MailS.ArkaplanDosyaSil()        MailS.SilinenlerMailSil()        MailS.SilinenlerDosyaSil()        frm_mailicerik.lbl_silinenler.Text = MailS.SilinenlerinSayisi()', CAST(N'2017-01-03T01:04:21.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (752, 2, 1, N'enessene2828@gmail.com', N'okandeneme60@gmail.com', N'biraz', N'okanıl mısın ', CAST(N'2017-01-02T13:56:52.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (753, 2, 24, N'"mebot saygı" <mebotsunum@yandex.com>', N'mebotsunum@outlook.com', N'tel', N'yanında değilmişşşşş', CAST(N'2017-01-03T10:17:43.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (754, 2, 24, N'"Aydın CARUS" <aydinc@trakya.edu.tr>', N'mebotsunum@outlook.com', N'Deneme', N'', CAST(N'2017-01-03T10:58:30.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (755, 2, 22, N'"mebot saygı" <mebotsunum@gmail.com>', N'mebotsunum@yandex.com', N'deneme1', N'deneme123556
', CAST(N'2017-01-03T10:13:54.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (756, 3, 22, N'"mebot saygı" <mebotsunum@gmail.com>', N'mebotsunum@yandex.com', N'sınav', N'çalış clash oyna
', CAST(N'2017-01-03T10:14:22.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (757, 2, 22, N'"mebot saygı" <mebotsunum@gmail.com>', N'mebotsunum@yandex.com', N'sınav', N'çalış clash oyna
', CAST(N'2017-01-03T10:14:22.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (758, 1, 22, N'mebotsunum@yandex.com', N'aydinc@trakya.edu.tr', N'merhba', N'nasılsınız', CAST(N'2017-01-03T11:05:01.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (759, 1, 22, N'mebotsunum@yandex.com', N'aydinc@trakya.edu.tr', N'merhba', N'dos', CAST(N'2017-01-03T11:07:43.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (761, 1, 22, N'mebotsunum@yandex.com', N'mebotsunum@gmail.com', N'şifrelimesaj', N'şifrelanmişmesaj', CAST(N'2017-01-03T11:19:01.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (762, 1, 22, N'mebotsunum@yandex.com', N'aydinc@trakya.edu.tr', N'şifrelimesaj', N'şifrelanmişmesaj', CAST(N'2017-01-03T11:19:01.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (763, 2, 23, N'"mebot saygı" <mebotsunum@gmail.com>', N'mebotsunum@gmail.com', N'aynı maili', N'şifrelanmişmesaj', CAST(N'2017-01-03T00:52:53.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (764, 2, 23, N'"Mail Delivery Subsystem" <mailer-daemon@googlemail.com>', N'mebotsunum@gmail.com', N'Delivery Status Notification (Failure)', N'şifrelanmişmesaj', CAST(N'2017-01-03T00:52:55.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (765, 2, 23, N'postmaster@hotmail.com', N'mebotsunum@gmail.com', N'Delivery Status Notification (Failure)', N'şifrelanmişmesaj', CAST(N'2017-01-02T13:52:55.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (766, 2, 23, N'"mebot saygı" <mebotsunum@yandex.com>', N'mebotsunum@gmail.com', N'kod', N'şifrelanmişmesaj', CAST(N'2017-01-03T01:04:21.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (767, 2, 23, N'"mebot saygı" <mebotsunum@gmail.com>', N'mebotsunum@gmail.com', N'aynı maili', N'şifrelanmişmesaj', CAST(N'2017-01-03T00:52:53.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (768, 2, 23, N'"Mail Delivery Subsystem" <mailer-daemon@googlemail.com>', N'mebotsunum@gmail.com', N'Delivery Status Notification (Failure)', N'şifrelanmişmesaj', CAST(N'2017-01-03T00:52:55.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (769, 2, 23, N'postmaster@hotmail.com', N'mebotsunum@gmail.com', N'Delivery Status Notification (Failure)', N'şifrelanmişmesaj', CAST(N'2017-01-02T13:52:55.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (770, 2, 23, N'"mebot saygı" <mebotsunum@yandex.com>', N'mebotsunum@gmail.com', N'kod', N'şifrelanmişmesaj', CAST(N'2017-01-03T01:04:21.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (771, 1, 23, N'mebotsunum@gmail.com', N'mebotsunum@yandex.com', N'merhab', N'şifre', CAST(N'2017-01-03T11:21:02.000' AS DateTime))
INSERT [dbo].[MailBox] ([mailbox_ID], [durum_No], [kullanici_No], [gonderen], [alici], [konu], [icerik], [tarih]) VALUES (772, 2, 22, N'mebotsunum@gmail.com', N'mebotsunum@yandex.com', N'merhab', N'şifre', CAST(N'2017-01-03T00:22:32.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[MailBox] OFF
INSERT [dbo].[MailDurum] ([durum_ID], [durumAdi]) VALUES (1, N'MailGönderme')
INSERT [dbo].[MailDurum] ([durum_ID], [durumAdi]) VALUES (2, N'MailAlma')
INSERT [dbo].[MailDurum] ([durum_ID], [durumAdi]) VALUES (3, N'MailSilinenler')
INSERT [dbo].[MailDurum] ([durum_ID], [durumAdi]) VALUES (4, N'Taslak')
ALTER TABLE [dbo].[Kullanici] ADD  CONSTRAINT [DF_Kullanici_durum]  DEFAULT ((0)) FOR [durum]
GO
ALTER TABLE [dbo].[Kullanici] ADD  CONSTRAINT [DF_Kullanici_mailSayisi]  DEFAULT ((0)) FOR [mailSayisi]
GO
ALTER TABLE [dbo].[Kullanici] ADD  CONSTRAINT [DF_Kullanici_kulDurumu]  DEFAULT ((1)) FOR [kulDurum]
GO
ALTER TABLE [dbo].[Dosyalar]  WITH CHECK ADD  CONSTRAINT [FK_Dosyalar_MailBox] FOREIGN KEY([mail_ID])
REFERENCES [dbo].[MailBox] ([mailbox_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Dosyalar] CHECK CONSTRAINT [FK_Dosyalar_MailBox]
GO
ALTER TABLE [dbo].[MailBox]  WITH CHECK ADD  CONSTRAINT [FK_MailBox_Kullanici] FOREIGN KEY([kullanici_No])
REFERENCES [dbo].[Kullanici] ([kullanici_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MailBox] CHECK CONSTRAINT [FK_MailBox_Kullanici]
GO
ALTER TABLE [dbo].[MailBox]  WITH CHECK ADD  CONSTRAINT [FK_MailBox_MailDurum] FOREIGN KEY([durum_No])
REFERENCES [dbo].[MailDurum] ([durum_ID])
GO
ALTER TABLE [dbo].[MailBox] CHECK CONSTRAINT [FK_MailBox_MailDurum]
GO
