/*==============================================================*/
/* Data Model + Data for the 'Jello' database              */
/*==============================================================*/

/*==============================================================*/
/* In a full script              */
/*==============================================================*/

/* Relationships */
/* Indexes */
/* Tables and Indexes */
/* Alter table FK references */
/* Insert Data */
/* Identity */

/*==============================================================*/
/* For scripts that add entity with relationship              */
/*==============================================================*/

/* Relationships */
/* Indexes */
/* Tables and Indexes */
/* Alter table FK references */
/* Insert Data */

/*==============================================================*/
/* In this script              */
/*==============================================================*/

/* Relationships (none)*/
/* Indexes including primary key Id */
/* Tables and Indexes */
/* Alter table FK references (none) */
/* Insert Data */
/* Identity */

/* Indexes including primary key Id start here */

if exists (select 1
            from  sysindexes
           where  id    = object_id('"User"')
            and   name  = 'IndexUserLastLoginDate'
            and   indid > 0
            and   indid < 255)
   drop index "User".IndexUserLastLoginDate
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"User"')
            and   name  = 'IndexUserDepartment'
            and   indid > 0
            and   indid < 255)
   drop index "User".IndexUserDepartment
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"User"')
            and   name  = 'IndexUserEmployeeNumber'
            and   indid > 0
            and   indid < 255)
   drop index "User".IndexUserEmployeeNumber
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"User"')
            and   name  = 'IndexUserAlias'
            and   indid > 0
            and   indid < 255)
   drop index "User".IndexUserAlias
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"User"')
            and   name  = 'IndexUserIdentityName'
            and   indid > 0
            and   indid < 255)
   drop index "User".IndexUserIdentityName
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"User"')
            and   name  = 'IndexUserIdentityId'
            and   indid > 0
            and   indid < 255)
   drop index "User".IndexUserIdentityId
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"User"')
            and   name  = 'IndexUserEmail'
            and   indid > 0
            and   indid < 255)
   drop index "User".IndexUserEmail
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"User"')
            and   name  = 'IndexUserLastName'
            and   indid > 0
            and   indid < 255)
   drop index "User".IndexUserLastName
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"User"')
            and   type = 'U')
   drop table "User"
go

/*==============================================================*/
/* Table: "User"                                                */
/*==============================================================*/
create table "User" (
   Id                   int                  identity,
   FirstName            nvarchar(50)         not null,
   LastName             nvarchar(50)         not null,
   Email                nvarchar(100)        not null,
   Alias                nvarchar(20)         not null,
   City                 nvarchar(50)         null,
   Country              nvarchar(50)         null,
   EmployeeNumber       nvarchar(40)         null,
   Department           nvarchar(40)         null,
   LastLoginDate        datetime2            null,
   TotalProjects        int                  not null default 0,
   TotalIssues          int                  not null default 0,
   Role                 nvarchar(20)         not null default User,
   IdentityId           nvarchar(50)         null,
   IdentityName         nvarchar(50)         null,
   CreatedDate          datetime2            not null default getdate(),
   ActivationCode       nvarchar(30)         null,
   ActivationDate       datetime2            null,
   ResetCode            nvarchar(30)         null,
   ResetDate            datetime2            null,
   AppKey               nvarchar(50)         null,
   AppSecret            nvarchar(100)        null,
   CreatedOn            datetime2            not null default getdate(),
   CreatedBy            int                  null,
   ChangedOn            datetime2            not null default getdate(),
   ChangedBy            int                  null,
   DeletedOn            datetime2            null,
   DeletedBy            int                  null,
   IsDeleted            bit                  not null,
   constraint PK_USER primary key nonclustered (Id)
)
go

/*==============================================================*/
/* Index: IndexUserLastName                                     */
/*==============================================================*/
create index IndexUserLastName on "User" (
LastName ASC
)
go

/*==============================================================*/
/* Index: IndexUserEmail                                        */
/*==============================================================*/
create unique index IndexUserEmail on "User" (
Email ASC
)
go

/*==============================================================*/
/* Index: IndexUserIdentityId                                   */
/*==============================================================*/
create index IndexUserIdentityId on "User" (
IdentityId ASC
)
go

