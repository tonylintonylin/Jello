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

/* Users have many Projects */
/* Not including Issue relationship, D doesn't not need Issue, Ds have many Issues */

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Project') and o.name = 'FK_PROJECT_REFERENCE_USER')
alter table Project
   drop constraint FK_PROJECT_REFERENCE_USER
go

/* Indexes including primary key Id Start Here (Backwards)*/

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

/* Tables and Indexes */

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
/* Insert D data in 'Jello' database                         */
/*==============================================================*/

SET IDENTITY_INSERT [Project] ON
INSERT INTO [Project] ([Id],[Title],[Description],[Type],[TotalIssues],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(1,'Sad Tremble','Description 1','Software',0,1,'danderson','2020-12-06 21:53:15.8847889','2020-12-06 21:53:15.8847889',1,'2020-12-07 20:13:57.7469482',1)
INSERT INTO [Project] ([Id],[Title],[Description],[Type],[TotalIssues],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(2,'Sad 2','Description 2','Software',0,1,'danderson','2020-12-06 21:53:15.8847889','2020-12-06 21:53:15.8847889',1,'2020-12-07 20:13:57.7469482',1)
INSERT INTO [Project] ([Id],[Title],[Description],[Type],[TotalIssues],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(3,'Sad 3','Description 3','Software',0,1,'danderson','2020-12-06 21:53:15.8847889','2020-12-06 21:53:15.8847889',1,'2020-12-07 20:13:57.7469482',1)
INSERT INTO [Project] ([Id],[Title],[Description],[Type],[TotalIssues],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(4,'Sad 4','Description 4','Software',0,1,'danderson','2020-12-06 21:53:15.8847889','2020-12-06 21:53:15.8847889',1,'2020-12-07 20:13:57.7469482',1)
INSERT INTO [Project] ([Id],[Title],[Description],[Type],[TotalIssues],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(5,'Sad 5','Description 5','Software',0,1,'danderson','2020-12-06 21:53:15.8847889','2020-12-06 21:53:15.8847889',1,'2020-12-07 20:13:57.7469482',1)
SET IDENTITY_INSERT [Project] OFF