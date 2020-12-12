
/*==============================================================*/
/* Data model and seed data for the 'Jello' database            */
/*==============================================================*/

/*==============================================================*/
/* Full Script                                             */
/*==============================================================*/

/* Relationships */
/* Indexes */
/* Tables and Indexes */
/* Alter table FK references */
/* Insert Data */
/* Identity */

/*==============================================================*/
/* For scripts that add entity with relationship                */
/*==============================================================*/

/* Relationships */
/* Indexes */
/* Tables and Indexes */
/* Alter table FK references */
/* Insert Data */

/*==============================================================*/
/* In this script                                               */
/*==============================================================*/

/* Relationships (none)*/
/* Indexes including primary key Id */
/* Tables and Indexes */
/* Alter table FK references (none) */
/* Insert Data */
/* Identity */

/*==============================================================*/
/* Entity Relationships                                         */
/*==============================================================*/

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Error') and o.name = 'FK_ERROR_REFERENCE_USER')
alter table Error
   drop constraint FK_ERROR_REFERENCE_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Login') and o.name = 'FK_LOGIN_REFERENCE_USER')
alter table Login
   drop constraint FK_LOGIN_REFERENCE_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Viewed') and o.name = 'FK_VIEWED_REFERENCE_USER')
alter table Viewed
   drop constraint FK_VIEWED_REFERENCE_USER
go

/* Primary Entities */

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Project') and o.name = 'FK_PROJECT_REFERENCE_USER')
alter table Project
   drop constraint FK_PROJECT_REFERENCE_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Issue') and o.name = 'FK_ISSUE_REFERENCE_PROJECT')
alter table Issue
   drop constraint FK_ISSUE_REFERENCE_PROJECT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Issue') and o.name = 'FK_ISSUE_REFERENCE_USER')
alter table Issue
   drop constraint FK_ISSUE_REFERENCE_USER
go

/*==============================================================*/
/* Indexes including primary key Id                             */
/*==============================================================*/

if exists (select 1
            from  sysindexes
           where  id    = object_id('Error')
            and   name  = 'IndexErrorErrorDate'
            and   indid > 0
            and   indid < 255)
   drop index Error.IndexErrorErrorDate
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Error')
            and   type = 'U')
   drop table Error
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Login')
            and   name  = 'IndexLoginLoginDate'
            and   indid > 0
            and   indid < 255)
   drop index Login.IndexLoginLoginDate
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Login')
            and   name  = 'IndexLoginUserIdLoginDate'
            and   indid > 0
            and   indid < 255)
   drop index Login.IndexLoginUserIdLoginDate
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Login')
            and   type = 'U')
   drop table Login
go

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

if exists (select 1
            from  sysindexes
           where  id    = object_id('Viewed')
            and   name  = 'IndexViewedWhatWhat'
            and   indid > 0
            and   indid < 255)
   drop index Viewed.IndexViewedWhatWhat
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Viewed')
            and   name  = 'IndexViewedUserWhatWhat'
            and   indid > 0
            and   indid < 255)
   drop index Viewed.IndexViewedUserWhatWhat
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Viewed')
            and   type = 'U')
   drop table Viewed
go

/* Primary Entities */

if exists (select 1
            from  sysindexes
           where  id    = object_id('Project')
            and   name  = 'IndexProjectOwnerAlias'
            and   indid > 0
            and   indid < 255)
   drop index Project.IndexProjectOwnerAlias
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Project')
            and   name  = 'IndexProjectType'
            and   indid > 0
            and   indid < 255)
   drop index Project.IndexProjectType
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Project')
            and   name  = 'IndexProjectTitle'
            and   indid > 0
            and   indid < 255)
   drop index Project.IndexProjectTitle
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Project')
            and   type = 'U')
   drop table Project
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Issue')
            and   name  = 'IndexIssueOwnerAlias'
            and   indid > 0
            and   indid < 255)
   drop index Issue.IndexIssueOwnerAlias
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Issue')
            and   name  = 'IndexIssueAssigneeName'
            and   indid > 0
            and   indid < 255)
   drop index Issue.IndexIssueAssigneeName
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Issue')
            and   name  = 'IndexIssueAssigneeId'
            and   indid > 0
            and   indid < 255)
   drop index Issue.IndexIssueAssigneeId
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Issue')
            and   name  = 'IndexIssueProjectName'
            and   indid > 0
            and   indid < 255)
   drop index Issue.IndexIssueProjectName
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Issue')
            and   name  = 'IndexIssueProjectId'
            and   indid > 0
            and   indid < 255)
   drop index Issue.IndexIssueProjectId
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Issue')
            and   name  = 'IndexIssueStatus'
            and   indid > 0
            and   indid < 255)
   drop index Issue.IndexIssueStatus
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Issue')
            and   name  = 'IndexIssuePriority'
            and   indid > 0
            and   indid < 255)
   drop index Issue.IndexIssuePriority
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Issue')
            and   name  = 'IndexIssueType'
            and   indid > 0
            and   indid < 255)
   drop index Issue.IndexIssueType
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Issue')
            and   name  = 'IndexIssueTitle'
            and   indid > 0
            and   indid < 255)
   drop index Issue.IndexIssueTitle
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Issue')
            and   type = 'U')
   drop table Issue
go

/*==============================================================*/
/* Tables and Indexes                                           */
/*==============================================================*/

/*==============================================================*/
/* Table: Issue                                                */
/*==============================================================*/
create table Issue (
   Id                   int                  identity,
   Title                nvarchar(100)        not null,
   Description          nvarchar(max)        null,
   Type                 nvarchar(40)         null,
   Priority             nvarchar(40)         null,
   Status               nvarchar(40)         null,
   ProjectId            int                  null,
   ProjectTitle         nvarchar(100)        null,
   AssigneeId           int                  null,
   AssigneeName         nvarchar(100)        null,
   OwnerId              int                  not null,
   OwnerAlias           nvarchar(20)         not null,
   CreatedDate          datetime2            not null default getdate(),
   CreatedOn            datetime2            not null default getdate(),
   CreatedBy            int                  null,
   ChangedOn            datetime2            not null default getdate(),
   ChangedBy            int                  null,
   constraint PK_Issue primary key (Id)
)
go

/*==============================================================*/
/* Index: IndexIssueTitle                                       */
/*==============================================================*/
create index IndexIssueTitle on Issue (
Title ASC
)
go

/*==============================================================*/
/* Index: IndexIssueType                                     */
/*==============================================================*/
create index IndexIssueType on Issue (
Type ASC
)
go

/*==============================================================*/
/* Index: IndexIssuePriority                                     */
/*==============================================================*/
create index IndexIssuePriority on Issue (
Priority ASC
)
go

/*==============================================================*/
/* Index: IndexIssueStatus                                     */
/*==============================================================*/
create index IndexIssueStatus on Issue (
Status ASC
)
go

/*==============================================================*/
/* Index: IndexIssueProjectId                                */
/*==============================================================*/
create index IndexIssueProjectId on Issue (
ProjectId ASC
)
go

/*==============================================================*/
/* Index: IndexIssueProjectTitle                                */
/*==============================================================*/
create index IndexIssueProjectTitle on Issue (
ProjectTitle ASC
)
go

/*==============================================================*/
/* Index: IndexIssueAssigneeId                                */
/*==============================================================*/
create index IndexIssueAssigneeId on Issue (
AssigneeId ASC
)
go

/*==============================================================*/
/* Index: IndexIssueAssigneeName                                */
/*==============================================================*/
create index IndexIssueAssigneeName on Issue (
AssigneeName ASC
)
go

/*==============================================================*/
/* Index: IndexIssueOwnerAlias                                 */
/*==============================================================*/
create index IndexIssueOwnerAlias on Issue (
OwnerAlias ASC
)
go

/*==============================================================*/
/* Table: Project                                                */
/*==============================================================*/
create table Project (
   Id                   int                  identity,
   Title                nvarchar(100)        not null,
   Description          nvarchar(max)        null,
   Type                 nvarchar(40)         null,
   TotalIssues          int                  not null default 0,
   OwnerId              int                  not null,
   OwnerAlias           nvarchar(20)         not null,
   CreatedDate          datetime2            not null default getdate(),
   CreatedOn            datetime2            not null default getdate(),
   CreatedBy            int                  null,
   ChangedOn            datetime2            not null default getdate(),
   ChangedBy            int                  null,
   constraint PK_Project primary key (Id)
)
go

/*==============================================================*/
/* Index: IndexProjectTitle                                       */
/*==============================================================*/
create index IndexProjectTitle on Project (
Title ASC
)
go

/*==============================================================*/
/* Index: IndexProjectType                                     */
/*==============================================================*/
create index IndexProjectType on Project (
Type ASC
)
go

/*==============================================================*/
/* Index: IndexProjectOwnerAlias                                 */
/*==============================================================*/
create index IndexProjectOwnerAlias on Project (
OwnerAlias ASC
)
go

/*==============================================================*/
/* Table: Error                                                 */
/*==============================================================*/
create table Error (
   Id                   int                  identity,
   UserId               int                  null,
   ErrorDate            datetime2            not null default getdate(),
   Message              nvarchar(600)        not null,
   Exception            nvarchar(max)        null,
   IpAddress            nvarchar(40)         null,
   Url                  nvarchar(400)        null,
   HttpReferer          nvarchar(400)        null,
   UserAgent            nvarchar(400)        null,
   CreatedOn            datetime2            not null default getdate(),
   CreatedBy            int                  null,
   ChangedOn            datetime2            not null default getdate(),
   ChangedBy            int                  null,
   constraint PK_ERROR primary key (Id)
)
go

/*==============================================================*/
/* Index: IndexErrorErrorDate                                   */
/*==============================================================*/
create index IndexErrorErrorDate on Error (
ErrorDate ASC
)
go