/*==============================================================*/
/* Index: IndexUserIdentityName                                 */
/*==============================================================*/
create index IndexUserIdentityName on "User" (
IdentityName ASC
)
go

/*==============================================================*/
/* Index: IndexUserAlias                                        */
/*==============================================================*/
create unique index IndexUserAlias on "User" (
Alias ASC
)
go

/*==============================================================*/
/* Index: IndexUserEmployeeNumber                               */
/*==============================================================*/
create index IndexUserEmployeeNumber on "User" (
EmployeeNumber ASC
)
go

/*==============================================================*/
/* Index: IndexUserDepartment                                   */
/*==============================================================*/
create index IndexUserDepartment on "User" (
Department ASC
)
go

/*==============================================================*/
/* Index: IndexUserLastLoginDate                                */
/*==============================================================*/
create index IndexUserLastLoginDate on "User" (
LastLoginDate ASC
)
go

/*==============================================================*/
/* Insert data into 'Jello' database                            */
/*==============================================================*/

SET IDENTITY_INSERT [User] ON
INSERT INTO [User] ([Id],[FirstName],[LastName],[Email],[Alias],[City],[Country],[EmployeeNumber],[Department],[LastLoginDate],[TotalProjects],[TotalIssues],[Role],[IdentityId],[IdentityName],[CreatedDate],[ActivationCode],[ActivationDate],[ResetCode],[ResetDate],[AppKey],[AppSecret],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy],[DeletedOn],[DeletedBy],[IsDeleted])VALUES(1,'Tony','Lin','tlin@company.com','tlin','New York','USA','21006','Product','2018-08-29 12:25:50.0875515',28,29,22,25,25,0,0,'Admin','9aaf5823-6e45-45ce-b6f8-a78f43faae7b','f9e00f46-859d-4163-ad31-d560a559e919','2017-11-27 16:01:23.8018872','7yt49bb','2017-11-27 17:01:23.8018872',NULL,NULL,NULL,NULL,'2017-11-27 16:01:23.8018872',NULL,'2018-04-15 19:39:37.2599655',1,NULL,NULL,0)
INSERT INTO [User] ([Id],[FirstName],[LastName],[Email],[Alias],[City],[Country],[EmployeeNumber],[Department],[LastLoginDate],[TotalProjects],[TotalIssues],[Role],[IdentityId],[IdentityName],[CreatedDate],[ActivationCode],[ActivationDate],[ResetCode],[ResetDate],[AppKey],[AppSecret],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy],[DeletedOn],[DeletedBy],[IsDeleted])VALUES(2,'Peter','Kuster','peter@company.com','pkuster','Boston','USA','21230','Sales','2017-11-29 10:54:00.9659528',0,0,1,4,3,0,0,'User','d9aae1ff-fe0d-4bfa-8e96-b8ed5178bb7c','64aedfdc-8bab-463f-b590-d80d5bc64820','2017-11-29 10:54:00.9659528','rcwpzzw','2017-11-30 10:54:00.9659528','xox88p5','2017-08-21 10:53:02.2365769',NULL,NULL,'2017-11-29 10:54:00.9659528',1,'2017-11-29 10:54:00.9659528',1,NULL,NULL,0)
INSERT INTO [User] ([Id],[FirstName],[LastName],[Email],[Alias],[City],[Country],[EmployeeNumber],[Department],[LastLoginDate],[TotalProjects],[TotalIssues],[Role],[IdentityId],[IdentityName],[CreatedDate],[ActivationCode],[ActivationDate],[ResetCode],[ResetDate],[AppKey],[AppSecret],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy],[DeletedOn],[DeletedBy],[IsDeleted])VALUES(3,'Christine','Wirtz','christine@company.com','cwirtz','Los Angeles','USA','21036','Marketing','2017-11-23 10:58:09.3272598',0,0,0,0,0,0,0,'User','4a4a3f55-b667-4202-905b-3442db50bfd4','b7deaacc-1169-4e45-9b0b-48cc05f2f914','2017-11-27 18:22:59.5291462','ajt8jur','2017-11-27 18:44:59.5291462',NULL,NULL,NULL,NULL,'2017-11-28 18:22:59.5291462',1,'2017-11-28 18:22:59.5291462',1,NULL,NULL,0)
INSERT INTO [User] ([Id],[FirstName],[LastName],[Email],[Alias],[City],[Country],[EmployeeNumber],[Department],[LastLoginDate],[TotalProjects],[TotalIssues],[Role],[IdentityId],[IdentityName],[CreatedDate],[ActivationCode],[ActivationDate],[ResetCode],[ResetDate],[AppKey],[AppSecret],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy],[DeletedOn],[DeletedBy],[IsDeleted])VALUES(4,'Fen E','Hsiung','fene@company.com','fehsiung','Houston','USA','21003','Sales','2017-12-03 11:00:25.1678485',0,0,0,0,0,0,0,'User','87279326-ef9a-4e2a-817d-720cec4c8f4e','85accc8b-066c-4fff-b690-96e3f4287d3a','2017-11-27 18:24:39.5854697','7lys3s7','2017-12-03 11:00:10.3723221',NULL,NULL,NULL,NULL,'2017-11-28 18:22:59.5291462',1,'2017-11-28 18:22:59.5291462',1,NULL,NULL,0)
INSERT INTO [User] ([Id],[FirstName],[LastName],[Email],[Alias],[City],[Country],[EmployeeNumber],[Department],[LastLoginDate],[TotalProjects],[TotalIssues],[Role],[IdentityId],[IdentityName],[CreatedDate],[ActivationCode],[ActivationDate],[ResetCode],[ResetDate],[AppKey],[AppSecret],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy],[DeletedOn],[DeletedBy],[IsDeleted])VALUES(5,'Elon','Musk','emusk@company.com','emusk','New York','USA','21036','Product',NULL,0,0,0,0,0,0,0,'Admin','565f1c4b-21db-4ab9-a9ff-f1383ad8c57e','8ea9ac23-9543-4861-9ed4-fddf2bdb0fde','2017-11-28 11:04:04.0365628','s6nrrq5',NULL,NULL,NULL,NULL,NULL,'2017-11-30 18:22:59.5291462',1,'2017-11-30 18:22:59.5291462',1,NULL,NULL,0)
SET IDENTITY_INSERT [User] OFF

