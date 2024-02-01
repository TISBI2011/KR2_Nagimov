USE [KR2_Nagimov]
GO
/****** Object:  Table [dbo].[Otdel]    Script Date: 01.02.2024 17:09:13 ******/
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
/****** Object:  Table [dbo].[Platforma]    Script Date: 01.02.2024 17:09:13 ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 01.02.2024 17:09:13 ******/
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
/****** Object:  Table [dbo].[Rukovodstvo]    Script Date: 01.02.2024 17:09:13 ******/
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
/****** Object:  Table [dbo].[Sotrudnik]    Script Date: 01.02.2024 17:09:13 ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 01.02.2024 17:09:13 ******/
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
/****** Object:  Table [dbo].[Zadacha]    Script Date: 01.02.2024 17:09:13 ******/
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
/****** Object:  Table [dbo].[Zaiavka]    Script Date: 01.02.2024 17:09:13 ******/
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
/****** Object:  Table [dbo].[ZaiavkaOtdel]    Script Date: 01.02.2024 17:09:13 ******/
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
/****** Object:  Table [dbo].[Zakazchik]    Script Date: 01.02.2024 17:09:13 ******/
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
