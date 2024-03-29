USE BankDatabase
GO
CREATE TABLE [dbo].[AcilisPlatformu](
	[acilisPlatformID] [int] IDENTITY(1,1) NOT NULL,
	[acilisPlatformAdi] [nvarchar](20) NULL,
 CONSTRAINT [PK_AcilisPlatformu] PRIMARY KEY CLUSTERED 
(
	[acilisPlatformID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hesap]    Script Date: 3.10.2019 19:19:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hesap](
	[hesapNo] [int] NOT NULL,
	[bakiye] [money] NULL,
	[hesapAcilisTarihi] [date] NULL,
	[musteriNo] [int] NULL,
	[acilisPlatformID] [int] NULL,
	[ekNo] [int] NULL,
 CONSTRAINT [PK_Hesap_1] PRIMARY KEY CLUSTERED 
(
	[hesapNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IslemTuru]    Script Date: 3.10.2019 19:19:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IslemTuru](
	[islemTuruID] [int] IDENTITY(1,1) NOT NULL,
	[tur] [nvarchar](50) NULL,
 CONSTRAINT [PK_IslemTuru] PRIMARY KEY CLUSTERED 
(
	[islemTuruID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteri]    Script Date: 3.10.2019 19:19:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteri](
	[musteriNo] [int] IDENTITY(1001,1) NOT NULL,
	[tckn] [nvarchar](11) NULL,
	[sifre] [nvarchar](20) NULL,
	[ad] [nvarchar](20) NULL,
	[soyad] [nvarchar](30) NULL,
	[dogumTarihi] [date] NULL,
	[cepTelefonu] [nvarchar](11) NULL,
	[mail] [nvarchar](50) NULL,
	[acikAdres] [nvarchar](200) NULL,
	[kayıtTarihi] [date] NULL,
	[acilisPlatformID] [int] NULL,
 CONSTRAINT [PK_Musteri] PRIMARY KEY CLUSTERED 
(
	[musteriNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParaTransferi]    Script Date: 3.10.2019 19:19:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParaTransferi](
	[ptID] [int] IDENTITY(1,1) NOT NULL,
	[aliciHesapNo] [int] NULL,
	[gonderenHesapNo] [int] NULL,
	[islemTutari] [money] NULL,
	[aciklama] [nvarchar](100) NULL,
	[islemTarihi] [date] NULL,
	[islemTuruID] [int] NULL,
 CONSTRAINT [PK_ParaTransferi] PRIMARY KEY CLUSTERED 
(
	[ptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AcilisPlatformu] ON 

INSERT [dbo].[AcilisPlatformu] ([acilisPlatformID], [acilisPlatformAdi]) VALUES (1, N'WEB')
INSERT [dbo].[AcilisPlatformu] ([acilisPlatformID], [acilisPlatformAdi]) VALUES (2, N'MOBİL')
INSERT [dbo].[AcilisPlatformu] ([acilisPlatformID], [acilisPlatformAdi]) VALUES (3, N'ŞUBE')
SET IDENTITY_INSERT [dbo].[AcilisPlatformu] OFF
INSERT [dbo].[Hesap] ([hesapNo], [bakiye], [hesapAcilisTarihi], [musteriNo], [acilisPlatformID], [ekNo]) VALUES (100110, 2000.0000, CAST(N'2010-03-20' AS Date), 1001, 2, 10)
INSERT [dbo].[Hesap] ([hesapNo], [bakiye], [hesapAcilisTarihi], [musteriNo], [acilisPlatformID], [ekNo]) VALUES (100111, 1000.0000, CAST(N'2012-03-09' AS Date), 1001, 2, 11)
INSERT [dbo].[Hesap] ([hesapNo], [bakiye], [hesapAcilisTarihi], [musteriNo], [acilisPlatformID], [ekNo]) VALUES (100210, 1500.0000, CAST(N'2010-08-25' AS Date), 1002, 1, 10)
INSERT [dbo].[Hesap] ([hesapNo], [bakiye], [hesapAcilisTarihi], [musteriNo], [acilisPlatformID], [ekNo]) VALUES (100310, 1021.0000, CAST(N'1996-05-05' AS Date), 1003, 3, 10)
INSERT [dbo].[Hesap] ([hesapNo], [bakiye], [hesapAcilisTarihi], [musteriNo], [acilisPlatformID], [ekNo]) VALUES (100311, 1021.0000, CAST(N'1996-05-05' AS Date), 1003, 3, 11)
SET IDENTITY_INSERT [dbo].[IslemTuru] ON 

INSERT [dbo].[IslemTuru] ([islemTuruID], [tur]) VALUES (1, N'HAVALE')
INSERT [dbo].[IslemTuru] ([islemTuruID], [tur]) VALUES (2, N'VIRMAN')
SET IDENTITY_INSERT [dbo].[IslemTuru] OFF
SET IDENTITY_INSERT [dbo].[Musteri] ON 

INSERT [dbo].[Musteri] ([musteriNo], [tckn], [sifre], [ad], [soyad], [dogumTarihi], [cepTelefonu], [mail], [acikAdres], [kayıtTarihi], [acilisPlatformID]) VALUES (1001, N'11728732326', N'123456', N'Murat', N'Can', CAST(N'2000-08-08' AS Date), N'05423412231', N'askdakds@hotmail.com', N'istanbul', CAST(N'2016-08-09' AS Date), 1)
INSERT [dbo].[Musteri] ([musteriNo], [tckn], [sifre], [ad], [soyad], [dogumTarihi], [cepTelefonu], [mail], [acikAdres], [kayıtTarihi], [acilisPlatformID]) VALUES (1002, N'13566523364', N'123456', N'Süleyman', N'Berk', CAST(N'2001-02-06' AS Date), N'05423412232', N'askda@hotmail.com', N'aydın', CAST(N'2016-07-09' AS Date), 2)
INSERT [dbo].[Musteri] ([musteriNo], [tckn], [sifre], [ad], [soyad], [dogumTarihi], [cepTelefonu], [mail], [acikAdres], [kayıtTarihi], [acilisPlatformID]) VALUES (1003, N'1172873312', N'123456', N'Mat', N'C', CAST(N'2000-08-08' AS Date), N'05423412231', N'askdakds@hotmail.com', N'istanbul', CAST(N'2016-08-09' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Musteri] OFF
SET IDENTITY_INSERT [dbo].[ParaTransferi] ON 

INSERT [dbo].[ParaTransferi] ([ptID], [aliciHesapNo], [gonderenHesapNo], [islemTutari], [aciklama], [islemTarihi], [islemTuruID]) VALUES (4, 100110, 100210, 150.0000, N'lkjkjjkhk', CAST(N'2016-08-18' AS Date), 1)
INSERT [dbo].[ParaTransferi] ([ptID], [aliciHesapNo], [gonderenHesapNo], [islemTutari], [aciklama], [islemTarihi], [islemTuruID]) VALUES (5, 100210, 100110, 50.0000, N'ğlil', CAST(N'2015-08-08' AS Date), 1)
SET IDENTITY_INSERT [dbo].[ParaTransferi] OFF
ALTER TABLE [dbo].[Hesap]  WITH CHECK ADD  CONSTRAINT [FK_Hesap_AcilisPlatformu] FOREIGN KEY([acilisPlatformID])
REFERENCES [dbo].[AcilisPlatformu] ([acilisPlatformID])
GO
ALTER TABLE [dbo].[Hesap] CHECK CONSTRAINT [FK_Hesap_AcilisPlatformu]
GO
ALTER TABLE [dbo].[Hesap]  WITH CHECK ADD  CONSTRAINT [FK_Hesap_Musteri] FOREIGN KEY([musteriNo])
REFERENCES [dbo].[Musteri] ([musteriNo])
GO
ALTER TABLE [dbo].[Hesap] CHECK CONSTRAINT [FK_Hesap_Musteri]
GO
ALTER TABLE [dbo].[Musteri]  WITH CHECK ADD  CONSTRAINT [FK_Musteri_AcilisPlatformu] FOREIGN KEY([acilisPlatformID])
REFERENCES [dbo].[AcilisPlatformu] ([acilisPlatformID])
GO
ALTER TABLE [dbo].[Musteri] CHECK CONSTRAINT [FK_Musteri_AcilisPlatformu]
GO
ALTER TABLE [dbo].[ParaTransferi]  WITH CHECK ADD  CONSTRAINT [FK_ParaTransferi_IslemTuru] FOREIGN KEY([islemTuruID])
REFERENCES [dbo].[IslemTuru] ([islemTuruID])
GO
ALTER TABLE [dbo].[ParaTransferi] CHECK CONSTRAINT [FK_ParaTransferi_IslemTuru]