/*==============================================================*/
/* ASP.NET Identity 3.0 model                          */
/*==============================================================*/

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('AspNetUserRoles') and o.name = 'FK_AspNetUserRoles_AspNetUsers_UserId')
alter table AspNetUserRoles
   drop constraint FK_AspNetUserRoles_AspNetUsers_UserId
go


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('AspNetUserLogins') and o.name = 'FK_AspNetUserLogins_AspNetUsers_UserId')
alter table AspNetUserLogins
   drop constraint FK_AspNetUserLogins_AspNetUsers_UserId
go


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('AspNetUserRoles') and o.name = 'FK_AspNetUserRoles_AspNetRoles_RoleId')
alter table AspNetUserRoles
   drop constraint FK_AspNetUserRoles_AspNetRoles_RoleId
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('AspNetUserClaims') and o.name = 'FK_AspNetUserClaims_AspNetUsers_UserId')
alter table AspNetUserClaims
   drop constraint FK_AspNetUserClaims_AspNetUsers_UserId
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('AspNetUserClaims') and o.name = 'FK_AspNetRoleClaims_AspNetRoles_RoleId')
alter table AspNetUserClaims
   drop constraint FK_AspNetRoleClaims_AspNetRoles_RoleId
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('AspNetRoleClaims') and o.name = 'FK_AspNetRoleClaims_AspNetRoles_RoleId')
alter table AspNetRoleClaims
   drop constraint FK_AspNetRoleClaims_AspNetRoles_RoleId
go

if exists (select 1
            from  sysobjects
           where  id = object_id('AspNetUserTokens')
            and   type = 'U')
   drop table AspNetUserTokens
go

if exists (select 1
            from  sysobjects
           where  id = object_id('AspNetUsers')
            and   type = 'U')
   drop table AspNetUsers
go


if exists (select 1
            from  sysobjects
           where  id = object_id('AspNetUserRoles')
            and   type = 'U')
   drop table AspNetUserRoles
go


