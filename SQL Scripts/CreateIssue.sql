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

/* Relationships (User)*/
/* Indexes including primary key Id */
/* Tables and Indexes */
/* Alter table FK references (User) */
/* Insert Data */
/* Identity (none) */

/* Relationships (E, User) Start Here*/

/* Users have many Issues */

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

/* Indexes including primary key Id Start Here (Backwards)*/

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

/* Tables and Indexes */

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
/* Insert D data in 'Jello' database                         */
/*==============================================================*/

SET IDENTITY_INSERT [Issue] ON
INSERT INTO [Issue] ([Id],[Title],[Description],[Type],[Priority],[Status],[ProjectId],[ProjectTitle],[AssigneeId],[AssigneeName],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(1,'Big Tremble','Description of Issue 1','Bug','High','Done',1,'Sad Tremble',2,'rgraef',1,'danderson','2020-12-06 21:53:15.8847889','2020-12-06 21:53:15.8847889',1,'2020-12-07 20:13:57.7469482',1)
INSERT INTO [Issue] ([Id],[Title],[Description],[Type],[Priority],[Status],[ProjectId],[ProjectTitle],[AssigneeId],[AssigneeName],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(2,'Another Issue for Project 1','Description of Issue 2','Epic','Urgent','New',1,'Sad Tremble',2,'rgraef',1,'danderson','2020-12-06 21:53:15.8847889','2020-12-06 21:53:15.8847889',1,'2020-12-07 20:13:57.7469482',1)
INSERT INTO [Issue] ([Id],[Title],[Description],[Type],[Priority],[Status],[ProjectId],[ProjectTitle],[AssigneeId],[AssigneeName],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(3,'Big Bug','Description of Issue 3','New Feature','Low','In Progress',1,'Sad 2',2,'rgraef',1,'danderson','2020-12-06 21:53:15.8847889','2020-12-06 21:53:15.8847889',1,'2020-12-07 20:13:57.7469482',1)
INSERT INTO [Issue] ([Id],[Title],[Description],[Type],[Priority],[Status],[ProjectId],[ProjectTitle],[AssigneeId],[AssigneeName],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(4,'Small Bug','Description of Issue 4','Improvement','Medium','In Review',1,'Sad 2',2,'rgraef',1,'danderson','2020-12-06 21:53:15.8847889','2020-12-06 21:53:15.8847889',1,'2020-12-07 20:13:57.7469482',1)
INSERT INTO [Issue] ([Id],[Title],[Description],[Type],[Priority],[Status],[ProjectId],[ProjectTitle],[AssigneeId],[AssigneeName],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(5,'An Issue','Description of Issue 5','Task','Low','New',1,'Sad 3',2,'rgraef',1,'danderson','2020-12-06 21:53:15.8847889','2020-12-06 21:53:15.8847889',1,'2020-12-07 20:13:57.7469482',1)
SET IDENTITY_INSERT [Issue] OFF