/*==============================================================*/
/* Table: Login                                                 */
/*==============================================================*/
create table Login (
   Id                   int                  identity,
   UserId               int                  null,
   LastName             nvarchar(50)         null,
   FirstName            nvarchar(50)         null,
   Email                nvarchar(100)        not null,
   LoginDate            datetime2            not null default getdate(),
   Result               nvarchar(10)         not null,
   IpAddress            nvarchar(40)         null,
   CreatedOn            datetime2            not null default getdate(),
   CreatedBy            int                  null,
   ChangedOn            datetime2            not null default getdate(),
   ChangedBy            int                  null,
   constraint PK_LOGIN primary key (Id)
)
go

/*==============================================================*/
/* Index: IndexLoginUserIdLoginDate                             */
/*==============================================================*/
create index IndexLoginUserIdLoginDate on Login (
UserId ASC,
LoginDate ASC
)
go

/*==============================================================*/
/* Index: IndexLoginLoginDate                                   */
/*==============================================================*/
create index IndexLoginLoginDate on Login (
LoginDate ASC
)
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
/* Table: Viewed                                                */
/*==============================================================*/
create table Viewed (
   Id                   int                  identity,
   UserId               int                  not null,
   WhatId               int                  not null,
   WhatType             nvarchar(20)         not null,
   WhatName             nvarchar(120)        null,
   ViewDate             datetime2            not null default getdate(),
   CreatedOn            datetime2            not null default getdate(),
   CreatedBy            int                  null,
   ChangedOn            datetime2            not null default getdate(),
   ChangedBy            int                  null,
   constraint PK_VIEWED primary key (Id)
)
go

/*==============================================================*/
/* Index: IndexViewedUserWhatWhat                               */
/*==============================================================*/
create index IndexViewedUserWhatWhat on Viewed (
UserId ASC,
WhatId ASC,
WhatType ASC
)
go

/*==============================================================*/
/* Index: IndexViewedWhatWhat                                   */
/*==============================================================*/
create index IndexViewedWhatWhat on Viewed (
WhatId ASC,
WhatType ASC
)
go

/*==============================================================*/
/* Alter table FK references (Adding Project and Issue)         */
/*==============================================================*/

alter table Error
   add constraint FK_ERROR_REFERENCE_USER foreign key (UserId)
      references "User" (Id)
go

alter table Login
   add constraint FK_LOGIN_REFERENCE_USER foreign key (UserId)
      references "User" (Id)
go

alter table Viewed
   add constraint FK_VIEWED_REFERENCE_USER foreign key (UserId)
      references "User" (Id)
go

alter table Project
   add constraint FK_PROJECT_REFERENCE_USER foreign key (OwnerId)
      references "User" (Id)
go

alter table Issue
   add constraint FK_ISSUE_REFERENCE_PROJECT foreign key (ProjectId)
      references Project (Id)
go

alter table Issue
   add constraint FK_ISSUE_REFERENCE_USER foreign key (OwnerId)
      references "User" (Id)
go

/*==============================================================*/
/* Insert data into 'Jello' database                            */
/*==============================================================*/

SET IDENTITY_INSERT [User] ON
INSERT INTO [User] ([Id],[FirstName],[LastName],[Email],[Alias],[City],[Country],[EmployeeNumber],[Department],[LastLoginDate],[TotalProjects],[TotalIssues],[Role],[IdentityId],[IdentityName],[CreatedDate],[ActivationCode],[ActivationDate],[ResetCode],[ResetDate],[AppKey],[AppSecret],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy],[DeletedOn],[DeletedBy],[IsDeleted])VALUES(1,'Tony','Lin','tlin@company.com','tlin','New York','USA','21006','Product','2018-08-29 12:25:50.0875515',0,0,'Admin','9aaf5823-6e45-45ce-b6f8-a78f43faae7b','f9e00f46-859d-4163-ad31-d560a559e919','2020-11-27 16:01:23.8018872','7yt49bb','2020-11-27 17:01:23.8018872',NULL,NULL,NULL,NULL,'2020-11-27 16:01:23.8018872',NULL,'2018-04-15 19:39:37.2599655',1,NULL,NULL,0)
INSERT INTO [User] ([Id],[FirstName],[LastName],[Email],[Alias],[City],[Country],[EmployeeNumber],[Department],[LastLoginDate],[TotalProjects],[TotalIssues],[Role],[IdentityId],[IdentityName],[CreatedDate],[ActivationCode],[ActivationDate],[ResetCode],[ResetDate],[AppKey],[AppSecret],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy],[DeletedOn],[DeletedBy],[IsDeleted])VALUES(2,'Peter','Kuster','peter@company.com','pkuster','Boston','USA','21230','Sales','2020-11-29 10:54:00.9659528',0,0,'User','d9aae1ff-fe0d-4bfa-8e96-b8ed5178bb7c','64aedfdc-8bab-463f-b590-d80d5bc64820','2020-11-29 10:54:00.9659528','rcwpzzw','2020-11-30 10:54:00.9659528','xox88p5','2020-08-21 10:53:02.2365769',NULL,NULL,'2020-11-29 10:54:00.9659528',1,'2020-11-29 10:54:00.9659528',1,NULL,NULL,0)
INSERT INTO [User] ([Id],[FirstName],[LastName],[Email],[Alias],[City],[Country],[EmployeeNumber],[Department],[LastLoginDate],[TotalProjects],[TotalIssues],[Role],[IdentityId],[IdentityName],[CreatedDate],[ActivationCode],[ActivationDate],[ResetCode],[ResetDate],[AppKey],[AppSecret],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy],[DeletedOn],[DeletedBy],[IsDeleted])VALUES(3,'Christine','Wirtz','christine@company.com','cwirtz','Los Angeles','USA','21036','Marketing','2020-11-23 10:58:09.3272598',0,0,'User','4a4a3f55-b667-4202-905b-3442db50bfd4','b7deaacc-1169-4e45-9b0b-48cc05f2f914','2020-11-27 18:22:59.5291462','ajt8jur','2020-11-27 18:44:59.5291462',NULL,NULL,NULL,NULL,'2020-11-28 18:22:59.5291462',1,'2020-11-28 18:22:59.5291462',1,NULL,NULL,0)
INSERT INTO [User] ([Id],[FirstName],[LastName],[Email],[Alias],[City],[Country],[EmployeeNumber],[Department],[LastLoginDate],[TotalProjects],[TotalIssues],[Role],[IdentityId],[IdentityName],[CreatedDate],[ActivationCode],[ActivationDate],[ResetCode],[ResetDate],[AppKey],[AppSecret],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy],[DeletedOn],[DeletedBy],[IsDeleted])VALUES(4,'Fen E','Hsiung','fene@company.com','fehsiung','Houston','USA','21003','Marketing','2020-12-03 11:00:25.1678485',0,0,'User','87279326-ef9a-4e2a-817d-720cec4c8f4e','85accc8b-066c-4fff-b690-96e3f4287d3a','2020-11-27 18:24:39.5854697','7lys3s7','2020-12-03 11:00:10.3723221',NULL,NULL,NULL,NULL,'2020-11-28 18:22:59.5291462',1,'2020-11-28 18:22:59.5291462',1,NULL,NULL,0)
INSERT INTO [User] ([Id],[FirstName],[LastName],[Email],[Alias],[City],[Country],[EmployeeNumber],[Department],[LastLoginDate],[TotalProjects],[TotalIssues],[Role],[IdentityId],[IdentityName],[CreatedDate],[ActivationCode],[ActivationDate],[ResetCode],[ResetDate],[AppKey],[AppSecret],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy],[DeletedOn],[DeletedBy],[IsDeleted])VALUES(5,'Elon','Musk','emusk@company.com','emusk','New York','USA','21036','Product',NULL,0,0,'Admin','565f1c4b-21db-4ab9-a9ff-f1383ad8c57e','8ea9ac23-9543-4861-9ed4-fddf2bdb0fde','2020-11-28 11:04:04.0365628','s6nrrq5',NULL,NULL,NULL,NULL,NULL,'2020-11-30 18:22:59.5291462',1,'2020-11-30 18:22:59.5291462',1,NULL,NULL,0)
SET IDENTITY_INSERT [User] OFF