if exists (select 1
            from  sysobjects
           where  id = object_id('AspNetUserLogins')
            and   type = 'U')
   drop table AspNetUserLogins
go


if exists (select 1
            from  sysobjects
           where  id = object_id('AspNetUserClaims')
            and   type = 'U')
   drop table AspNetUserClaims
go


if exists (select 1
            from  sysobjects
           where  id = object_id('AspNetRoles')
            and   type = 'U')
   drop table AspNetRoles
go

if exists (select 1
            from  sysobjects
           where  id = object_id('AspNetRoleClaims')
            and   type = 'U')
   drop table AspNetRoleClaims


   if exists (select 1
            from  sysobjects
           where  id = object_id('__EFMigrationsHistory')
            and   type = 'U')
   drop table __EFMigrationsHistory
go

--


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO


-- ASP.NET Identity 3.0 data

INSERT INTO [AspNetRoles] ([Id],[ConcurrencyStamp],[Name],[NormalizedName])VALUES('2f89f817-6320-4e0c-9364-9a04033bf256','450a1084-d9d2-4162-aae2-482cb7f3b874','Admin','ADMIN')
INSERT INTO [AspNetRoles] ([Id],[ConcurrencyStamp],[Name],[NormalizedName])VALUES('70c0e727-429d-4f2e-8c30-0000bfdde1e9','b34c04de-ce8e-43a9-9eb1-c3f3302fc86c','User','USER')

INSERT INTO [AspNetUsers] ([Id],[AccessFailedCount],[ConcurrencyStamp],[Email],[EmailConfirmed],[LockoutEnabled],[LockoutEnd],[NormalizedEmail],[NormalizedUserName],[PasswordHash],[PhoneNumber],[PhoneNumberConfirmed],[SecurityStamp],[TwoFactorEnabled],[UserName])VALUES('4a4a3f55-b667-4202-905b-3442db50bfd4',0,'1dfbaa09-ff60-4e56-8dfd-c4e1a964f875','christine@company.com',0,1,NULL,'CHRISTINE@COMPANY.COM','B7DEAACC-1169-4E45-9B0B-48CC05F2F914','AQAAAAEAACcQAAAAEA/OuqqurcOhsL62y1+gd+F9qI7FUoQ5TGaCaZNmm901unz4A4DoWmijumpPuEvyuA==',NULL,0,'603c0b3b-6fd2-4bac-9cb2-4b54f63b0f59',0,'b7deaacc-1169-4e45-9b0b-48cc05f2f914')
INSERT INTO [AspNetUsers] ([Id],[AccessFailedCount],[ConcurrencyStamp],[Email],[EmailConfirmed],[LockoutEnabled],[LockoutEnd],[NormalizedEmail],[NormalizedUserName],[PasswordHash],[PhoneNumber],[PhoneNumberConfirmed],[SecurityStamp],[TwoFactorEnabled],[UserName])VALUES('565f1c4b-21db-4ab9-a9ff-f1383ad8c57e',0,'07d37546-8b85-410a-8b7c-df63392faa0f','emusk@company.com',0,1,NULL,'EMUSK@COMPANY.COM','8EA9AC23-9543-4861-9ED4-FDDF2BDB0FDE','AQAAAAEAACcQAAAAEPL63wo/UQRpMLouo7YCn01/09VIIkKZwcsnuQ4nxGpbSzZPycUSLzrpFHO32XIfyg==',NULL,0,'d8016406-8a17-40e9-b77d-964b3abd7340',0,'8ea9ac23-9543-4861-9ed4-fddf2bdb0fde')
INSERT INTO [AspNetUsers] ([Id],[AccessFailedCount],[ConcurrencyStamp],[Email],[EmailConfirmed],[LockoutEnabled],[LockoutEnd],[NormalizedEmail],[NormalizedUserName],[PasswordHash],[PhoneNumber],[PhoneNumberConfirmed],[SecurityStamp],[TwoFactorEnabled],[UserName])VALUES('87279326-ef9a-4e2a-817d-720cec4c8f4e',0,'00964f47-1398-4da3-bdc0-dc535d016bfa','fene@company.com',0,1,NULL,'FENE@COMPANY.COM','85ACCC8B-066C-4FFF-B690-96E3F4287D3A','AQAAAAEAACcQAAAAENULlI1fAgNqnXhRG97XkGXBe+Ijm3djUAIXU7nXMCchkUdQAyjNTPVOg79dAiF9oA==',NULL,0,'12acfa1c-4afd-45e2-87d8-581a88147b93',0,'85accc8b-066c-4fff-b690-96e3f4287d3a')
INSERT INTO [AspNetUsers] ([Id],[AccessFailedCount],[ConcurrencyStamp],[Email],[EmailConfirmed],[LockoutEnabled],[LockoutEnd],[NormalizedEmail],[NormalizedUserName],[PasswordHash],[PhoneNumber],[PhoneNumberConfirmed],[SecurityStamp],[TwoFactorEnabled],[UserName])VALUES('9aaf5823-6e45-45ce-b6f8-a78f43faae7b',0,'191d0d18-f03b-4d68-8f08-cdf28ced33bb','tlin@company.com',0,1,NULL,'TLIN@COMPANY.COM','F9E00F46-859D-4163-AD31-D560A559E919','AQAAAAEAACcQAAAAECeaqC2EB4AHWTFcY9lXolTFlIjuqj3ZBe4agDRWNy3Z/GGy1oQ2QLEovSf5aJMhcg==',NULL,0,'e74fbcb5-d9c6-4b5f-b969-d47df17e4557',0,'f9e00f46-859d-4163-ad31-d560a559e919')
INSERT INTO [AspNetUsers] ([Id],[AccessFailedCount],[ConcurrencyStamp],[Email],[EmailConfirmed],[LockoutEnabled],[LockoutEnd],[NormalizedEmail],[NormalizedUserName],[PasswordHash],[PhoneNumber],[PhoneNumberConfirmed],[SecurityStamp],[TwoFactorEnabled],[UserName])VALUES('d9aae1ff-fe0d-4bfa-8e96-b8ed5178bb7c',0,'12117619-f937-4be3-b29e-dca18c57348e','peter@company.com',0,1,NULL,'PETER@COMPANY.COM','64AEDFDC-8BAB-463F-B590-D80D5BC64820','AQAAAAEAACcQAAAAEBMqA5Nr79UAX3OYc0o5UfxAozHfARiOKNY+Y+hWEmioUK3ioaSfS5bHemKPAGESiQ==',NULL,0,'baf85e54-aee9-40ee-84e6-6c25322c5b59',0,'64aedfdc-8bab-463f-b590-d80d5bc64820')

