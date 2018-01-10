
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 11/14/2012 10:55:47
-- Generated from EDMX file: D:\work\project\LNCMS SQLServer\2013house\App_Code\Models\Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [28day];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[L_Classs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[L_Classs];
GO
IF OBJECT_ID(N'[dbo].[L_Feedback]', 'U') IS NOT NULL
    DROP TABLE [dbo].[L_Feedback];
GO
IF OBJECT_ID(N'[dbo].[L_Form]', 'U') IS NOT NULL
    DROP TABLE [dbo].[L_Form];
GO
IF OBJECT_ID(N'[dbo].[L_Log]', 'U') IS NOT NULL
    DROP TABLE [dbo].[L_Log];
GO
IF OBJECT_ID(N'[dbo].[L_Newss]', 'U') IS NOT NULL
    DROP TABLE [dbo].[L_Newss];
GO
IF OBJECT_ID(N'[dbo].[L_RForm]', 'U') IS NOT NULL
    DROP TABLE [dbo].[L_RForm];
GO
IF OBJECT_ID(N'[dbo].[L_Tags]', 'U') IS NOT NULL
    DROP TABLE [dbo].[L_Tags];
GO
IF OBJECT_ID(N'[dbo].[Manages]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Manages];
GO
IF OBJECT_ID(N'[dbo].[WdBM]', 'U') IS NOT NULL
    DROP TABLE [dbo].[WdBM];
GO
IF OBJECT_ID(N'[dbo].[Huodong]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Huodong];
GO
IF OBJECT_ID(N'[dbo].[BaoMing]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BaoMing];
GO
IF OBJECT_ID(N'[dbo].[N_CarSeries]', 'U') IS NOT NULL
    DROP TABLE [dbo].[N_CarSeries];
GO
IF OBJECT_ID(N'[dbo].[ssss]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ssss];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'L_Classs'
CREATE TABLE [dbo].[L_Classs] (
    [CID] int IDENTITY(1,1) NOT NULL,
    [CNmae] nvarchar(50)  NULL,
    [CpareID] int  NULL,
    [CKeyWord] nvarchar(255)  NULL,
    [CUrl] nvarchar(255)  NULL,
    [CTag] nvarchar(255)  NULL,
    [CTag2] nvarchar(255)  NULL,
    [CTag3] nvarchar(255)  NULL,
    [CType] int  NULL,
    [CSubSkin] nvarchar(50)  NULL,
    [CSkin] nvarchar(50)  NULL
);
GO

-- Creating table 'L_Feedback'
CREATE TABLE [dbo].[L_Feedback] (
    [FID] int IDENTITY(1,1) NOT NULL,
    [NID] int  NULL,
    [FName] nvarchar(100)  NULL,
    [FTel] nvarchar(50)  NULL,
    [FQQ] nvarchar(50)  NULL,
    [FMail] nvarchar(50)  NULL,
    [FTitle] nvarchar(255)  NULL,
    [FContent] nvarchar(255)  NULL,
    [FTime] nvarchar(50)  NULL,
    [FReContent] nvarchar(255)  NULL,
    [FReTime] nvarchar(50)  NULL,
    [FLock] char(5)  NULL
);
GO

-- Creating table 'L_Form'
CREATE TABLE [dbo].[L_Form] (
    [FID] int IDENTITY(1,1) NOT NULL,
    [FNmae] nvarchar(55)  NULL,
    [FStat] int  NULL,
    [Fother] nvarchar(255)  NULL,
    [F1] nvarchar(255)  NULL,
    [FMust] int  NULL,
    [FTime] nvarchar(50)  NULL,
    [F1C] nvarchar(255)  NULL
);
GO

-- Creating table 'L_Log'
CREATE TABLE [dbo].[L_Log] (
    [LID] int IDENTITY(1,1) NOT NULL,
    [L_TiTLE] nvarchar(50)  NULL,
    [L_IP] nvarchar(20)  NULL,
    [L_Time] nvarchar(30)  NULL,
    [L_Act] nvarchar(255)  NULL,
    [L_UID] nvarchar(20)  NULL
);
GO

-- Creating table 'L_Newss'
CREATE TABLE [dbo].[L_Newss] (
    [NID] int IDENTITY(1,1) NOT NULL,
    [ClassId] int  NULL,
    [Title] nvarchar(100)  NULL,
    [Author] nvarchar(50)  NULL,
    [From] nvarchar(50)  NULL,
    [Tag] nvarchar(100)  NULL,
    [ZhaiYao] nvarchar(255)  NULL,
    [Img] nvarchar(255)  NULL,
    [Content] nvarchar(max)  NULL,
    [Click] int  NULL,
    [Url] nvarchar(255)  NULL,
    [Time] datetime  NULL,
    [IsTop] int  NULL,
    [IsHot] int  NULL,
    [IsSlide] int  NULL,
    [IsLock] int  NULL,
    [IsRed] int  NULL
);
GO

-- Creating table 'L_RForm'
CREATE TABLE [dbo].[L_RForm] (
    [FrID] int IDENTITY(1,1) NOT NULL,
    [FrName] nvarchar(55)  NULL,
    [Fr1] nvarchar(255)  NULL,
    [Fr2] nvarchar(255)  NULL,
    [FrTime] datetime  NULL,
    [FrRepaly] nvarchar(255)  NULL,
    [FrReOk] int  NULL,
    [FrReTime] datetime  NULL,
    [Fr1c] nvarchar(255)  NULL,
    [Fr2c] nvarchar(255)  NULL,
    [FID] int  NULL
);
GO

-- Creating table 'L_Tags'
CREATE TABLE [dbo].[L_Tags] (
    [TID] int IDENTITY(1,1) NOT NULL,
    [TName] nvarchar(55)  NULL,
    [TContent] nvarchar(255)  NULL,
    [TNotice] nvarchar(255)  NULL
);
GO

-- Creating table 'Manages'
CREATE TABLE [dbo].[Manages] (
    [MID] int IDENTITY(1,1) NOT NULL,
    [MName] nvarchar(50)  NULL,
    [MPWD] nvarchar(50)  NULL,
    [MRole] nvarchar(10)  NULL,
    [MPower] nvarchar(255)  NULL
);
GO

-- Creating table 'WdBM'
CREATE TABLE [dbo].[WdBM] (
    [BID] int IDENTITY(1,1) NOT NULL,
    [Bname] nvarchar(55)  NULL,
    [Btel] nvarchar(55)  NULL,
    [Biden] nvarchar(55)  NULL,
    [Bcom] nvarchar(55)  NULL,
    [Bmail] nvarchar(55)  NULL,
    [Bname2] nvarchar(55)  NULL,
    [Btel2] nvarchar(55)  NULL,
    [Biden2] nvarchar(55)  NULL,
    [Bcom2] nvarchar(55)  NULL,
    [Bmail2] nvarchar(55)  NULL,
    [Bimg] nvarchar(55)  NULL,
    [Bimg2] nvarchar(55)  NULL,
    [Btime] nvarchar(55)  NULL
);
GO

-- Creating table 'Huodong'
CREATE TABLE [dbo].[Huodong] (
    [HID] int IDENTITY(1,1) NOT NULL,
    [Htitle] nchar(150)  NULL,
    [Hks] datetime  NULL,
    [Hjs] datetime  NULL,
    [Hlx] int  NULL,
    [Hdjs] nvarchar(200)  NULL,
    [Hzz] nvarchar(20)  NULL,
    [Hly] nvarchar(20)  NULL,
    [Hjg] float  NULL,
    [Hnr] nvarchar(max)  NULL,
    [Himg] nvarchar(50)  NULL,
    [Hmeta] nvarchar(200)  NULL,
    [Hllcs] int  NULL,
    [Hfbrq] datetime  NULL,
    [IsLock] int  NULL
);
GO

-- Creating table 'BaoMing'
CREATE TABLE [dbo].[BaoMing] (
    [BID] int IDENTITY(1,1) NOT NULL,
    [BHid] int  NULL,
    [Bname] nvarchar(50)  NULL,
    [Btel] nvarchar(50)  NULL,
    [Bmail] nvarchar(10)  NULL,
    [Bother] nvarchar(max)  NULL,
    [Btime] datetime  NULL,
    [Bstatus] nvarchar(10)  NULL
);
GO

-- Creating table 'N_CarSeries'
CREATE TABLE [dbo].[N_CarSeries] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [S_Name] nvarchar(50)  NULL,
    [S_ProducerID] int  NULL,
    [S_ProducerName] nvarchar(50)  NULL,
    [S_IsSell] bit  NULL,
    [S_BrandID] int  NULL
);
GO

-- Creating table 'ssss'
CREATE TABLE [dbo].[ssss] (
    [SID] int IDENTITY(1,1) NOT NULL,
    [Stitle] nchar(100)  NULL,
    [Sstitle] nchar(50)  NULL,
    [SbrandID] nvarchar(50)  NULL,
    [SproducerID] nvarchar(50)  NULL,
    [Sbrand] nvarchar(220)  NULL,
    [Saddress] nvarchar(60)  NULL,
    [Stel] nvarchar(30)  NULL,
    [Swebsite] nvarchar(max)  NULL,
    [Slogo] nvarchar(50)  NULL,
    [Smeta] nvarchar(200)  NULL,
    [Smap] nvarchar(80)  NULL,
    [SsLock] int  NULL,
    [Scontent] nvarchar(max)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [CID] in table 'L_Classs'
ALTER TABLE [dbo].[L_Classs]
ADD CONSTRAINT [PK_L_Classs]
    PRIMARY KEY CLUSTERED ([CID] ASC);
GO

-- Creating primary key on [FID] in table 'L_Feedback'
ALTER TABLE [dbo].[L_Feedback]
ADD CONSTRAINT [PK_L_Feedback]
    PRIMARY KEY CLUSTERED ([FID] ASC);
GO

-- Creating primary key on [FID] in table 'L_Form'
ALTER TABLE [dbo].[L_Form]
ADD CONSTRAINT [PK_L_Form]
    PRIMARY KEY CLUSTERED ([FID] ASC);
GO

-- Creating primary key on [LID] in table 'L_Log'
ALTER TABLE [dbo].[L_Log]
ADD CONSTRAINT [PK_L_Log]
    PRIMARY KEY CLUSTERED ([LID] ASC);
GO

-- Creating primary key on [NID] in table 'L_Newss'
ALTER TABLE [dbo].[L_Newss]
ADD CONSTRAINT [PK_L_Newss]
    PRIMARY KEY CLUSTERED ([NID] ASC);
GO

-- Creating primary key on [FrID] in table 'L_RForm'
ALTER TABLE [dbo].[L_RForm]
ADD CONSTRAINT [PK_L_RForm]
    PRIMARY KEY CLUSTERED ([FrID] ASC);
GO

-- Creating primary key on [TID] in table 'L_Tags'
ALTER TABLE [dbo].[L_Tags]
ADD CONSTRAINT [PK_L_Tags]
    PRIMARY KEY CLUSTERED ([TID] ASC);
GO

-- Creating primary key on [MID] in table 'Manages'
ALTER TABLE [dbo].[Manages]
ADD CONSTRAINT [PK_Manages]
    PRIMARY KEY CLUSTERED ([MID] ASC);
GO

-- Creating primary key on [BID] in table 'WdBM'
ALTER TABLE [dbo].[WdBM]
ADD CONSTRAINT [PK_WdBM]
    PRIMARY KEY CLUSTERED ([BID] ASC);
GO

-- Creating primary key on [HID] in table 'Huodong'
ALTER TABLE [dbo].[Huodong]
ADD CONSTRAINT [PK_Huodong]
    PRIMARY KEY CLUSTERED ([HID] ASC);
GO

-- Creating primary key on [BID] in table 'BaoMing'
ALTER TABLE [dbo].[BaoMing]
ADD CONSTRAINT [PK_BaoMing]
    PRIMARY KEY CLUSTERED ([BID] ASC);
GO

-- Creating primary key on [ID] in table 'N_CarSeries'
ALTER TABLE [dbo].[N_CarSeries]
ADD CONSTRAINT [PK_N_CarSeries]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [SID] in table 'ssss'
ALTER TABLE [dbo].[ssss]
ADD CONSTRAINT [PK_ssss]
    PRIMARY KEY CLUSTERED ([SID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------