SET IDENTITY_INSERT [Project] ON
INSERT INTO [Project] ([Id],[Title],[Description],[Type],[TotalIssues],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(1,'Big Project','This is a big project','Software',0,1,'danderson','2020-12-06 21:53:15.8847889','2020-12-06 21:53:15.8847889',1,'2020-12-07 20:13:57.7469482',1)
INSERT INTO [Project] ([Id],[Title],[Description],[Type],[TotalIssues],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(2,'Small Project','This is a small project','Software',0,1,'danderson','2020-12-06 21:53:15.8847889','2020-12-06 21:53:15.8847889',1,'2020-12-07 20:13:57.7469482',1)
INSERT INTO [Project] ([Id],[Title],[Description],[Type],[TotalIssues],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(3,'Project with issues','Description 3','Software',0,1,'danderson','2020-12-06 21:53:15.8847889','2020-12-06 21:53:15.8847889',1,'2020-12-07 20:13:57.7469482',1)
INSERT INTO [Project] ([Id],[Title],[Description],[Type],[TotalIssues],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(4,'Christmas campaign','Description 4','Software',0,1,'danderson','2020-12-06 21:53:15.8847889','2020-12-06 21:53:15.8847889',1,'2020-12-07 20:13:57.7469482',1)
INSERT INTO [Project] ([Id],[Title],[Description],[Type],[TotalIssues],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(5,'Black friday promotion','Description 5','Software',0,1,'danderson','2020-12-06 21:53:15.8847889','2020-12-06 21:53:15.8847889',1,'2020-12-07 20:13:57.7469482',1)
SET IDENTITY_INSERT [Project] OFF

SET IDENTITY_INSERT [Issue] ON
INSERT INTO [Issue] ([Id],[Title],[Description],[Type],[Priority],[Status],[ProjectId],[ProjectTitle],[AssigneeId],[AssigneeName],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(1,'Big issue','Description of Issue 1','Bug','High','Done',1,'Big Project',2,'rgraef',1,'danderson','2020-12-06 21:53:15.8847889','2020-12-06 21:53:15.8847889',1,'2020-12-07 20:13:57.7469482',1)
INSERT INTO [Issue] ([Id],[Title],[Description],[Type],[Priority],[Status],[ProjectId],[ProjectTitle],[AssigneeId],[AssigneeName],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(2,'Small Issue for Project 2','Description of Issue 2','Epic','Urgent','New',2,'Small Project',2,'rgraef',1,'danderson','2020-12-06 21:53:15.8847889','2020-12-06 21:53:15.8847889',1,'2020-12-07 20:13:57.7469482',1)
INSERT INTO [Issue] ([Id],[Title],[Description],[Type],[Priority],[Status],[ProjectId],[ProjectTitle],[AssigneeId],[AssigneeName],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(3,'Issue 3','Description of Issue 3','New Feature','Low','In Progress',3,'Project with issues',2,'rgraef',1,'danderson','2020-12-06 21:53:15.8847889','2020-12-06 21:53:15.8847889',1,'2020-12-07 20:13:57.7469482',1)
INSERT INTO [Issue] ([Id],[Title],[Description],[Type],[Priority],[Status],[ProjectId],[ProjectTitle],[AssigneeId],[AssigneeName],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(4,'Marketing assets','Description of Issue 4','Improvement','Medium','In Review',4,'Christmas campaign',2,'rgraef',1,'danderson','2020-12-06 21:53:15.8847889','2020-12-06 21:53:15.8847889',1,'2020-12-07 20:13:57.7469482',1)
INSERT INTO [Issue] ([Id],[Title],[Description],[Type],[Priority],[Status],[ProjectId],[ProjectTitle],[AssigneeId],[AssigneeName],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(5,'Marketing material','Description of Issue 5','Task','Low','New',5,'Black friday promotion',2,'rgraef',1,'danderson','2020-12-06 21:53:15.8847889','2020-12-06 21:53:15.8847889',1,'2020-12-07 20:13:57.7469482',1)
SET IDENTITY_INSERT [Issue] OFF

SET IDENTITY_INSERT [Error] ON
INSERT INTO [Error] ([Id],[UserId],[ErrorDate],[Message],[Exception],[IpAddress],[Url],[HttpReferer],[UserAgent],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(1,1,'2020-12-08 11:51:45.4724279','Attempted to divide by zero.','System.DivideByZeroException: Attempted to divide by zero.     at Jello.Starter.Core.Application.Projects.ProjectsController.<List>d__1.MoveNext() in C:\Users\John Smith\OneDrive\Dev\Jello.NET\Application\D .NET\_P\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Application\Projects\ProjectsController.cs:line 28  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at lambda_method(Closure , Issue )     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeActionMethodAsync>d__12.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeNextActionFilterAsync>d__10.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Issue& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeInnerFilterAsync>d__14.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeNextExceptionFilterAsync>d__23.MoveNext()','127.0.0.1','/Projects','https://localhost:44313/home','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36','2020-12-08 11:51:45.4724279',1,'2020-12-08 11:51:45.4724279',1)
INSERT INTO [Error] ([Id],[UserId],[ErrorDate],[Message],[Exception],[IpAddress],[Url],[HttpReferer],[UserAgent],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(2,1,'2020-12-08 11:53:56.9220524','Attempted to divide by zero.','System.DivideByZeroException: Attempted to divide by zero.     at Jello.Starter.Core.Application.Projects.ProjectsController.<List>d__1.MoveNext() in C:\Users\John Smith\OneDrive\Dev\Jello.NET\Application\D .NET\_P\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Application\Projects\ProjectsController.cs:line 28  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at lambda_method(Closure , Issue )     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeActionMethodAsync>d__12.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeNextActionFilterAsync>d__10.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Issue& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeInnerFilterAsync>d__14.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeNextExceptionFilterAsync>d__23.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ExceptionContext context)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Issue& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeNextResourceFilter>d__22.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Issue& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeFilterPipelineAsync>d__17.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeAsync>d__15.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Builder.RouterMiddleware.<Invoke>d__4.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.<Invoke>d__6.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore.MigrationsEndPointMiddleware.<Invoke>d__4.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore.DatabaseErrorPageMiddleware.<Invoke>d__6.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore.DatabaseErrorPageMiddleware.<Invoke>d__6.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.<Invoke>d__7.MoveNext()','127.0.0.1','/Projects','https://localhost:44313/home','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36','2020-12-08 11:53:56.9220524',1,'2020-12-08 11:53:56.9220524',1)
INSERT INTO [Error] ([Id],[UserId],[ErrorDate],[Message],[Exception],[IpAddress],[Url],[HttpReferer],[UserAgent],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(3,1,'2020-12-08 17:16:23.8461392','Source sequence doesn''t contain any elements.','System.InvalidOperationException: Source sequence doesn''t contain any elements.     at System.Linq.AsyncEnumerable.<Single_>d__380`1.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Query.Internal.AsyncLinqOperatorProvider.TaskResultAsyncEnumerable`1.Enumerator.<MoveNext>d__3.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.ConfiguredTaskAwaitable`1.ConfiguredTaskAwaiter.GetResult()     at System.Linq.AsyncEnumerable.SelectEnumerableAsyncIterator`2.<MoveNextCore>d__7.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.ConfiguredTaskAwaitable`1.ConfiguredTaskAwaiter.GetResult()     at System.Linq.AsyncEnumerable.AsyncIterator`1.<MoveNext>d__10.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Query.Internal.AsyncLinqOperatorProvider.ExceptionInterceptor`1.EnumeratorExceptionInterceptor.<MoveNext>d__5.MoveNext()','127.0.0.1','/Projects/363',NULL,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36','2020-12-08 17:16:23.8461392',1,'2020-12-08 17:16:23.8461392',1)
INSERT INTO [Error] ([Id],[UserId],[ErrorDate],[Message],[Exception],[IpAddress],[Url],[HttpReferer],[UserAgent],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(4,1,'2020-12-08 19:16:56.1109242','Source sequence doesn''t contain any elements.','System.InvalidOperationException: Source sequence doesn''t contain any elements.     at System.Linq.AsyncEnumerable.<Single_>d__380`1.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Query.Internal.AsyncLinqOperatorProvider.TaskResultAsyncEnumerable`1.Enumerator.<MoveNext>d__3.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.ConfiguredTaskAwaitable`1.ConfiguredTaskAwaiter.GetResult()     at System.Linq.AsyncEnumerable.SelectEnumerableAsyncIterator`2.<MoveNextCore>d__7.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.ConfiguredTaskAwaitable`1.ConfiguredTaskAwaiter.GetResult()     at System.Linq.AsyncEnumerable.AsyncIterator`1.<MoveNext>d__10.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Query.Internal.AsyncLinqOperatorProvider.ExceptionInterceptor`1.EnumeratorExceptionInterceptor.<MoveNext>d__5.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Query.Internal.QueryCompiler.<ExecuteSingletonAsyncQuery>d__23`1.MoveNext()','127.0.0.1','/Projects/363',NULL,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36','2020-12-08 19:16:56.1109242',1,'2020-12-08 19:16:56.1109242',1)
INSERT INTO [Error] ([Id],[UserId],[ErrorDate],[Message],[Exception],[IpAddress],[Url],[HttpReferer],[UserAgent],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(5,1,'2020-12-08 17:16:58.5030359','Source sequence doesn''t contain any elements.','System.InvalidOperationException: Source sequence doesn''t contain any elements.     at System.Linq.AsyncEnumerable.<Single_>d__380`1.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Query.Internal.AsyncLinqOperatorProvider.TaskResultAsyncEnumerable`1.Enumerator.<MoveNext>d__3.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.ConfiguredTaskAwaitable`1.ConfiguredTaskAwaiter.GetResult()     at System.Linq.AsyncEnumerable.SelectEnumerableAsyncIterator`2.<MoveNextCore>d__7.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.ConfiguredTaskAwaitable`1.ConfiguredTaskAwaiter.GetResult()     at System.Linq.AsyncEnumerable.AsyncIterator`1.<MoveNext>d__10.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Query.Internal.AsyncLinqOperatorProvider.ExceptionInterceptor`1.EnumeratorExceptionInterceptor.<MoveNext>d__5.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Query.Internal.QueryCompiler.<ExecuteSingletonAsyncQuery>d__23`1.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()     at Jello.Starter.Core.Application.Projects.ProjectsController.<SingleProjectAsync>d__19.MoveNext() in C:\Users\John Smith\OneDrive\Dev\Jello.NET\Application\D .NET\_P\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Application\Projects\ProjectsController.cs:line 312  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()     at Jello.Starter.Core.Application.Projects.ProjectsController.<Prepare>d__11.MoveNext() in C:\Users\John Smith\OneDrive\Dev\Jello.NET\Application\D .NET\_P\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Application\Projects\ProjectsController.cs:line 209  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Jello.Starter.Core.Application.Projects.ProjectsController.<Detail>d__2.MoveNext() in C:\Users\John Smith\OneDrive\Dev\Jello.NET\Application\D .NET\_P\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Application\Projects\ProjectsController.cs:line 34  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at lambda_method(Closure , Issue )     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeActionMethodAsync>d__12.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeNextActionFilterAsync>d__10.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Issue& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeInnerFilterAsync>d__14.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeNextExceptionFilterAsync>d__23.MoveNext()','127.0.0.1','/Projects/363',NULL,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36','2020-12-08 17:16:58.5030359',1,'2020-12-08 17:16:58.5030359',1)
INSERT INTO [Error] ([Id],[UserId],[ErrorDate],[Message],[Exception],[IpAddress],[Url],[HttpReferer],[UserAgent],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(6,1,'2020-12-08 22:16:59.8173449','Source sequence doesn''t contain any elements.','System.InvalidOperationException: Source sequence doesn''t contain any elements.     at System.Linq.AsyncEnumerable.<Single_>d__380`1.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Query.Internal.AsyncLinqOperatorProvider.TaskResultAsyncEnumerable`1.Enumerator.<MoveNext>d__3.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.ConfiguredTaskAwaitable`1.ConfiguredTaskAwaiter.GetResult()     at System.Linq.AsyncEnumerable.SelectEnumerableAsyncIterator`2.<MoveNextCore>d__7.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.ConfiguredTaskAwaitable`1.ConfiguredTaskAwaiter.GetResult()     at System.Linq.AsyncEnumerable.AsyncIterator`1.<MoveNext>d__10.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Query.Internal.AsyncLinqOperatorProvider.ExceptionInterceptor`1.EnumeratorExceptionInterceptor.<MoveNext>d__5.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Query.Internal.QueryCompiler.<ExecuteSingletonAsyncQuery>d__23`1.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()     at Jello.Starter.Core.Application.Projects.ProjectsController.<SingleProjectAsync>d__19.MoveNext() in C:\Users\John Smith\OneDrive\Dev\Jello.NET\Application\D .NET\_P\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Application\Projects\ProjectsController.cs:line 312  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()     at Jello.Starter.Core.Application.Projects.ProjectsController.<Prepare>d__11.MoveNext() in C:\Users\John Smith\OneDrive\Dev\Jello.NET\Application\D .NET\_P\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Application\Projects\ProjectsController.cs:line 209  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Jello.Starter.Core.Application.Projects.ProjectsController.<Detail>d__2.MoveNext() in C:\Users\John Smith\OneDrive\Dev\Jello.NET\Application\D .NET\_P\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Application\Projects\ProjectsController.cs:line 34  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at lambda_method(Closure , Issue )     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeActionMethodAsync>d__12.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeNextActionFilterAsync>d__10.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Issue& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeInnerFilterAsync>d__14.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeNextExceptionFilterAsync>d__23.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ExceptionContext context)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Issue& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeNextResourceFilter>d__22.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Issue& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeFilterPipelineAsync>d__17.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeAsync>d__15.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Builder.RouterMiddleware.<Invoke>d__4.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.<Invoke>d__6.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore.MigrationsEndPointMiddleware.<Invoke>d__4.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore.DatabaseErrorPageMiddleware.<Invoke>d__6.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore.DatabaseErrorPageMiddleware.<Invoke>d__6.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.<Invoke>d__7.MoveNext()','127.0.0.1','/Projects/363',NULL,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36','2020-12-08 22:16:59.8173449',1,'2020-12-08 22:16:59.8173449',1)
INSERT INTO [Error] ([Id],[UserId],[ErrorDate],[Message],[Exception],[IpAddress],[Url],[HttpReferer],[UserAgent],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(7,1,'2020-12-08 23:22:22.9660566','Issue reference not set to an instance of an Issue.','System.NullReferenceException: Issue reference not set to an instance of an Issue.     at Jello.Starter.Core.Application.Projects.ProjectsController.Map(Project Project, Detail model) in C:\Users\John Smith\OneDrive\Dev\Jello.NET\Application\D .NET\_P\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Application\Projects\ProjectsController.cs:line 360     at Jello.Starter.Core.Application.Projects.ProjectsController.<Prepare>d__11.MoveNext() in C:\Users\John Smith\OneDrive\Dev\Jello.NET\Application\D .NET\_P\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Application\Projects\ProjectsController.cs:line 210  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Jello.Starter.Core.Application.Projects.ProjectsController.<Detail>d__2.MoveNext() in C:\Users\John Smith\OneDrive\Dev\Jello.NET\Application\D .NET\_P\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Application\Projects\ProjectsController.cs:line 34  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at lambda_method(Closure , Issue )     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeActionMethodAsync>d__12.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeNextActionFilterAsync>d__10.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Issue& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeInnerFilterAsync>d__14.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeNextExceptionFilterAsync>d__23.MoveNext()','127.0.0.1','/Projects/362',NULL,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36','2020-12-08 23:22:22.9660566',1,'2020-12-08 23:22:22.9660566',1)
INSERT INTO [Error] ([Id],[UserId],[ErrorDate],[Message],[Exception],[IpAddress],[Url],[HttpReferer],[UserAgent],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(8,1,'2020-12-08 23:28:23.2240665','Issue reference not set to an instance of an Issue.','System.NullReferenceException: Issue reference not set to an instance of an Issue.     at Jello.Starter.Core.Application.Projects.ProjectsController.Map(Project Project, Detail model) in C:\Users\John Smith\OneDrive\Dev\Jello.NET\Application\D .NET\_P\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Application\Projects\ProjectsController.cs:line 360     at Jello.Starter.Core.Application.Projects.ProjectsController.<Prepare>d__11.MoveNext() in C:\Users\John Smith\OneDrive\Dev\Jello.NET\Application\D .NET\_P\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Application\Projects\ProjectsController.cs:line 210  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Jello.Starter.Core.Application.Projects.ProjectsController.<Detail>d__2.MoveNext() in C:\Users\John Smith\OneDrive\Dev\Jello.NET\Application\D .NET\_P\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Application\Projects\ProjectsController.cs:line 34  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at lambda_method(Closure , Issue )     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeActionMethodAsync>d__12.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeNextActionFilterAsync>d__10.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Issue& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeInnerFilterAsync>d__14.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeNextExceptionFilterAsync>d__23.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ExceptionContext context)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Issue& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeNextResourceFilter>d__22.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Issue& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeFilterPipelineAsync>d__17.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeAsync>d__15.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Builder.RouterMiddleware.<Invoke>d__4.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.<Invoke>d__6.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore.MigrationsEndPointMiddleware.<Invoke>d__4.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore.DatabaseErrorPageMiddleware.<Invoke>d__6.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore.DatabaseErrorPageMiddleware.<Invoke>d__6.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.<Invoke>d__7.MoveNext()','127.0.0.1','/Projects/362',NULL,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36','2020-12-08 23:28:23.2240665',1,'2020-12-08 23:28:23.2240665',1)
INSERT INTO [Error] ([Id],[UserId],[ErrorDate],[Message],[Exception],[IpAddress],[Url],[HttpReferer],[UserAgent],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(9,1,'2020-12-15 00:40:29.4363447','The partial view ''_Project'' was not found. The following locations were searched:  Application\Projects\_Project.cshtml  Application\_Main\_Project.cshtml  Application\_Related\_Project.cshtml  Application\_Project.cshtml','System.InvalidOperationException: The partial view ''_Project'' was not found. The following locations were searched:  Application\Projects\_Project.cshtml  Application\_Main\_Project.cshtml  Application\_Related\_Project.cshtml  Application\_Project.cshtml     at Microsoft.AspNetCore.Mvc.ViewFeatures.HtmlHelper.<RenderPartialCoreAsync>d__60.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.ViewFeatures.HtmlHelper.<PartialAsync>d__57.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()     at AspNetCore._Application_Projects_Detail_cshtml.<ExecuteAsync>d__13.MoveNext() in C:\Users\Tony Lin\OneDrive\Dev\Jello .NET\Application\D .NET\_P\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Application\Projects\Detail.cshtml:line 34  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Razor.RazorView.<RenderPageCoreAsync>d__16.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Razor.RazorView.<RenderPageAsync>d__15.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Razor.RazorView.<RenderAsync>d__14.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.<ExecuteAsync>d__22.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.<ExecuteAsync>d__21.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.ViewResult.<ExecuteResultAsync>d__26.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeResultAsync>d__19.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeNextResultFilterAsync>d__24.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResultExecutedContext context)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeNextResourceFilter>d__22.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeFilterPipelineAsync>d__17.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeAsync>d__15.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Builder.RouterMiddleware.<Invoke>d__4.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.<Invoke>d__6.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore.MigrationsEndPointMiddleware.<Invoke>d__4.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore.DatabaseErrorPageMiddleware.<Invoke>d__6.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore.DatabaseErrorPageMiddleware.<Invoke>d__6.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.<Invoke>d__7.MoveNext()','127.0.0.1','/Projects/3','https://localhost:44313/home','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2020-12-15 00:40:29.4363447',1,'2020-12-15 00:40:29.4363447',1)
INSERT INTO [Error] ([Id],[UserId],[ErrorDate],[Message],[Exception],[IpAddress],[Url],[HttpReferer],[UserAgent],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(10,1,'2020-12-15 00:40:33.6198191','The partial view ''_Project'' was not found. The following locations were searched:  Application\Issues\_Project.cshtml  Application\_Main\_Project.cshtml  Application\_Related\_Project.cshtml  Application\_Project.cshtml','System.InvalidOperationException: The partial view ''_Project'' was not found. The following locations were searched:  Application\Issues\_Project.cshtml  Application\_Main\_Project.cshtml  Application\_Related\_Project.cshtml  Application\_Project.cshtml     at Microsoft.AspNetCore.Mvc.ViewFeatures.HtmlHelper.<RenderPartialCoreAsync>d__60.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.ViewFeatures.HtmlHelper.<PartialAsync>d__57.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()     at AspNetCore._Application_Issues_Detail_cshtml.<ExecuteAsync>d__13.MoveNext() in C:\Users\Tony Lin\OneDrive\Dev\Jello .NET\Application\D .NET\_P\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Application\Issues\Detail.cshtml:line 35  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Razor.RazorView.<RenderPageCoreAsync>d__16.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Razor.RazorView.<RenderPageAsync>d__15.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Razor.RazorView.<RenderAsync>d__14.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.<ExecuteAsync>d__22.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.<ExecuteAsync>d__21.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.ViewResult.<ExecuteResultAsync>d__26.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeResultAsync>d__19.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeNextResultFilterAsync>d__24.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResultExecutedContext context)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeNextResourceFilter>d__22.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeFilterPipelineAsync>d__17.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeAsync>d__15.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Builder.RouterMiddleware.<Invoke>d__4.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.<Invoke>d__6.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore.MigrationsEndPointMiddleware.<Invoke>d__4.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore.DatabaseErrorPageMiddleware.<Invoke>d__6.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore.DatabaseErrorPageMiddleware.<Invoke>d__6.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.<Invoke>d__7.MoveNext()','127.0.0.1','/Issues/9','https://localhost:44313/home','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2020-12-15 00:40:33.6198191',1,'2020-12-15 00:40:33.6198191',1)
INSERT INTO [Error] ([Id],[UserId],[ErrorDate],[Message],[Exception],[IpAddress],[Url],[HttpReferer],[UserAgent],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(11,1,'2020-12-15 20:59:08.8075631','Source sequence doesn''t contain any elements.','System.InvalidOperationException: Source sequence doesn''t contain any elements.     at System.Linq.AsyncEnumerable.<Single_>d__380`1.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Query.Internal.AsyncLinqOperatorProvider.TaskResultAsyncEnumerable`1.Enumerator.<MoveNext>d__3.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.ConfiguredTaskAwaitable`1.ConfiguredTaskAwaiter.GetResult()     at System.Linq.AsyncEnumerable.SelectEnumerableAsyncIterator`2.<MoveNextCore>d__7.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.ConfiguredTaskAwaitable`1.ConfiguredTaskAwaiter.GetResult()     at System.Linq.AsyncEnumerable.AsyncIterator`1.<MoveNext>d__10.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Query.Internal.AsyncLinqOperatorProvider.ExceptionInterceptor`1.EnumeratorExceptionInterceptor.<MoveNext>d__5.MoveNext()','127.0.0.1','/people/export','https://localhost:44313/people?Page=1&Sort=Alias&AdvancedFilter=False&Filter=0&Name=&Department=&Email=&Role=','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2020-12-15 20:59:08.8075631',1,'2020-12-15 20:59:08.8075631',1)
INSERT INTO [Error] ([Id],[UserId],[ErrorDate],[Message],[Exception],[IpAddress],[Url],[HttpReferer],[UserAgent],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(12,1,'2020-12-15 20:59:08.9892751','Source sequence doesn''t contain any elements.','System.InvalidOperationException: Source sequence doesn''t contain any elements.     at System.Linq.AsyncEnumerable.<Single_>d__380`1.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Query.Internal.AsyncLinqOperatorProvider.TaskResultAsyncEnumerable`1.Enumerator.<MoveNext>d__3.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.ConfiguredTaskAwaitable`1.ConfiguredTaskAwaiter.GetResult()     at System.Linq.AsyncEnumerable.SelectEnumerableAsyncIterator`2.<MoveNextCore>d__7.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.ConfiguredTaskAwaitable`1.ConfiguredTaskAwaiter.GetResult()     at System.Linq.AsyncEnumerable.AsyncIterator`1.<MoveNext>d__10.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Query.Internal.AsyncLinqOperatorProvider.ExceptionInterceptor`1.EnumeratorExceptionInterceptor.<MoveNext>d__5.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Query.Internal.QueryCompiler.<ExecuteSingletonAsyncQuery>d__23`1.MoveNext()','127.0.0.1','/people/export','https://localhost:44313/people?Page=1&Sort=Alias&AdvancedFilter=False&Filter=0&Name=&Department=&Email=&Role=','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2020-12-15 20:59:08.9892751',1,'2020-12-15 20:59:08.9892751',1)
INSERT INTO [Error] ([Id],[UserId],[ErrorDate],[Message],[Exception],[IpAddress],[Url],[HttpReferer],[UserAgent],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(13,1,'2020-12-15 20:59:09.1877427','Source sequence doesn''t contain any elements.','System.InvalidOperationException: Source sequence doesn''t contain any elements.     at System.Linq.AsyncEnumerable.<Single_>d__380`1.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Query.Internal.AsyncLinqOperatorProvider.TaskResultAsyncEnumerable`1.Enumerator.<MoveNext>d__3.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.ConfiguredTaskAwaitable`1.ConfiguredTaskAwaiter.GetResult()     at System.Linq.AsyncEnumerable.SelectEnumerableAsyncIterator`2.<MoveNextCore>d__7.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.ConfiguredTaskAwaitable`1.ConfiguredTaskAwaiter.GetResult()     at System.Linq.AsyncEnumerable.AsyncIterator`1.<MoveNext>d__10.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Query.Internal.AsyncLinqOperatorProvider.ExceptionInterceptor`1.EnumeratorExceptionInterceptor.<MoveNext>d__5.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Query.Internal.QueryCompiler.<ExecuteSingletonAsyncQuery>d__23`1.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()     at Jello.Starter.Core.Application.People.PeopleController.<SingleUserAsync>d__5.MoveNext() in C:\Users\Tony Lin\OneDrive\Dev\Jello .NET\Application\D .NET\_P\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Application\People\PeopleController.cs:line 122  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()     at Jello.Starter.Core.Application.People.PeopleController.<Prepare>d__4.MoveNext() in C:\Users\Tony Lin\OneDrive\Dev\Jello .NET\Application\D .NET\_P\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Application\People\PeopleController.cs:line 112  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Jello.Starter.Core.Application.People.PeopleController.<Detail>d__2.MoveNext() in C:\Users\Tony Lin\OneDrive\Dev\Jello .NET\Application\D .NET\_P\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Application\People\PeopleController.cs:line 31  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at lambda_method(Closure , Object )     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeActionMethodAsync>d__12.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeNextActionFilterAsync>d__10.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeInnerFilterAsync>d__14.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeNextExceptionFilterAsync>d__23.MoveNext()','127.0.0.1','/people/export','https://localhost:44313/people?Page=1&Sort=Alias&AdvancedFilter=False&Filter=0&Name=&Department=&Email=&Role=','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2020-12-15 20:59:09.1877427',1,'2020-12-15 20:59:09.1877427',1)
INSERT INTO [Error] ([Id],[UserId],[ErrorDate],[Message],[Exception],[IpAddress],[Url],[HttpReferer],[UserAgent],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(14,1,'2020-12-15 20:59:09.3357766','Source sequence doesn''t contain any elements.','System.InvalidOperationException: Source sequence doesn''t contain any elements.     at System.Linq.AsyncEnumerable.<Single_>d__380`1.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Query.Internal.AsyncLinqOperatorProvider.TaskResultAsyncEnumerable`1.Enumerator.<MoveNext>d__3.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.ConfiguredTaskAwaitable`1.ConfiguredTaskAwaiter.GetResult()     at System.Linq.AsyncEnumerable.SelectEnumerableAsyncIterator`2.<MoveNextCore>d__7.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.ConfiguredTaskAwaitable`1.ConfiguredTaskAwaiter.GetResult()     at System.Linq.AsyncEnumerable.AsyncIterator`1.<MoveNext>d__10.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Query.Internal.AsyncLinqOperatorProvider.ExceptionInterceptor`1.EnumeratorExceptionInterceptor.<MoveNext>d__5.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Query.Internal.QueryCompiler.<ExecuteSingletonAsyncQuery>d__23`1.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()     at Jello.Starter.Core.Application.People.PeopleController.<SingleUserAsync>d__5.MoveNext() in C:\Users\Tony Lin\OneDrive\Dev\Jello .NET\Application\D .NET\_P\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Application\People\PeopleController.cs:line 122  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()     at Jello.Starter.Core.Application.People.PeopleController.<Prepare>d__4.MoveNext() in C:\Users\Tony Lin\OneDrive\Dev\Jello .NET\Application\D .NET\_P\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Application\People\PeopleController.cs:line 112  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Jello.Starter.Core.Application.People.PeopleController.<Detail>d__2.MoveNext() in C:\Users\Tony Lin\OneDrive\Dev\Jello .NET\Application\D .NET\_P\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Application\People\PeopleController.cs:line 31  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at lambda_method(Closure , Object )     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeActionMethodAsync>d__12.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeNextActionFilterAsync>d__10.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeInnerFilterAsync>d__14.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeNextExceptionFilterAsync>d__23.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ExceptionContext context)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeNextResourceFilter>d__22.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeFilterPipelineAsync>d__17.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeAsync>d__15.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Builder.RouterMiddleware.<Invoke>d__4.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.<Invoke>d__6.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore.MigrationsEndPointMiddleware.<Invoke>d__4.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore.DatabaseErrorPageMiddleware.<Invoke>d__6.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore.DatabaseErrorPageMiddleware.<Invoke>d__6.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.<Invoke>d__7.MoveNext()','127.0.0.1','/people/export','https://localhost:44313/people?Page=1&Sort=Alias&AdvancedFilter=False&Filter=0&Name=&Department=&Email=&Role=','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2020-12-15 20:59:09.3357766',1,'2020-12-15 20:59:09.3357766',1)
INSERT INTO [Error] ([Id],[UserId],[ErrorDate],[Message],[Exception],[IpAddress],[Url],[HttpReferer],[UserAgent],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(15,NULL,'2020-12-17 19:42:00.9608366','The layout view ''_xLayout'' could not be located. The following locations were searched:  Application\Auth\_xLayout.cshtml  Application\_Main\_xLayout.cshtml  Application\_Related\_xLayout.cshtml  Application\_xLayout.cshtml','System.InvalidOperationException: The layout view ''_xLayout'' could not be located. The following locations were searched:  Application\Auth\_xLayout.cshtml  Application\_Main\_xLayout.cshtml  Application\_Related\_xLayout.cshtml  Application\_xLayout.cshtml     at Microsoft.AspNetCore.Mvc.Razor.RazorView.GetLayoutPage(ViewContext context, String executingFilePath, String layoutPath)     at Microsoft.AspNetCore.Mvc.Razor.RazorView.<RenderLayoutAsync>d__18.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Razor.RazorView.<RenderAsync>d__14.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.<ExecuteAsync>d__22.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.<ExecuteAsync>d__21.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.ViewResult.<ExecuteResultAsync>d__26.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeResultAsync>d__19.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeNextResultFilterAsync>d__24.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResultExecutedContext context)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeNextResourceFilter>d__22.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeFilterPipelineAsync>d__17.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeAsync>d__15.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Builder.RouterMiddleware.<Invoke>d__4.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.<Invoke>d__6.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore.MigrationsEndPointMiddleware.<Invoke>d__4.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore.DatabaseErrorPageMiddleware.<Invoke>d__6.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore.DatabaseErrorPageMiddleware.<Invoke>d__6.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.<Invoke>d__7.MoveNext()','127.0.0.1','/login','https://localhost:44313/forgot','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2020-12-17 19:42:00.9608366',NULL,'2020-12-17 19:42:00.9608366',NULL)
INSERT INTO [Error] ([Id],[UserId],[ErrorDate],[Message],[Exception],[IpAddress],[Url],[HttpReferer],[UserAgent],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(16,1,'2020-12-29 11:36:01.0668754','Sequence contains more than one element','System.InvalidOperationException: Sequence contains more than one element     at System.Linq.Enumerable.SingleOrDefault[TSource](IEnumerable`1 source)     at lambda_method(Closure , QueryContext )     at Microsoft.EntityFrameworkCore.Query.Internal.QueryCompiler.<>c__DisplayClass17_1`1.<CompileQueryCore>b__0(QueryContext qc)','127.0.0.1','/Projects/35','https://localhost:44313/Projects','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2020-12-29 11:36:01.0668754',1,'2020-12-29 11:36:01.0668754',1)
INSERT INTO [Error] ([Id],[UserId],[ErrorDate],[Message],[Exception],[IpAddress],[Url],[HttpReferer],[UserAgent],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(17,1,'2020-12-29 11:36:01.5355300','Sequence contains more than one element','System.InvalidOperationException: Sequence contains more than one element     at System.Linq.Enumerable.SingleOrDefault[TSource](IEnumerable`1 source)     at lambda_method(Closure , QueryContext )     at Microsoft.EntityFrameworkCore.Query.Internal.QueryCompiler.<>c__DisplayClass17_1`1.<CompileQueryCore>b__0(QueryContext qc)     at System.Linq.Queryable.SingleOrDefault[TSource](IQueryable`1 source, Expression`1 predicate)     at Jello.Starter.Core.BaseController.<LogViewed>d__25.MoveNext() in C:\Users\Tony Lin\OneDrive\Dev\Jello .NET\A\D\A Kit\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Infrastructure\BaseController.cs:line 65  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Jello.Starter.Core.Application.Projects.ProjectsController.<Prepare>d__11.MoveNext() in C:\Users\Tony Lin\OneDrive\Dev\Jello .NET\A\D\A Kit\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Application\Projects\ProjectsController.cs:line 218  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Jello.Starter.Core.Application.Projects.ProjectsController.<Detail>d__2.MoveNext() in C:\Users\Tony Lin\OneDrive\Dev\Jello .NET\A\D\A Kit\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Application\Projects\ProjectsController.cs:line 34  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at lambda_method(Closure , Object )     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeActionMethodAsync>d__12.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeNextActionFilterAsync>d__10.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeInnerFilterAsync>d__14.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeNextExceptionFilterAsync>d__23.MoveNext()','127.0.0.1','/Projects/35','https://localhost:44313/Projects','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2020-12-29 11:36:01.5355300',1,'2020-12-29 11:36:01.5355300',1)
INSERT INTO [Error] ([Id],[UserId],[ErrorDate],[Message],[Exception],[IpAddress],[Url],[HttpReferer],[UserAgent],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(18,1,'2020-12-29 11:36:01.7861818','Sequence contains more than one element','System.InvalidOperationException: Sequence contains more than one element     at System.Linq.Enumerable.SingleOrDefault[TSource](IEnumerable`1 source)     at lambda_method(Closure , QueryContext )     at Microsoft.EntityFrameworkCore.Query.Internal.QueryCompiler.<>c__DisplayClass17_1`1.<CompileQueryCore>b__0(QueryContext qc)     at System.Linq.Queryable.SingleOrDefault[TSource](IQueryable`1 source, Expression`1 predicate)     at Jello.Starter.Core.BaseController.<LogViewed>d__25.MoveNext() in C:\Users\Tony Lin\OneDrive\Dev\Jello .NET\A\D\A Kit\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Infrastructure\BaseController.cs:line 65  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Jello.Starter.Core.Application.Projects.ProjectsController.<Prepare>d__11.MoveNext() in C:\Users\Tony Lin\OneDrive\Dev\Jello .NET\A\D\A Kit\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Application\Projects\ProjectsController.cs:line 218  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Jello.Starter.Core.Application.Projects.ProjectsController.<Detail>d__2.MoveNext() in C:\Users\Tony Lin\OneDrive\Dev\Jello .NET\A\D\A Kit\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Application\Projects\ProjectsController.cs:line 34  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at lambda_method(Closure , Object )     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeActionMethodAsync>d__12.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeNextActionFilterAsync>d__10.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeInnerFilterAsync>d__14.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeNextExceptionFilterAsync>d__23.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ExceptionContext context)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeNextResourceFilter>d__22.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeFilterPipelineAsync>d__17.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeAsync>d__15.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Builder.RouterMiddleware.<Invoke>d__4.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.<Invoke>d__6.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore.MigrationsEndPointMiddleware.<Invoke>d__4.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore.DatabaseErrorPageMiddleware.<Invoke>d__6.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore.DatabaseErrorPageMiddleware.<Invoke>d__6.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.<Invoke>d__7.MoveNext()','127.0.0.1','/Projects/35','https://localhost:44313/Projects','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2020-12-29 11:36:01.7861818',1,'2020-12-29 11:36:01.7861818',1)
INSERT INTO [Error] ([Id],[UserId],[ErrorDate],[Message],[Exception],[IpAddress],[Url],[HttpReferer],[UserAgent],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(19,1,'2020-12-30 16:04:25.2130190','The DELETE statement conflicted with the REFERENCE constraint "FK_Issue_REFERENCE_Project". The conflict occurred in database "StarterCore1", table "dbo.Issue", column ''ProjectId''.  The statement has been terminated.','System.Data.SqlClient.SqlException (0x80131904): The DELETE statement conflicted with the REFERENCE constraint "FK_Issue_REFERENCE_Project". The conflict occurred in database "StarterCore1", table "dbo.Issue", column ''ProjectId''.  The statement has been terminated.     at System.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__108_0(Task`1 result)     at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()     at System.Threading.ExecutionContext.Run(ExecutionContext executionContext, ContextCallback callback, Object state)     at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot)  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Storage.Internal.RelationalCommand.<ExecuteAsync>d__17.MoveNext()  ClientConnectionId:6d907be5-ce69-455e-954e-d4b28b2b2447  Error Number:547,State:0,Class:16','127.0.0.1','/projects/delete','https://localhost:44313/projects?Page=1&Sort=-TotalIssues&AdvancedFilter=False&Filter=0&Name=&IssueIdInput=&IssueId=&IssueIdType=&ProjectIdInput=&ProjectId=&ProjectIdType=&OwnerIdInput=&OwnerId=&OwnerIdType=','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2020-12-30 16:04:25.2130190',1,'2020-12-30 16:04:25.2130190',1)
INSERT INTO [Error] ([Id],[UserId],[ErrorDate],[Message],[Exception],[IpAddress],[Url],[HttpReferer],[UserAgent],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(20,1,'2020-12-30 16:04:25.3954759','An error occurred while updating the entries. See the inner exception for details.','Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.SqlClient.SqlException: The DELETE statement conflicted with the REFERENCE constraint "FK_Issue_REFERENCE_Project". The conflict occurred in database "StarterCore1", table "dbo.Issue", column ''ProjectId''.  The statement has been terminated.     at System.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__108_0(Task`1 result)     at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()     at System.Threading.ExecutionContext.Run(ExecutionContext executionContext, ContextCallback callback, Object state)     at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot)  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Storage.Internal.RelationalCommand.<ExecuteAsync>d__17.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.<ExecuteAsync>d__32.MoveNext()     --- End of inner exception stack trace ---     at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.<ExecuteAsync>d__32.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.<ExecuteAsync>d__10.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Storage.Internal.SqlServerExecutionStrategy.<ExecuteAsync>d__7`2.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.<SaveChangesAsync>d__61.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.<SaveChangesAsync>d__59.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.DbContext.<SaveChangesAsync>d__48.MoveNext()','127.0.0.1','/projects/delete','https://localhost:44313/projects?Page=1&Sort=-TotalIssues&AdvancedFilter=False&Filter=0&Name=&IssueIdInput=&IssueId=&IssueIdType=&ProjectIdInput=&ProjectId=&ProjectIdType=&OwnerIdInput=&OwnerId=&OwnerIdType=','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2020-12-30 16:04:25.3954759',1,'2020-12-30 16:04:25.3954759',1)
INSERT INTO [Error] ([Id],[UserId],[ErrorDate],[Message],[Exception],[IpAddress],[Url],[HttpReferer],[UserAgent],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(21,1,'2020-12-30 16:04:25.5940287','An error occurred while updating the entries. See the inner exception for details.','Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.SqlClient.SqlException: The DELETE statement conflicted with the REFERENCE constraint "FK_Issue_REFERENCE_Project". The conflict occurred in database "StarterCore1", table "dbo.Issue", column ''ProjectId''.  The statement has been terminated.     at System.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__108_0(Task`1 result)     at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()     at System.Threading.ExecutionContext.Run(ExecutionContext executionContext, ContextCallback callback, Object state)     at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot)  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Storage.Internal.RelationalCommand.<ExecuteAsync>d__17.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.<ExecuteAsync>d__32.MoveNext()     --- End of inner exception stack trace ---     at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.<ExecuteAsync>d__32.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.<ExecuteAsync>d__10.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Storage.Internal.SqlServerExecutionStrategy.<ExecuteAsync>d__7`2.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.<SaveChangesAsync>d__61.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.<SaveChangesAsync>d__59.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.DbContext.<SaveChangesAsync>d__48.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()     at Jello.Starter.Core.Application.projects.projectsController.<Process>d__14.MoveNext() in C:\Users\Tony Lin\OneDrive\Dev\Jello .NET\A\D\A Kit\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Application\projects\projectsController.cs:line 255  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Jello.Starter.Core.Application.projects.projectsController.<Delete>d__5.MoveNext() in C:\Users\Tony Lin\OneDrive\Dev\Jello .NET\A\D\A Kit\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Application\projects\projectsController.cs:line 64  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeActionMethodAsync>d__12.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeNextActionFilterAsync>d__10.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeInnerFilterAsync>d__14.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeNextExceptionFilterAsync>d__23.MoveNext()','127.0.0.1','/projects/delete','https://localhost:44313/projects?Page=1&Sort=-TotalIssues&AdvancedFilter=False&Filter=0&Name=&IssueIdInput=&IssueId=&IssueIdType=&ProjectIdInput=&ProjectId=&ProjectIdType=&OwnerIdInput=&OwnerId=&OwnerIdType=','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2020-12-30 16:04:25.5940287',1,'2020-12-30 16:04:25.5940287',1)
INSERT INTO [Error] ([Id],[UserId],[ErrorDate],[Message],[Exception],[IpAddress],[Url],[HttpReferer],[UserAgent],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(22,1,'2020-12-30 16:04:25.7684141','An error occurred while updating the entries. See the inner exception for details.','Microsoft.EntityFrameworkCore.DbUpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.SqlClient.SqlException: The DELETE statement conflicted with the REFERENCE constraint "FK_Issue_REFERENCE_Project". The conflict occurred in database "StarterCore1", table "dbo.Issue", column ''ProjectId''.  The statement has been terminated.     at System.Data.SqlClient.SqlCommand.<>c.<ExecuteDbDataReaderAsync>b__108_0(Task`1 result)     at System.Threading.Tasks.ContinuationResultTaskFromResultTask`2.InnerInvoke()     at System.Threading.ExecutionContext.Run(ExecutionContext executionContext, ContextCallback callback, Object state)     at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot)  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Storage.Internal.RelationalCommand.<ExecuteAsync>d__17.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.<ExecuteAsync>d__32.MoveNext()     --- End of inner exception stack trace ---     at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.<ExecuteAsync>d__32.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.<ExecuteAsync>d__10.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.Storage.Internal.SqlServerExecutionStrategy.<ExecuteAsync>d__7`2.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.<SaveChangesAsync>d__61.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.<SaveChangesAsync>d__59.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.EntityFrameworkCore.DbContext.<SaveChangesAsync>d__48.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()     at Jello.Starter.Core.Application.projects.projectsController.<Process>d__14.MoveNext() in C:\Users\Tony Lin\OneDrive\Dev\Jello .NET\A\D\A Kit\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Application\projects\projectsController.cs:line 255  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Jello.Starter.Core.Application.projects.projectsController.<Delete>d__5.MoveNext() in C:\Users\Tony Lin\OneDrive\Dev\Jello .NET\A\D\A Kit\.NET Core\Jello.Starter.Core\Jello.Starter.Core\Application\projects\projectsController.cs:line 64  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeActionMethodAsync>d__12.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeNextActionFilterAsync>d__10.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Rethrow(ActionExecutedContext context)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ControllerActionInvoker.<InvokeInnerFilterAsync>d__14.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeNextExceptionFilterAsync>d__23.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ExceptionContext context)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeNextResourceFilter>d__22.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeFilterPipelineAsync>d__17.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeAsync>d__15.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Builder.RouterMiddleware.<Invoke>d__4.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.<Invoke>d__6.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore.MigrationsEndPointMiddleware.<Invoke>d__4.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore.DatabaseErrorPageMiddleware.<Invoke>d__6.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore.DatabaseErrorPageMiddleware.<Invoke>d__6.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.<Invoke>d__7.MoveNext()','127.0.0.1','/projects/delete','https://localhost:44313/projects?Page=1&Sort=-TotalIssues&AdvancedFilter=False&Filter=0&Name=&IssueIdInput=&IssueId=&IssueIdType=&ProjectIdInput=&ProjectId=&ProjectIdType=&OwnerIdInput=&OwnerId=&OwnerIdType=','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2020-12-30 16:04:25.7684141',1,'2020-12-30 16:04:25.7684141',1)
INSERT INTO [Error] ([Id],[UserId],[ErrorDate],[Message],[Exception],[IpAddress],[Url],[HttpReferer],[UserAgent],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(24,1,'2018-04-16 15:10:41.3232522','Could not find document','System.IO.FileNotFoundException: Could not find document  File name: ''C:\Users\Tony Lin\OneDrive\Dev\Jello .NET\Final\.NET Core 2.1\14. 33-Day Success Kit\Jello.Success.Core\Jello.Success.Core\Data\Imports\Excel-b61cdwu68l.xlsx''     at DocumentFormat.OpenXml.Packaging.OpenXmlPackage.OpenCore(String path, Boolean readWriteMode)     at DocumentFormat.OpenXml.Packaging.SpreadsheetDocument.Open(String path, Boolean isEditable, OpenSettings openSettings)     at Jello.Success.Core.Excel.ReadToGrid(String fileName) in C:\Users\Tony Lin\OneDrive\Dev\Jello .NET\Final\.NET Core 2.1\14. 33-Day Success Kit\Jello.Success.Core\Jello.Success.Core\Infrastructure\Excel\Excel.cs:line 736     at Jello.Success.Core.Excel.<ImportprojectsAsync>d__14.MoveNext() in C:\Users\Tony Lin\OneDrive\Dev\Jello .NET\Final\.NET Core 2.1\14. 33-Day Success Kit\Jello.Success.Core\Jello.Success.Core\Infrastructure\Excel\Excel.cs:line 530  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()     at Jello.Success.Core.Application.projects.projectsController.<ImportGo>d__8.MoveNext() in C:\Users\Tony Lin\OneDrive\Dev\Jello .NET\Final\.NET Core 2.1\14. 33-Day Success Kit\Jello.Success.Core\Jello.Success.Core\Application\projects\projectsController.cs:line 102','127.0.0.1','/projects/import/go','https://localhost:44371/projects/import','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36','2018-04-16 15:10:41.3232522',1,'2018-04-16 15:10:41.3232522',1)
INSERT INTO [Error] ([Id],[UserId],[ErrorDate],[Message],[Exception],[IpAddress],[Url],[HttpReferer],[UserAgent],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(25,1,'2018-04-16 15:10:46.4815716','Value cannot be null.  Parameter name: path3','System.ArgumentNullException: Value cannot be null.  Parameter name: path3     at System.IO.Path.Combine(String path1, String path2, String path3)     at Jello.Success.Core.Excel.Qualify(String fileName) in C:\Users\Tony Lin\OneDrive\Dev\Jello .NET\Final\.NET Core 2.1\14. 33-Day Success Kit\Jello.Success.Core\Jello.Success.Core\Infrastructure\Excel\Excel.cs:line 26     at Jello.Success.Core.Excel.ReadToGrid(String fileName) in C:\Users\Tony Lin\OneDrive\Dev\Jello .NET\Final\.NET Core 2.1\14. 33-Day Success Kit\Jello.Success.Core\Jello.Success.Core\Infrastructure\Excel\Excel.cs:line 734     at Jello.Success.Core.Excel.<ImportprojectsAsync>d__14.MoveNext() in C:\Users\Tony Lin\OneDrive\Dev\Jello .NET\Final\.NET Core 2.1\14. 33-Day Success Kit\Jello.Success.Core\Jello.Success.Core\Infrastructure\Excel\Excel.cs:line 530  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()     at Jello.Success.Core.Application.projects.projectsController.<ImportGo>d__8.MoveNext() in C:\Users\Tony Lin\OneDrive\Dev\Jello .NET\Final\.NET Core 2.1\14. 33-Day Success Kit\Jello.Success.Core\Jello.Success.Core\Application\projects\projectsController.cs:line 102','127.0.0.1','/projects/import/go','https://localhost:44371/projects/import/go','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36','2018-04-16 15:10:46.4815716',1,'2018-04-16 15:10:46.4815716',1)
INSERT INTO [Error] ([Id],[UserId],[ErrorDate],[Message],[Exception],[IpAddress],[Url],[HttpReferer],[UserAgent],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(26,1,'2018-04-16 15:10:52.4326915','Value cannot be null.  Parameter name: path3','System.ArgumentNullException: Value cannot be null.  Parameter name: path3     at System.IO.Path.Combine(String path1, String path2, String path3)     at Jello.Success.Core.Excel.Qualify(String fileName) in C:\Users\Tony Lin\OneDrive\Dev\Jello .NET\Final\.NET Core 2.1\14. 33-Day Success Kit\Jello.Success.Core\Jello.Success.Core\Infrastructure\Excel\Excel.cs:line 26     at Jello.Success.Core.Excel.ReadToGrid(String fileName) in C:\Users\Tony Lin\OneDrive\Dev\Jello .NET\Final\.NET Core 2.1\14. 33-Day Success Kit\Jello.Success.Core\Jello.Success.Core\Infrastructure\Excel\Excel.cs:line 734     at Jello.Success.Core.Excel.<ImportprojectsAsync>d__14.MoveNext() in C:\Users\Tony Lin\OneDrive\Dev\Jello .NET\Final\.NET Core 2.1\14. 33-Day Success Kit\Jello.Success.Core\Jello.Success.Core\Infrastructure\Excel\Excel.cs:line 530  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()     at Jello.Success.Core.Application.projects.projectsController.<ImportGo>d__8.MoveNext() in C:\Users\Tony Lin\OneDrive\Dev\Jello .NET\Final\.NET Core 2.1\14. 33-Day Success Kit\Jello.Success.Core\Jello.Success.Core\Application\projects\projectsController.cs:line 102','127.0.0.1','/projects/import/go','https://localhost:44371/projects/import/go','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36','2018-04-16 15:10:52.4326915',1,'2018-04-16 15:10:52.4326915',1)
INSERT INTO [Error] ([Id],[UserId],[ErrorDate],[Message],[Exception],[IpAddress],[Url],[HttpReferer],[UserAgent],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(27,1,'2018-04-21 21:46:28.0784577','One or more compilation failures occurred:  C:\Users\Tony Lin\OneDrive\Dev\Do .NET\F\.NET Core 2.1\14. 33-Day Success\Jello.Success.Core\Jello.Success.Core\Application\Projects\List.cshtml(99,14): Error RZ9999: The "tr" element was not closed.  All elements must be either self-closing or have a matching end tag.  C:\Users\Tony Lin\OneDrive\Dev\Do .NET\F\.NET Core 2.1\14. 33-Day Success\Jello.Success.Core\Jello.Success.Core\Application\Projects\List.cshtml(115,15): Error RZ9999: Encountered end tag "tr" with no matching start tag.  Are your start/end tags properly balanced?','Microsoft.AspNetCore.Mvc.Razor.Compilation.CompilationFailedException: One or more compilation failures occurred:  C:\Users\Tony Lin\OneDrive\Dev\Do .NET\F\.NET Core 2.1\14. 33-Day Success\Jello.Success.Core\Jello.Success.Core\Application\Projects\List.cshtml(99,14): Error RZ9999: The "tr" element was not closed.  All elements must be either self-closing or have a matching end tag.  C:\Users\Tony Lin\OneDrive\Dev\Do .NET\F\.NET Core 2.1\14. 33-Day Success\Jello.Success.Core\Jello.Success.Core\Application\Projects\List.cshtml(115,15): Error RZ9999: Encountered end tag "tr" with no matching start tag.  Are your start/end tags properly balanced?     at Microsoft.AspNetCore.Mvc.Razor.Internal.RazorViewCompiler.CompileAndEmit(String relativePath)     at Microsoft.AspNetCore.Mvc.Razor.Internal.RazorViewCompiler.CreateCacheEntry(String normalizedPath)  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Razor.Internal.DefaultRazorPageFactoryProvider.CreateFactory(String relativePath)     at Microsoft.AspNetCore.Mvc.Razor.RazorViewEngine.CreateCacheResult(HashSet`1 expirationTokens, String relativePath, Boolean isMainPage)     at Microsoft.AspNetCore.Mvc.Razor.RazorViewEngine.OnCacheMiss(ViewLocationExpanderContext expanderContext, ViewLocationCacheKey cacheKey)     at Microsoft.AspNetCore.Mvc.Razor.RazorViewEngine.LocatePageFromViewLocations(ActionContext actionContext, String pageName, Boolean isMainPage)     at Microsoft.AspNetCore.Mvc.Razor.RazorViewEngine.FindView(ActionContext context, String viewName, Boolean isMainPage)     at Microsoft.AspNetCore.Mvc.ViewEngines.CompositeViewEngine.FindView(ActionContext context, String viewName, Boolean isMainPage)     at Microsoft.AspNetCore.Mvc.ViewFeatures.Internal.ViewResultExecutor.FindView(ActionContext actionContext, ViewResult viewResult)     at Microsoft.AspNetCore.Mvc.ViewResult.<ExecuteResultAsync>d__26.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeResultAsync>d__19.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeNextResultFilterAsync>d__24.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResultExecutedContext context)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeNextResourceFilter>d__22.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Rethrow(ResourceExecutedContext context)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeFilterPipelineAsync>d__17.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Mvc.Internal.ResourceInvoker.<InvokeAsync>d__15.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Builder.RouterMiddleware.<Invoke>d__4.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.<Invoke>d__6.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore.MigrationsEndPointMiddleware.<Invoke>d__4.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore.DatabaseErrorPageMiddleware.<Invoke>d__6.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore.DatabaseErrorPageMiddleware.<Invoke>d__6.MoveNext()  --- End of stack trace from previous location where exception was thrown ---     at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()     at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)     at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.<Invoke>d__7.MoveNext()','127.0.0.1','/Projects','https://localhost:44371/projects?AdvancedFilter=True&Issueid=30','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36','2018-04-21 21:46:28.0784577',1,'2018-04-21 21:46:28.0784577',1)
SET IDENTITY_INSERT [Error] OFF

/*==============================================================*/
/* -- ASP.NET Identity 3.0 model                                */
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
INSERT INTO [AspNetUsers] ([Id],[AccessFailedCount],[ConcurrencyStamp],[Email],[EmailConfirmed],[LockoutEnabled],[LockoutEnd],[NormalizedEmail],[NormalizedUserName],[PasswordHash],[PhoneNumber],[PhoneNumberConfirmed],[SecurityStamp],[TwoFactorEnabled],[UserName])VALUES('d9aae1ff-fe0d-4bfa-8e96-b8ed5178bb7c',0,'12117619-f937-4be3-b29e-dca18c57348e','peter@company.com',0,1,NULL,'PETER@COMPANY.COM','64AEDFDC-8BAB-463F-B590-D80D5BC64820','AQAAAAEAACcQAAAAEBMqA5Nr79UAX3OYc0o5UfxAozHfARiOKNY+Y+hWEmioUK3ioaSfS5bHemKPAGESiQ==',NULL,0,'baf85e54-aee9-40ee-84e6-6c25322c5b59',0,'64aedfdc-8bab-463f-b590-d80d5bc64820')
INSERT INTO [AspNetUsers] ([Id],[AccessFailedCount],[ConcurrencyStamp],[Email],[EmailConfirmed],[LockoutEnabled],[LockoutEnd],[NormalizedEmail],[NormalizedUserName],[PasswordHash],[PhoneNumber],[PhoneNumberConfirmed],[SecurityStamp],[TwoFactorEnabled],[UserName])VALUES('9aaf5823-6e45-45ce-b6f8-a78f43faae7b',0,'191d0d18-f03b-4d68-8f08-cdf28ced33bb','tlin@company.com',0,1,NULL,'TLIN@COMPANY.COM','F9E00F46-859D-4163-AD31-D560A559E919','AQAAAAEAACcQAAAAECeaqC2EB4AHWTFcY9lXolTFlIjuqj3ZBe4agDRWNy3Z/GGy1oQ2QLEovSf5aJMhcg==',NULL,0,'e74fbcb5-d9c6-4b5f-b969-d47df17e4557',0,'f9e00f46-859d-4163-ad31-d560a559e919')

INSERT INTO [AspNetUserRoles] ([UserId],[RoleId])VALUES('18404d8b-8ab3-4f16-914f-d7db45721174','2f89f817-6320-4e0c-9364-9a04033bf256')
INSERT INTO [AspNetUserRoles] ([UserId],[RoleId])VALUES('4a4a3f55-b667-4202-905b-3442db50bfd4','70c0e727-429d-4f2e-8c30-0000bfdde1e9')
INSERT INTO [AspNetUserRoles] ([UserId],[RoleId])VALUES('565f1c4b-21db-4ab9-a9ff-f1383ad8c57e','70c0e727-429d-4f2e-8c30-0000bfdde1e9')
INSERT INTO [AspNetUserRoles] ([UserId],[RoleId])VALUES('87279326-ef9a-4e2a-817d-720cec4c8f4e','70c0e727-429d-4f2e-8c30-0000bfdde1e9')
INSERT INTO [AspNetUserRoles] ([UserId],[RoleId])VALUES('95e02adc-4a30-47f6-b63f-1f4bb3502a5d','70c0e727-429d-4f2e-8c30-0000bfdde1e9')
INSERT INTO [AspNetUserRoles] ([UserId],[RoleId])VALUES('9aaf5823-6e45-45ce-b6f8-a78f43faae7b','2f89f817-6320-4e0c-9364-9a04033bf256')
INSERT INTO [AspNetUserRoles] ([UserId],[RoleId])VALUES('d9aae1ff-fe0d-4bfa-8e96-b8ed5178bb7c','70c0e727-429d-4f2e-8c30-0000bfdde1e9')