INSERT INTO [AspNetUserRoles] ([UserId],[RoleId])VALUES('18404d8b-8ab3-4f16-914f-d7db45721174','2f89f817-6320-4e0c-9364-9a04033bf256')
INSERT INTO [AspNetUserRoles] ([UserId],[RoleId])VALUES('4a4a3f55-b667-4202-905b-3442db50bfd4','70c0e727-429d-4f2e-8c30-0000bfdde1e9')
INSERT INTO [AspNetUserRoles] ([UserId],[RoleId])VALUES('565f1c4b-21db-4ab9-a9ff-f1383ad8c57e','70c0e727-429d-4f2e-8c30-0000bfdde1e9')
INSERT INTO [AspNetUserRoles] ([UserId],[RoleId])VALUES('87279326-ef9a-4e2a-817d-720cec4c8f4e','70c0e727-429d-4f2e-8c30-0000bfdde1e9')
INSERT INTO [AspNetUserRoles] ([UserId],[RoleId])VALUES('95e02adc-4a30-47f6-b63f-1f4bb3502a5d','70c0e727-429d-4f2e-8c30-0000bfdde1e9')
INSERT INTO [AspNetUserRoles] ([UserId],[RoleId])VALUES('9aaf5823-6e45-45ce-b6f8-a78f43faae7b','2f89f817-6320-4e0c-9364-9a04033bf256')
INSERT INTO [AspNetUserRoles] ([UserId],[RoleId])VALUES('d9aae1ff-fe0d-4bfa-8e96-b8ed5178bb7c','70c0e727-429d-4f2e-8c30-0000bfdde1e9')