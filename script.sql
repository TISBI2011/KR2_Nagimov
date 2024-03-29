USE [KR2_Nagimov]
GO
/****** Object:  Table [dbo].[Otdel]    Script Date: 01.02.2024 17:11:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Otdel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Zadachi] [nvarchar](max) NOT NULL,
	[GlavaId] [int] NOT NULL,
 CONSTRAINT [PK_Otdel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Platforma]    Script Date: 01.02.2024 17:11:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Platforma](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_StackTechnology] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 01.02.2024 17:11:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rukovodstvo]    Script Date: 01.02.2024 17:11:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rukovodstvo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Doljnost] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Rukovodstvo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sotrudnik]    Script Date: 01.02.2024 17:11:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sotrudnik](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Pasport] [nvarchar](50) NOT NULL,
	[StackTechnology] [int] NOT NULL,
	[OtdelId] [int] NOT NULL,
	[Stavka] [float] NOT NULL,
 CONSTRAINT [PK_Sotrudnik] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 01.02.2024 17:11:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_Userr] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zadacha]    Script Date: 01.02.2024 17:11:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zadacha](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ZaiavkaOtdelId] [int] NOT NULL,
	[SotrudnikId] [int] NOT NULL,
 CONSTRAINT [PK_Zadacha] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zaiavka]    Script Date: 01.02.2024 17:11:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zaiavka](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ZakazchikId] [int] NOT NULL,
	[Opisanie] [nvarchar](max) NOT NULL,
	[Platforma] [int] NOT NULL,
	[ObrashenieDate] [date] NOT NULL,
	[Deadline] [date] NOT NULL,
 CONSTRAINT [PK_Zaiavka] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZaiavkaOtdel]    Script Date: 01.02.2024 17:11:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZaiavkaOtdel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ZaiavkaId] [int] NOT NULL,
	[OtdelId] [int] NOT NULL,
 CONSTRAINT [PK_ZaiavkaOtdel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zakazchik]    Script Date: 01.02.2024 17:11:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zakazchik](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Zakazchik] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Otdel] ON 

INSERT [dbo].[Otdel] ([Id], [Name], [Zadachi], [GlavaId]) VALUES (1, N'Отдел По Разработке Баз Данных', N'Отдел занимается разработкой баз данных для дальнейшей работы с ПО', 6)
INSERT [dbo].[Otdel] ([Id], [Name], [Zadachi], [GlavaId]) VALUES (2, N'Отдел По Разработке ПО', N'Отдел занимается разработкой ПО и его улучшением, внесением правок', 7)
INSERT [dbo].[Otdel] ([Id], [Name], [Zadachi], [GlavaId]) VALUES (3, N'Отдел Тестирования', N'Отдел тестирует совокупность работ ПО и Базы Данных', 8)
SET IDENTITY_INSERT [dbo].[Otdel] OFF
GO
SET IDENTITY_INSERT [dbo].[Platforma] ON 

INSERT [dbo].[Platforma] ([Id], [Name]) VALUES (1, N'MS SQLSMS')
INSERT [dbo].[Platforma] ([Id], [Name]) VALUES (2, N'Visual Studio C# Dev')
INSERT [dbo].[Platforma] ([Id], [Name]) VALUES (3, N'Visual Studio Tester')
SET IDENTITY_INSERT [dbo].[Platforma] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'User')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Rukovodstvo] ON 

INSERT [dbo].[Rukovodstvo] ([Id], [Name], [Doljnost]) VALUES (6, N'Семенычев Виктор Евгеньевич', N'Глава Отдела По Разработке Баз Данных')
INSERT [dbo].[Rukovodstvo] ([Id], [Name], [Doljnost]) VALUES (7, N'Гаврилова Ирина Петровна', N'Глава Отдела По Разработке ПО')
INSERT [dbo].[Rukovodstvo] ([Id], [Name], [Doljnost]) VALUES (8, N'Курилов Михаил Генадьевич', N'Глава Отдела По Тестированию ПО')
SET IDENTITY_INSERT [dbo].[Rukovodstvo] OFF
GO
SET IDENTITY_INSERT [dbo].[Sotrudnik] ON 

INSERT [dbo].[Sotrudnik] ([Id], [Name], [Address], [Phone], [Pasport], [StackTechnology], [OtdelId], [Stavka]) VALUES (1, N'Карилов Гой Юрьевич', N'ул. Седая, д.5,кв 78', N'79261068174', N'8018 827501', 1, 1, 37000)
INSERT [dbo].[Sotrudnik] ([Id], [Name], [Address], [Phone], [Pasport], [StackTechnology], [OtdelId], [Stavka]) VALUES (2, N'Гурман Гигабут Череповец', N'ул. СВО, д.2, кв.13', N'78882617752', N'8019 255172', 2, 2, 64000)
INSERT [dbo].[Sotrudnik] ([Id], [Name], [Address], [Phone], [Pasport], [StackTechnology], [OtdelId], [Stavka]) VALUES (4, N'Кабуу Альберт Епифанцевич', N'ул. Разибтых Фонарей, д.7,кв.8', N'79020094817', N'8018 251677', 3, 3, 36000)
SET IDENTITY_INSERT [dbo].[Sotrudnik] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1, N'autist', N'123', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (2, N'normis', N'123', 1)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (11, N'qweqeqwe', N'1231', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[Zadacha] ON 

INSERT [dbo].[Zadacha] ([Id], [ZaiavkaOtdelId], [SotrudnikId]) VALUES (1, 1, 2)
INSERT [dbo].[Zadacha] ([Id], [ZaiavkaOtdelId], [SotrudnikId]) VALUES (3, 5, 1)
INSERT [dbo].[Zadacha] ([Id], [ZaiavkaOtdelId], [SotrudnikId]) VALUES (6, 6, 4)
SET IDENTITY_INSERT [dbo].[Zadacha] OFF
GO
SET IDENTITY_INSERT [dbo].[Zaiavka] ON 

INSERT [dbo].[Zaiavka] ([Id], [ZakazchikId], [Opisanie], [Platforma], [ObrashenieDate], [Deadline]) VALUES (1, 1, N'Создать ПО. Хочу играть в флэппибирд на нокиа 3310', 2, CAST(N'2023-11-20' AS Date), CAST(N'2024-02-19' AS Date))
INSERT [dbo].[Zaiavka] ([Id], [ZakazchikId], [Opisanie], [Platforma], [ObrashenieDate], [Deadline]) VALUES (3, 2, N'Создать БД для готового приложеня. Предметная область "Аптека"', 1, CAST(N'2024-02-05' AS Date), CAST(N'2024-03-07' AS Date))
INSERT [dbo].[Zaiavka] ([Id], [ZakazchikId], [Opisanie], [Platforma], [ObrashenieDate], [Deadline]) VALUES (4, 3, N'Протестировать приложение', 3, CAST(N'2024-01-01' AS Date), CAST(N'2024-01-03' AS Date))
SET IDENTITY_INSERT [dbo].[Zaiavka] OFF
GO
SET IDENTITY_INSERT [dbo].[ZaiavkaOtdel] ON 

INSERT [dbo].[ZaiavkaOtdel] ([Id], [ZaiavkaId], [OtdelId]) VALUES (1, 1, 2)
INSERT [dbo].[ZaiavkaOtdel] ([Id], [ZaiavkaId], [OtdelId]) VALUES (5, 3, 1)
INSERT [dbo].[ZaiavkaOtdel] ([Id], [ZaiavkaId], [OtdelId]) VALUES (6, 4, 3)
SET IDENTITY_INSERT [dbo].[ZaiavkaOtdel] OFF
GO
SET IDENTITY_INSERT [dbo].[Zakazchik] ON 

INSERT [dbo].[Zakazchik] ([Id], [Name]) VALUES (1, N'Михаил Ш.')
INSERT [dbo].[Zakazchik] ([Id], [Name]) VALUES (2, N'Евгений П.')
INSERT [dbo].[Zakazchik] ([Id], [Name]) VALUES (3, N'Альберт Н.')
SET IDENTITY_INSERT [dbo].[Zakazchik] OFF
GO
ALTER TABLE [dbo].[Otdel]  WITH CHECK ADD  CONSTRAINT [FK_Otdel_Rukovodstvo] FOREIGN KEY([GlavaId])
REFERENCES [dbo].[Rukovodstvo] ([Id])
GO
ALTER TABLE [dbo].[Otdel] CHECK CONSTRAINT [FK_Otdel_Rukovodstvo]
GO
ALTER TABLE [dbo].[Sotrudnik]  WITH CHECK ADD  CONSTRAINT [FK_Sotrudnik_Otdel] FOREIGN KEY([OtdelId])
REFERENCES [dbo].[Otdel] ([Id])
GO
ALTER TABLE [dbo].[Sotrudnik] CHECK CONSTRAINT [FK_Sotrudnik_Otdel]
GO
ALTER TABLE [dbo].[Sotrudnik]  WITH CHECK ADD  CONSTRAINT [FK_Sotrudnik_StackTechnology] FOREIGN KEY([StackTechnology])
REFERENCES [dbo].[Platforma] ([Id])
GO
ALTER TABLE [dbo].[Sotrudnik] CHECK CONSTRAINT [FK_Sotrudnik_StackTechnology]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
ALTER TABLE [dbo].[Zadacha]  WITH CHECK ADD  CONSTRAINT [FK_Zadacha_Sotrudnik] FOREIGN KEY([SotrudnikId])
REFERENCES [dbo].[Sotrudnik] ([Id])
GO
ALTER TABLE [dbo].[Zadacha] CHECK CONSTRAINT [FK_Zadacha_Sotrudnik]
GO
ALTER TABLE [dbo].[Zadacha]  WITH CHECK ADD  CONSTRAINT [FK_Zadacha_ZaiavkaOtdel] FOREIGN KEY([ZaiavkaOtdelId])
REFERENCES [dbo].[ZaiavkaOtdel] ([Id])
GO
ALTER TABLE [dbo].[Zadacha] CHECK CONSTRAINT [FK_Zadacha_ZaiavkaOtdel]
GO
ALTER TABLE [dbo].[Zaiavka]  WITH CHECK ADD  CONSTRAINT [FK_Zaiavka_Platforma] FOREIGN KEY([Platforma])
REFERENCES [dbo].[Platforma] ([Id])
GO
ALTER TABLE [dbo].[Zaiavka] CHECK CONSTRAINT [FK_Zaiavka_Platforma]
GO
ALTER TABLE [dbo].[Zaiavka]  WITH CHECK ADD  CONSTRAINT [FK_Zaiavka_Zakazchik] FOREIGN KEY([ZakazchikId])
REFERENCES [dbo].[Zakazchik] ([Id])
GO
ALTER TABLE [dbo].[Zaiavka] CHECK CONSTRAINT [FK_Zaiavka_Zakazchik]
GO
ALTER TABLE [dbo].[ZaiavkaOtdel]  WITH CHECK ADD  CONSTRAINT [FK_ZaiavkaOtdel_Otdel] FOREIGN KEY([OtdelId])
REFERENCES [dbo].[Otdel] ([Id])
GO
ALTER TABLE [dbo].[ZaiavkaOtdel] CHECK CONSTRAINT [FK_ZaiavkaOtdel_Otdel]
GO
ALTER TABLE [dbo].[ZaiavkaOtdel]  WITH CHECK ADD  CONSTRAINT [FK_ZaiavkaOtdel_Zaiavka] FOREIGN KEY([ZaiavkaId])
REFERENCES [dbo].[Zaiavka] ([Id])
GO
ALTER TABLE [dbo].[ZaiavkaOtdel] CHECK CONSTRAINT [FK_ZaiavkaOtdel_Zaiavka]
GO
