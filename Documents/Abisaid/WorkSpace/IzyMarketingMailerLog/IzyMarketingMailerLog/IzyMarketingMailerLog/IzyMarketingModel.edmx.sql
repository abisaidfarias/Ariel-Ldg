
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/02/2016 12:41:02
-- Generated from EDMX file: C:\Users\Ariel Ldg\Documents\Abisaid\WorkSpace\IzyMarketingMailerLog\IzyMarketingMailerLog\IzyMarketingMailerLog\IzyMarketingModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [IzyMarketingV1];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Campaigns_Campaigns]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Campaigns] DROP CONSTRAINT [FK_Campaigns_Campaigns];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserRoles_dbo_AspNetRoles_RoleId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo_AspNetUserRoles_dbo_AspNetRoles_RoleId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserRoles_dbo_AspNetUsers_UserId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo_AspNetUserRoles_dbo_AspNetUsers_UserId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUsers_dbo_Companies_CompanyId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUsers] DROP CONSTRAINT [FK_dbo_AspNetUsers_dbo_Companies_CompanyId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AuditLogDetails_dbo_AuditLogs_AuditLogId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AuditLogDetails] DROP CONSTRAINT [FK_dbo_AuditLogDetails_dbo_AuditLogs_AuditLogId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_Campaigns_dbo_Companies_CompanyId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Campaigns] DROP CONSTRAINT [FK_dbo_Campaigns_dbo_Companies_CompanyId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_Campaigns_dbo_Senders_SenderId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Campaigns] DROP CONSTRAINT [FK_dbo_Campaigns_dbo_Senders_SenderId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_CompositionSegments_dbo_Segments_SegmentId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CompositionSegments] DROP CONSTRAINT [FK_dbo_CompositionSegments_dbo_Segments_SegmentId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_EmailTestings_dbo_ListEmailTestings_ListEmailTestingId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmailTestings] DROP CONSTRAINT [FK_dbo_EmailTestings_dbo_ListEmailTestings_ListEmailTestingId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_EventMetricDetails_dbo_EventMetrics_EventMetricId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EventMetricDetails] DROP CONSTRAINT [FK_dbo_EventMetricDetails_dbo_EventMetrics_EventMetricId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_Images_dbo_Campaigns_CampaignId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Images] DROP CONSTRAINT [FK_dbo_Images_dbo_Campaigns_CampaignId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_ListEmailTestings_dbo_Companies_CompanyId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ListEmailTestings] DROP CONSTRAINT [FK_dbo_ListEmailTestings_dbo_Companies_CompanyId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_RecipientLists_dbo_Companies_CompanyId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RecipientLists] DROP CONSTRAINT [FK_dbo_RecipientLists_dbo_Companies_CompanyId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_SegmentCampaigns_dbo_Campaigns_Campaign_Id]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SegmentCampaigns] DROP CONSTRAINT [FK_dbo_SegmentCampaigns_dbo_Campaigns_Campaign_Id];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_SegmentCampaigns_dbo_Segments_Segment_Id]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SegmentCampaigns] DROP CONSTRAINT [FK_dbo_SegmentCampaigns_dbo_Segments_Segment_Id];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_SegmentRecipientLists_dbo_RecipientLists_RecipientList_Id]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SegmentRecipientLists] DROP CONSTRAINT [FK_dbo_SegmentRecipientLists_dbo_RecipientLists_RecipientList_Id];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_SegmentRecipientLists_dbo_Segments_Segment_Id]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SegmentRecipientLists] DROP CONSTRAINT [FK_dbo_SegmentRecipientLists_dbo_Segments_Segment_Id];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_Segments_dbo_Companies_CompanyId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Segments] DROP CONSTRAINT [FK_dbo_Segments_dbo_Companies_CompanyId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_Senders_dbo_Companies_Company_CompanyId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Senders] DROP CONSTRAINT [FK_dbo_Senders_dbo_Companies_Company_CompanyId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_Tags_dbo_RecipientLists_RecipientListId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tags] DROP CONSTRAINT [FK_dbo_Tags_dbo_RecipientLists_RecipientListId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_Templates_dbo_Companies_CompanyId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Templates] DROP CONSTRAINT [FK_dbo_Templates_dbo_Companies_CompanyId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_UploadedFiles_dbo_Companies_CompanyId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UploadedFiles] DROP CONSTRAINT [FK_dbo_UploadedFiles_dbo_Companies_CompanyId];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[__MigrationHistory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[__MigrationHistory];
GO
IF OBJECT_ID(N'[dbo].[AspNetRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetRoles];
GO
IF OBJECT_ID(N'[dbo].[AspNetUserClaims]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUserClaims];
GO
IF OBJECT_ID(N'[dbo].[AspNetUserLogins]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUserLogins];
GO
IF OBJECT_ID(N'[dbo].[AspNetUserRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUserRoles];
GO
IF OBJECT_ID(N'[dbo].[AspNetUsers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUsers];
GO
IF OBJECT_ID(N'[dbo].[AuditLogDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AuditLogDetails];
GO
IF OBJECT_ID(N'[dbo].[AuditLogs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AuditLogs];
GO
IF OBJECT_ID(N'[dbo].[Campaigns]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Campaigns];
GO
IF OBJECT_ID(N'[dbo].[Companies]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Companies];
GO
IF OBJECT_ID(N'[dbo].[CompositionSegments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CompositionSegments];
GO
IF OBJECT_ID(N'[dbo].[EmailTestings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EmailTestings];
GO
IF OBJECT_ID(N'[dbo].[EventMetricDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EventMetricDetails];
GO
IF OBJECT_ID(N'[dbo].[EventMetrics]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EventMetrics];
GO
IF OBJECT_ID(N'[dbo].[Images]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Images];
GO
IF OBJECT_ID(N'[dbo].[ListEmailTestings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ListEmailTestings];
GO
IF OBJECT_ID(N'[dbo].[RecipientLists]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RecipientLists];
GO
IF OBJECT_ID(N'[dbo].[SegmentCampaigns]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SegmentCampaigns];
GO
IF OBJECT_ID(N'[dbo].[SegmentRecipientLists]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SegmentRecipientLists];
GO
IF OBJECT_ID(N'[dbo].[Segments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Segments];
GO
IF OBJECT_ID(N'[dbo].[Senders]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Senders];
GO
IF OBJECT_ID(N'[dbo].[Tags]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tags];
GO
IF OBJECT_ID(N'[dbo].[Templates]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Templates];
GO
IF OBJECT_ID(N'[dbo].[UploadedFiles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UploadedFiles];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'C__MigrationHistory'
CREATE TABLE [dbo].[C__MigrationHistory] (
    [MigrationId] nvarchar(150)  NOT NULL,
    [ContextKey] nvarchar(300)  NOT NULL,
    [Model] varbinary(max)  NOT NULL,
    [ProductVersion] nvarchar(32)  NOT NULL
);
GO

-- Creating table 'AspNetRoles'
CREATE TABLE [dbo].[AspNetRoles] (
    [Id] nvarchar(128)  NOT NULL,
    [Name] nvarchar(256)  NOT NULL
);
GO

-- Creating table 'AspNetUserClaims'
CREATE TABLE [dbo].[AspNetUserClaims] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UserId] nvarchar(128)  NOT NULL,
    [ClaimType] nvarchar(max)  NULL,
    [ClaimValue] nvarchar(max)  NULL
);
GO

-- Creating table 'AspNetUserLogins'
CREATE TABLE [dbo].[AspNetUserLogins] (
    [LoginProvider] nvarchar(128)  NOT NULL,
    [ProviderKey] nvarchar(128)  NOT NULL,
    [UserId] nvarchar(128)  NOT NULL
);
GO

-- Creating table 'AspNetUsers'
CREATE TABLE [dbo].[AspNetUsers] (
    [Id] nvarchar(128)  NOT NULL,
    [CompanyId] int  NOT NULL,
    [Email] nvarchar(256)  NULL,
    [EmailConfirmed] bit  NOT NULL,
    [PasswordHash] nvarchar(max)  NULL,
    [SecurityStamp] nvarchar(max)  NULL,
    [PhoneNumber] nvarchar(max)  NULL,
    [PhoneNumberConfirmed] bit  NOT NULL,
    [TwoFactorEnabled] bit  NOT NULL,
    [LockoutEndDateUtc] datetime  NULL,
    [LockoutEnabled] bit  NOT NULL,
    [AccessFailedCount] int  NOT NULL,
    [UserName] nvarchar(256)  NOT NULL
);
GO

-- Creating table 'AuditLogDetails'
CREATE TABLE [dbo].[AuditLogDetails] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [PropertyName] nvarchar(256)  NOT NULL,
    [OriginalValue] nvarchar(max)  NULL,
    [NewValue] nvarchar(max)  NULL,
    [AuditLogId] bigint  NOT NULL
);
GO

-- Creating table 'AuditLogs'
CREATE TABLE [dbo].[AuditLogs] (
    [AuditLogId] bigint IDENTITY(1,1) NOT NULL,
    [UserName] nvarchar(max)  NULL,
    [EventDateUTC] datetime  NOT NULL,
    [EventType] int  NOT NULL,
    [TypeFullName] nvarchar(512)  NOT NULL,
    [RecordId] nvarchar(256)  NOT NULL
);
GO

-- Creating table 'Campaigns'
CREATE TABLE [dbo].[Campaigns] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [ModifiedDate] datetime  NULL,
    [Subject] nvarchar(max)  NULL,
    [WasSent] bit  NOT NULL,
    [Template] nvarchar(max)  NULL,
    [HtmlContent] nvarchar(max)  NULL,
    [PathImages] nvarchar(max)  NULL,
    [CompanyId] int  NOT NULL,
    [TotalSent] int  NOT NULL,
    [SenderId] bigint  NULL,
    [Status] int  NOT NULL
);
GO

-- Creating table 'Companies'
CREATE TABLE [dbo].[Companies] (
    [CompanyId] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NULL,
    [Route] nvarchar(max)  NULL,
    [ApiKey] nvarchar(max)  NOT NULL,
    [PathFile] nvarchar(max)  NULL,
    [PathImage] nvarchar(max)  NULL
);
GO

-- Creating table 'CompositionSegments'
CREATE TABLE [dbo].[CompositionSegments] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Tag] nvarchar(max)  NOT NULL,
    [Rule] int  NOT NULL,
    [Content] nvarchar(max)  NULL,
    [Order] int  NOT NULL,
    [Type] int  NOT NULL,
    [SegmentId] bigint  NOT NULL
);
GO

-- Creating table 'EmailTestings'
CREATE TABLE [dbo].[EmailTestings] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [ListEmailTestingId] bigint  NOT NULL,
    [CreatedDate] datetime  NOT NULL
);
GO

-- Creating table 'EventMetricDetails'
CREATE TABLE [dbo].[EventMetricDetails] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Key] nvarchar(max)  NULL,
    [Value] nvarchar(max)  NULL,
    [EventMetricId] bigint  NOT NULL
);
GO

-- Creating table 'EventMetrics'
CREATE TABLE [dbo].[EventMetrics] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [DateEvent] datetime  NOT NULL,
    [Campaign] nvarchar(max)  NULL,
    [TypeEvent] nvarchar(max)  NULL
);
GO

-- Creating table 'Images'
CREATE TABLE [dbo].[Images] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [ModifiedDate] datetime  NULL,
    [Size] bigint  NOT NULL,
    [CampaignId] bigint  NOT NULL,
    [Path] nvarchar(max)  NULL
);
GO

-- Creating table 'ListEmailTestings'
CREATE TABLE [dbo].[ListEmailTestings] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [CompanyId] int  NOT NULL
);
GO

-- Creating table 'RecipientLists'
CREATE TABLE [dbo].[RecipientLists] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Name] nvarchar(max)  NULL,
    [BirthDate] datetime  NULL,
    [CompanyId] int  NOT NULL
);
GO

-- Creating table 'Segments'
CREATE TABLE [dbo].[Segments] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [ModifiedDate] datetime  NULL,
    [CompanyId] int  NOT NULL
);
GO

-- Creating table 'Senders'
CREATE TABLE [dbo].[Senders] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [IsActive] bit  NOT NULL,
    [CompanyId] bigint  NOT NULL,
    [Company_CompanyId] int  NULL,
    [Name] nvarchar(max)  NULL
);
GO

-- Creating table 'Tags'
CREATE TABLE [dbo].[Tags] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Value] nvarchar(max)  NULL,
    [CreatedDate] datetime  NOT NULL,
    [ModifiedDate] datetime  NULL,
    [RecipientListId] bigint  NOT NULL
);
GO

-- Creating table 'Templates'
CREATE TABLE [dbo].[Templates] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Content] nvarchar(max)  NULL,
    [CreatedDate] datetime  NOT NULL,
    [CompanyId] int  NOT NULL
);
GO

-- Creating table 'UploadedFiles'
CREATE TABLE [dbo].[UploadedFiles] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Status] int  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [FilePath] nvarchar(max)  NULL,
    [FilePathError] nvarchar(max)  NULL,
    [CompanyId] int  NOT NULL,
    [Delimiter] nvarchar(max)  NULL
);
GO

-- Creating table 'AspNetUserRoles'
CREATE TABLE [dbo].[AspNetUserRoles] (
    [AspNetRoles_Id] nvarchar(128)  NOT NULL,
    [AspNetUsers_Id] nvarchar(128)  NOT NULL
);
GO

-- Creating table 'SegmentCampaigns'
CREATE TABLE [dbo].[SegmentCampaigns] (
    [Campaigns_Id] bigint  NOT NULL,
    [Segments_Id] bigint  NOT NULL
);
GO

-- Creating table 'SegmentRecipientLists'
CREATE TABLE [dbo].[SegmentRecipientLists] (
    [RecipientLists_Id] bigint  NOT NULL,
    [Segments_Id] bigint  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [MigrationId], [ContextKey] in table 'C__MigrationHistory'
ALTER TABLE [dbo].[C__MigrationHistory]
ADD CONSTRAINT [PK_C__MigrationHistory]
    PRIMARY KEY CLUSTERED ([MigrationId], [ContextKey] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetRoles'
ALTER TABLE [dbo].[AspNetRoles]
ADD CONSTRAINT [PK_AspNetRoles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetUserClaims'
ALTER TABLE [dbo].[AspNetUserClaims]
ADD CONSTRAINT [PK_AspNetUserClaims]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [LoginProvider], [ProviderKey], [UserId] in table 'AspNetUserLogins'
ALTER TABLE [dbo].[AspNetUserLogins]
ADD CONSTRAINT [PK_AspNetUserLogins]
    PRIMARY KEY CLUSTERED ([LoginProvider], [ProviderKey], [UserId] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetUsers'
ALTER TABLE [dbo].[AspNetUsers]
ADD CONSTRAINT [PK_AspNetUsers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AuditLogDetails'
ALTER TABLE [dbo].[AuditLogDetails]
ADD CONSTRAINT [PK_AuditLogDetails]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [AuditLogId] in table 'AuditLogs'
ALTER TABLE [dbo].[AuditLogs]
ADD CONSTRAINT [PK_AuditLogs]
    PRIMARY KEY CLUSTERED ([AuditLogId] ASC);
GO

-- Creating primary key on [Id] in table 'Campaigns'
ALTER TABLE [dbo].[Campaigns]
ADD CONSTRAINT [PK_Campaigns]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [CompanyId] in table 'Companies'
ALTER TABLE [dbo].[Companies]
ADD CONSTRAINT [PK_Companies]
    PRIMARY KEY CLUSTERED ([CompanyId] ASC);
GO

-- Creating primary key on [Id] in table 'CompositionSegments'
ALTER TABLE [dbo].[CompositionSegments]
ADD CONSTRAINT [PK_CompositionSegments]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'EmailTestings'
ALTER TABLE [dbo].[EmailTestings]
ADD CONSTRAINT [PK_EmailTestings]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'EventMetricDetails'
ALTER TABLE [dbo].[EventMetricDetails]
ADD CONSTRAINT [PK_EventMetricDetails]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'EventMetrics'
ALTER TABLE [dbo].[EventMetrics]
ADD CONSTRAINT [PK_EventMetrics]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Images'
ALTER TABLE [dbo].[Images]
ADD CONSTRAINT [PK_Images]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ListEmailTestings'
ALTER TABLE [dbo].[ListEmailTestings]
ADD CONSTRAINT [PK_ListEmailTestings]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RecipientLists'
ALTER TABLE [dbo].[RecipientLists]
ADD CONSTRAINT [PK_RecipientLists]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Segments'
ALTER TABLE [dbo].[Segments]
ADD CONSTRAINT [PK_Segments]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Senders'
ALTER TABLE [dbo].[Senders]
ADD CONSTRAINT [PK_Senders]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Tags'
ALTER TABLE [dbo].[Tags]
ADD CONSTRAINT [PK_Tags]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Templates'
ALTER TABLE [dbo].[Templates]
ADD CONSTRAINT [PK_Templates]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UploadedFiles'
ALTER TABLE [dbo].[UploadedFiles]
ADD CONSTRAINT [PK_UploadedFiles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [AspNetRoles_Id], [AspNetUsers_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [PK_AspNetUserRoles]
    PRIMARY KEY CLUSTERED ([AspNetRoles_Id], [AspNetUsers_Id] ASC);
GO

-- Creating primary key on [Campaigns_Id], [Segments_Id] in table 'SegmentCampaigns'
ALTER TABLE [dbo].[SegmentCampaigns]
ADD CONSTRAINT [PK_SegmentCampaigns]
    PRIMARY KEY CLUSTERED ([Campaigns_Id], [Segments_Id] ASC);
GO

-- Creating primary key on [RecipientLists_Id], [Segments_Id] in table 'SegmentRecipientLists'
ALTER TABLE [dbo].[SegmentRecipientLists]
ADD CONSTRAINT [PK_SegmentRecipientLists]
    PRIMARY KEY CLUSTERED ([RecipientLists_Id], [Segments_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [UserId] in table 'AspNetUserClaims'
ALTER TABLE [dbo].[AspNetUserClaims]
ADD CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId'
CREATE INDEX [IX_FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]
ON [dbo].[AspNetUserClaims]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'AspNetUserLogins'
ALTER TABLE [dbo].[AspNetUserLogins]
ADD CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId'
CREATE INDEX [IX_FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]
ON [dbo].[AspNetUserLogins]
    ([UserId]);
GO

-- Creating foreign key on [CompanyId] in table 'AspNetUsers'
ALTER TABLE [dbo].[AspNetUsers]
ADD CONSTRAINT [FK_dbo_AspNetUsers_dbo_Companies_CompanyId]
    FOREIGN KEY ([CompanyId])
    REFERENCES [dbo].[Companies]
        ([CompanyId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_AspNetUsers_dbo_Companies_CompanyId'
CREATE INDEX [IX_FK_dbo_AspNetUsers_dbo_Companies_CompanyId]
ON [dbo].[AspNetUsers]
    ([CompanyId]);
GO

-- Creating foreign key on [AuditLogId] in table 'AuditLogDetails'
ALTER TABLE [dbo].[AuditLogDetails]
ADD CONSTRAINT [FK_dbo_AuditLogDetails_dbo_AuditLogs_AuditLogId]
    FOREIGN KEY ([AuditLogId])
    REFERENCES [dbo].[AuditLogs]
        ([AuditLogId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_AuditLogDetails_dbo_AuditLogs_AuditLogId'
CREATE INDEX [IX_FK_dbo_AuditLogDetails_dbo_AuditLogs_AuditLogId]
ON [dbo].[AuditLogDetails]
    ([AuditLogId]);
GO

-- Creating foreign key on [Id] in table 'Campaigns'
ALTER TABLE [dbo].[Campaigns]
ADD CONSTRAINT [FK_Campaigns_Campaigns]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Campaigns]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [CompanyId] in table 'Campaigns'
ALTER TABLE [dbo].[Campaigns]
ADD CONSTRAINT [FK_dbo_Campaigns_dbo_Companies_CompanyId]
    FOREIGN KEY ([CompanyId])
    REFERENCES [dbo].[Companies]
        ([CompanyId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_Campaigns_dbo_Companies_CompanyId'
CREATE INDEX [IX_FK_dbo_Campaigns_dbo_Companies_CompanyId]
ON [dbo].[Campaigns]
    ([CompanyId]);
GO

-- Creating foreign key on [SenderId] in table 'Campaigns'
ALTER TABLE [dbo].[Campaigns]
ADD CONSTRAINT [FK_dbo_Campaigns_dbo_Senders_SenderId]
    FOREIGN KEY ([SenderId])
    REFERENCES [dbo].[Senders]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_Campaigns_dbo_Senders_SenderId'
CREATE INDEX [IX_FK_dbo_Campaigns_dbo_Senders_SenderId]
ON [dbo].[Campaigns]
    ([SenderId]);
GO

-- Creating foreign key on [CampaignId] in table 'Images'
ALTER TABLE [dbo].[Images]
ADD CONSTRAINT [FK_dbo_Images_dbo_Campaigns_CampaignId]
    FOREIGN KEY ([CampaignId])
    REFERENCES [dbo].[Campaigns]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_Images_dbo_Campaigns_CampaignId'
CREATE INDEX [IX_FK_dbo_Images_dbo_Campaigns_CampaignId]
ON [dbo].[Images]
    ([CampaignId]);
GO

-- Creating foreign key on [CompanyId] in table 'ListEmailTestings'
ALTER TABLE [dbo].[ListEmailTestings]
ADD CONSTRAINT [FK_dbo_ListEmailTestings_dbo_Companies_CompanyId]
    FOREIGN KEY ([CompanyId])
    REFERENCES [dbo].[Companies]
        ([CompanyId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_ListEmailTestings_dbo_Companies_CompanyId'
CREATE INDEX [IX_FK_dbo_ListEmailTestings_dbo_Companies_CompanyId]
ON [dbo].[ListEmailTestings]
    ([CompanyId]);
GO

-- Creating foreign key on [CompanyId] in table 'RecipientLists'
ALTER TABLE [dbo].[RecipientLists]
ADD CONSTRAINT [FK_dbo_RecipientLists_dbo_Companies_CompanyId]
    FOREIGN KEY ([CompanyId])
    REFERENCES [dbo].[Companies]
        ([CompanyId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_RecipientLists_dbo_Companies_CompanyId'
CREATE INDEX [IX_FK_dbo_RecipientLists_dbo_Companies_CompanyId]
ON [dbo].[RecipientLists]
    ([CompanyId]);
GO

-- Creating foreign key on [CompanyId] in table 'Segments'
ALTER TABLE [dbo].[Segments]
ADD CONSTRAINT [FK_dbo_Segments_dbo_Companies_CompanyId]
    FOREIGN KEY ([CompanyId])
    REFERENCES [dbo].[Companies]
        ([CompanyId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_Segments_dbo_Companies_CompanyId'
CREATE INDEX [IX_FK_dbo_Segments_dbo_Companies_CompanyId]
ON [dbo].[Segments]
    ([CompanyId]);
GO

-- Creating foreign key on [Company_CompanyId] in table 'Senders'
ALTER TABLE [dbo].[Senders]
ADD CONSTRAINT [FK_dbo_Senders_dbo_Companies_Company_CompanyId]
    FOREIGN KEY ([Company_CompanyId])
    REFERENCES [dbo].[Companies]
        ([CompanyId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_Senders_dbo_Companies_Company_CompanyId'
CREATE INDEX [IX_FK_dbo_Senders_dbo_Companies_Company_CompanyId]
ON [dbo].[Senders]
    ([Company_CompanyId]);
GO

-- Creating foreign key on [CompanyId] in table 'Templates'
ALTER TABLE [dbo].[Templates]
ADD CONSTRAINT [FK_dbo_Templates_dbo_Companies_CompanyId]
    FOREIGN KEY ([CompanyId])
    REFERENCES [dbo].[Companies]
        ([CompanyId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_Templates_dbo_Companies_CompanyId'
CREATE INDEX [IX_FK_dbo_Templates_dbo_Companies_CompanyId]
ON [dbo].[Templates]
    ([CompanyId]);
GO

-- Creating foreign key on [CompanyId] in table 'UploadedFiles'
ALTER TABLE [dbo].[UploadedFiles]
ADD CONSTRAINT [FK_dbo_UploadedFiles_dbo_Companies_CompanyId]
    FOREIGN KEY ([CompanyId])
    REFERENCES [dbo].[Companies]
        ([CompanyId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_UploadedFiles_dbo_Companies_CompanyId'
CREATE INDEX [IX_FK_dbo_UploadedFiles_dbo_Companies_CompanyId]
ON [dbo].[UploadedFiles]
    ([CompanyId]);
GO

-- Creating foreign key on [SegmentId] in table 'CompositionSegments'
ALTER TABLE [dbo].[CompositionSegments]
ADD CONSTRAINT [FK_dbo_CompositionSegments_dbo_Segments_SegmentId]
    FOREIGN KEY ([SegmentId])
    REFERENCES [dbo].[Segments]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_CompositionSegments_dbo_Segments_SegmentId'
CREATE INDEX [IX_FK_dbo_CompositionSegments_dbo_Segments_SegmentId]
ON [dbo].[CompositionSegments]
    ([SegmentId]);
GO

-- Creating foreign key on [ListEmailTestingId] in table 'EmailTestings'
ALTER TABLE [dbo].[EmailTestings]
ADD CONSTRAINT [FK_dbo_EmailTestings_dbo_ListEmailTestings_ListEmailTestingId]
    FOREIGN KEY ([ListEmailTestingId])
    REFERENCES [dbo].[ListEmailTestings]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_EmailTestings_dbo_ListEmailTestings_ListEmailTestingId'
CREATE INDEX [IX_FK_dbo_EmailTestings_dbo_ListEmailTestings_ListEmailTestingId]
ON [dbo].[EmailTestings]
    ([ListEmailTestingId]);
GO

-- Creating foreign key on [EventMetricId] in table 'EventMetricDetails'
ALTER TABLE [dbo].[EventMetricDetails]
ADD CONSTRAINT [FK_dbo_EventMetricDetails_dbo_EventMetrics_EventMetricId]
    FOREIGN KEY ([EventMetricId])
    REFERENCES [dbo].[EventMetrics]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_EventMetricDetails_dbo_EventMetrics_EventMetricId'
CREATE INDEX [IX_FK_dbo_EventMetricDetails_dbo_EventMetrics_EventMetricId]
ON [dbo].[EventMetricDetails]
    ([EventMetricId]);
GO

-- Creating foreign key on [RecipientListId] in table 'Tags'
ALTER TABLE [dbo].[Tags]
ADD CONSTRAINT [FK_dbo_Tags_dbo_RecipientLists_RecipientListId]
    FOREIGN KEY ([RecipientListId])
    REFERENCES [dbo].[RecipientLists]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_Tags_dbo_RecipientLists_RecipientListId'
CREATE INDEX [IX_FK_dbo_Tags_dbo_RecipientLists_RecipientListId]
ON [dbo].[Tags]
    ([RecipientListId]);
GO

-- Creating foreign key on [AspNetRoles_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [FK_AspNetUserRoles_AspNetRoles]
    FOREIGN KEY ([AspNetRoles_Id])
    REFERENCES [dbo].[AspNetRoles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [AspNetUsers_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [FK_AspNetUserRoles_AspNetUsers]
    FOREIGN KEY ([AspNetUsers_Id])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AspNetUserRoles_AspNetUsers'
CREATE INDEX [IX_FK_AspNetUserRoles_AspNetUsers]
ON [dbo].[AspNetUserRoles]
    ([AspNetUsers_Id]);
GO

-- Creating foreign key on [Campaigns_Id] in table 'SegmentCampaigns'
ALTER TABLE [dbo].[SegmentCampaigns]
ADD CONSTRAINT [FK_SegmentCampaigns_Campaigns]
    FOREIGN KEY ([Campaigns_Id])
    REFERENCES [dbo].[Campaigns]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Segments_Id] in table 'SegmentCampaigns'
ALTER TABLE [dbo].[SegmentCampaigns]
ADD CONSTRAINT [FK_SegmentCampaigns_Segments]
    FOREIGN KEY ([Segments_Id])
    REFERENCES [dbo].[Segments]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SegmentCampaigns_Segments'
CREATE INDEX [IX_FK_SegmentCampaigns_Segments]
ON [dbo].[SegmentCampaigns]
    ([Segments_Id]);
GO

-- Creating foreign key on [RecipientLists_Id] in table 'SegmentRecipientLists'
ALTER TABLE [dbo].[SegmentRecipientLists]
ADD CONSTRAINT [FK_SegmentRecipientLists_RecipientLists]
    FOREIGN KEY ([RecipientLists_Id])
    REFERENCES [dbo].[RecipientLists]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Segments_Id] in table 'SegmentRecipientLists'
ALTER TABLE [dbo].[SegmentRecipientLists]
ADD CONSTRAINT [FK_SegmentRecipientLists_Segments]
    FOREIGN KEY ([Segments_Id])
    REFERENCES [dbo].[Segments]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SegmentRecipientLists_Segments'
CREATE INDEX [IX_FK_SegmentRecipientLists_Segments]
ON [dbo].[SegmentRecipientLists]
    ([Segments_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------