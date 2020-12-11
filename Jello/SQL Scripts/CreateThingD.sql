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

/* Relationships (E, User)*/
/* Indexes including primary key Id */
/* Tables and Indexes */
/* Alter table FK references (E, User) */
/* Insert Data */
/* Identity (none) */

/* Relationships (E, User) Start Here*/

/* Users have many D */
/* Not including E relationship, D doesn't not need E, Ds have many E */

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ThingD') and o.name = 'FK_THINGD_REFERENCE_USER')
alter table ThingD
   drop constraint FK_THINGD_REFERENCE_USER
go

/* Indexes including primary key Id Start Here (Backwards)*/

if exists (select 1
            from  sysindexes
           where  id    = object_id('ThingD')
            and   name  = 'IndexThingDOwnerAlias'
            and   indid > 0
            and   indid < 255)
   drop index ThingD.IndexThingDOwnerAlias
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ThingD')
            and   name  = 'IndexThingDStatus'
            and   indid > 0
            and   indid < 255)
   drop index ThingD.IndexThingDStatus
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ThingD')
            and   name  = 'IndexThingDDateTime'
            and   indid > 0
            and   indid < 255)
   drop index ThingD.IndexThingDDateTime
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ThingD')
            and   name  = 'IndexThingDMoney'
            and   indid > 0
            and   indid < 255)
   drop index ThingD.IndexThingDMoney
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ThingD')
            and   name  = 'IndexThingDLookup'
            and   indid > 0
            and   indid < 255)
   drop index ThingD.IndexThingDLookup
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ThingD')
            and   name  = 'IndexThingDText'
            and   indid > 0
            and   indid < 255)
   drop index ThingD.IndexThingDText
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ThingD')
            and   name  = 'IndexThingDName'
            and   indid > 0
            and   indid < 255)
   drop index ThingD.IndexThingDName
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ThingD')
            and   type = 'U')
   drop table ThingD
go

/* Tables and Indexes */

/*==============================================================*/
/* Table: ThingD                                                */
/*==============================================================*/
create table ThingD (
   Id                   int                  identity,
   Name                 nvarchar(100)        not null,
   Text                 nvarchar(40)         null,
   Lookup               nvarchar(40)         null,
   Money                decimal(16,2)        null,
   DateTime             datetime2            null,
   Status               nvarchar(40)         null,
   Integer              int                  null,
   Boolean              bit                  null,
   LongText             nvarchar(max)        null,
   TotalThingsE         int                  not null default 0,
   OwnerId              int                  not null,
   OwnerAlias           nvarchar(20)         not null,
   CreatedDate          datetime2            not null default getdate(),
   CreatedOn            datetime2            not null default getdate(),
   CreatedBy            int                  null,
   ChangedOn            datetime2            not null default getdate(),
   ChangedBy            int                  null,
   constraint PK_THINGD primary key (Id)
)
go

/*==============================================================*/
/* Index: IndexThingDName                                       */
/*==============================================================*/
create index IndexThingDName on ThingD (
Name ASC
)
go

/*==============================================================*/
/* Index: IndexThingDText                                       */
/*==============================================================*/
create index IndexThingDText on ThingD (
Text ASC
)
go

/*==============================================================*/
/* Index: IndexThingDLookup                                     */
/*==============================================================*/
create index IndexThingDLookup on ThingD (
Lookup ASC
)
go

/*==============================================================*/
/* Index: IndexThingDMoney                                      */
/*==============================================================*/
create index IndexThingDMoney on ThingD (
Money ASC
)
go

/*==============================================================*/
/* Index: IndexThingDDateTime                                   */
/*==============================================================*/
create index IndexThingDDateTime on ThingD (
DateTime ASC
)
go

/*==============================================================*/
/* Index: IndexThingDStatus                                     */
/*==============================================================*/
create index IndexThingDStatus on ThingD (
Status ASC
)
go

/*==============================================================*/
/* Index: IndexThingDOwnerAlias                                 */
/*==============================================================*/
create index IndexThingDOwnerAlias on ThingD (
OwnerAlias ASC
)
go

/*==============================================================*/
/* Insert D data in 'Jello' database                         */
/*==============================================================*/

SET IDENTITY_INSERT [ThingD] ON
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(1,'Sad Tremble','Telephone','Email',54000.00,'2017-12-19 00:00:00.0000000','Senior',912,1,'Some longer text here',1,1,'danderson','2017-12-06 21:53:15.8847889','2017-12-06 21:53:15.8847889',1,'2017-12-07 20:13:57.7469482',1)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(2,'Green Plate','Curry','Referral',4300.00,'2017-12-21 00:00:00.0000000','Senior',2,0,'Some longer text here',1,1,'danderson','2017-12-06 21:54:51.7857162','2017-12-06 21:54:51.7857162',1,'2017-12-07 20:13:40.4443986',1)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(3,'Possible Form','Jeans','Email',460.00,'2017-12-28 00:00:00.0000000','Junior',4,0,'Some longer text here',2,2,'rgraef','2017-12-07 16:25:05.7044113','2017-12-07 16:25:05.7041581',1,'2017-12-07 16:25:05.7043073',NULL)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(4,'Dreary Reason','Camera','Website',1200.00,'2017-12-28 00:00:00.0000000','Architect',34,1,'Some longer text here',0,1,'danderson','2017-12-07 16:25:05.8223265','2017-12-07 16:25:05.8223170',1,'2017-12-07 17:47:03.4908253',1)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(5,'Far Tooth','Jump','Referral',1000.00,'2017-12-28 00:00:00.0000000','Manager',5,1,'Some longer text here',5,1,'danderson','2017-12-07 16:25:05.8619526','2017-12-07 16:25:05.8619469',1,'2017-12-07 16:25:05.8619519',NULL)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(6,'Early Cattle','Growth','Referral',5450.00,'2017-12-28 00:00:00.0000000','Manager',73,1,'Some longer text here',1,1,'danderson','2017-12-07 16:25:05.8926462','2017-12-07 16:25:05.8926409',1,'2017-12-07 16:25:05.8926455',NULL)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(7,'Outrageous Geese','Spring','Email',31900.00,'2017-12-28 00:00:00.0000000','Junior',88,0,'Some longer text here',0,1,'danderson','2017-12-07 16:25:05.9052011','2017-12-07 16:25:05.9051972',1,'2017-12-07 16:25:05.9052004',NULL)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(8,'Makeshift Chalk','Reward','Meeting',320.00,'2017-12-28 00:00:00.0000000','Architect',90,1,'Some longer text here',0,2,'rgraef','2017-12-07 16:25:05.9300691','2017-12-07 16:25:05.9300663',1,'2017-12-07 16:25:05.9300688',NULL)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(9,'Wholesale View','Twig','Referral',2490.00,'2017-12-28 00:00:00.0000000','Manager',20,1,'Some longer text here',0,3,'pkuster','2017-12-07 16:25:05.9541611','2017-12-07 16:25:05.9541582',1,'2017-12-07 16:25:05.9541607',NULL)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(10,'White Legs','Crown','Website',12000.00,'2017-12-28 00:00:00.0000000','Architect',21,0,'Some longer text here',0,1,'danderson','2017-12-07 16:25:05.9851486','2017-12-07 16:25:05.9851384',1,'2017-12-07 16:25:05.9851472',NULL)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(11,'Strange Snails','Move','Meeting',10000.00,'2017-12-28 00:00:00.0000000','Senior',2,1,'Some longer text here',1,1,'danderson','2017-12-07 16:25:06.0225568','2017-12-07 16:25:06.0225515',1,'2017-12-07 16:25:06.0225561',NULL)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(12,'Minor Corn','Shake','Referral',430.00,'2017-12-28 00:00:00.0000000','Junior',0,0,'Some longer text here',2,2,'rgraef','2017-12-07 16:25:06.0495666','2017-12-07 16:25:06.0495638',1,'2017-12-07 16:25:06.0495663',NULL)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(13,'Picayune Governor','Creator','Email',4290.00,'2017-12-28 00:00:00.0000000','Architect',0,1,'Some longer text here',0,3,'pkuster','2017-12-07 16:25:06.0776367','2017-12-07 16:25:06.0776279',1,'2017-12-07 16:25:06.0776349',NULL)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(14,'Salty Milk','Fog','Meeting',430.00,'2017-12-28 00:00:00.0000000','Junior',56,0,'Some longer text here',3,1,'danderson','2017-12-07 16:25:06.0892713','2017-12-07 16:25:06.0892664',1,'2017-12-07 16:25:06.0892706',NULL)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(15,'Disgusted Alarm','Sticks','Referral',3490.00,'2017-12-28 00:00:00.0000000','Senior',4,1,'Some longer text here',3,1,'danderson','2017-12-07 16:25:06.0968100','2017-12-07 16:25:06.0968061',1,'2017-12-07 16:25:06.0968096',NULL)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(16,'Zany Roll','Mind','Referral',7100.00,'2017-12-28 00:00:00.0000000','Manager',38,1,'Some longer text here',1,1,'danderson','2017-12-07 16:25:06.1064822','2017-12-07 16:25:06.1064744',1,'2017-12-07 16:25:06.1064815',NULL)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(17,'Distinct Sail','Fire','Meeting',4370.00,'2017-12-28 00:00:00.0000000','Architect',87,0,'Some longer text here',0,3,'pkuster','2017-12-07 16:25:06.1385348','2017-12-07 16:25:06.1385133',1,'2017-12-07 16:25:06.1385334',NULL)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(18,'Resonant Team','Snake','Website',9090.00,'2017-12-28 00:00:00.0000000','Junior',6,1,'Some longer text here',2,1,'danderson','2017-12-07 16:25:06.1668259','2017-12-07 16:25:06.1668210',1,'2017-12-07 16:25:06.1668252',NULL)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(19,'Flaky Shade','Fog','Website',900.00,'2017-12-28 00:00:00.0000000','Architect',81,0,'Some longer text here',2,3,'pkuster','2017-12-07 16:25:06.1918113','2017-12-07 16:25:06.1918082',1,'2017-12-07 16:25:06.1918110',NULL)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(20,'Equal Bath','Reason','Referral',320.00,'2017-12-28 00:00:00.0000000','Manager',18,1,'Some longer text here',3,2,'rgraef','2017-12-07 16:25:06.2004208','2017-12-07 16:25:06.2004177',1,'2017-12-07 16:25:06.2004205',NULL)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(21,'Immense Error','Pest','Meeting',490.00,'2017-12-28 00:00:00.0000000','Architect',90,1,'Some longer text here',0,1,'danderson','2017-12-07 16:25:06.2248572','2017-12-07 16:25:06.2248537',1,'2017-12-07 16:25:06.2248569',NULL)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(22,'Thirsty Butter','Cherries','Email',9800.00,'2017-12-28 00:00:00.0000000','Senior',30,0,'Some longer text here',1,1,'danderson','2017-12-07 16:25:06.2538209','2017-12-07 16:25:06.2538124',1,'2017-12-07 16:25:06.2538198',NULL)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(23,'Disillusioned End','Pie','Website',21000.00,'2017-12-28 00:00:00.0000000','Senior',39,1,'Some longer text here',0,1,'danderson','2017-12-07 16:25:06.2879829','2017-12-07 16:25:06.2879762',1,'2017-12-07 16:25:06.2879818',NULL)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(24,'Hungry Caption','Scene','Referral',3260.00,'2017-12-28 00:00:00.0000000','Manager',31,0,'Some longer text here',2,2,'rgraef','2017-12-07 16:25:06.3264302','2017-12-07 16:25:06.3264235',1,'2017-12-07 16:25:06.3264291',NULL)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(25,'Violent Plant','Mask','Meeting',3700.00,'2017-12-28 00:00:00.0000000','Architect',6,1,'Some longer text here',0,1,'danderson','2017-12-07 16:25:06.3401054','2017-12-07 16:25:06.3401011',1,'2017-12-07 16:25:06.3401050',NULL)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(26,'Longing Fold','Aunt','Website',5450.00,'2017-12-28 00:00:00.0000000','Manager',65,0,'Some longer text here',1,2,'rgraef','2017-12-07 16:25:06.3661962','2017-12-07 16:25:06.3661934',1,'2017-12-07 16:25:06.3661958',NULL)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(27,'Blue-Eyed Grip','Branch','Email',4500.00,'2017-12-28 00:00:00.0000000','Senior',47,0,'Some longer text here',2,1,'danderson','2017-12-07 16:25:06.3939556','2017-12-07 16:25:06.3939454',1,'2017-12-07 16:25:06.3939535',NULL)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(28,'Spiteful Design','Air','Referral',100.00,'2017-12-28 00:00:00.0000000','Architect',9,1,'Some longer text here',0,1,'danderson','2017-12-07 16:25:06.4340948','2017-12-07 16:25:06.4340860',1,'2017-12-07 16:25:06.4340934',NULL)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(29,'Oceanic Arm','Vessel','Website',76000.00,'2017-12-28 00:00:00.0000000','Manager',34,1,'Some longer text here',1,1,'danderson','2017-12-07 16:25:06.4685786','2017-12-07 16:25:06.4685688',1,'2017-12-07 16:25:06.4685772',NULL)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(30,'Miniature Sleet','Wine','Referral',4360.00,'2017-12-28 00:00:00.0000000','Junior',61,1,'Some longer text here',0,1,'danderson','2017-12-07 16:25:06.5059222','2017-12-07 16:25:06.5059131',1,'2017-12-07 17:44:10.8809195',1)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(31,'Necessary Lettuce','Bushes','Website',4850.00,'2017-12-28 00:00:00.0000000','Manager',12,0,'Some longer text here',0,1,'danderson','2017-12-07 16:25:06.5398176','2017-12-07 16:25:06.5398099',1,'2017-12-07 17:44:00.1537449',1)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(32,'Bad Hour','Year','Meeting',1950.00,'2017-12-28 00:00:00.0000000','Architect',32,0,'Some longer text here',0,1,'danderson','2017-12-07 16:25:06.5600575','2017-12-07 16:25:06.5600511',1,'2017-12-07 17:43:47.9527537',1)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(33,'Dizzy Toothbrush','Canvas','Website',7350.00,'2017-12-28 00:00:00.0000000','Senior',46,1,'Some longer text here',0,1,'danderson','2017-12-07 16:25:06.6029323','2017-12-07 16:25:06.6029238',1,'2017-12-07 17:43:39.0264761',1)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(34,'Remarkable Low','Toad','Email',4800.00,'2017-12-28 00:00:00.0000000','Junior',98,0,'Some longer text here',0,1,'danderson','2017-12-07 16:25:06.6189813','2017-12-07 16:25:06.6189763',1,'2017-12-07 17:43:31.8879130',1)
INSERT INTO [ThingD] ([Id],[Name],[Text],[Lookup],[Money],[DateTime],[Status],[Integer],[Boolean],[LongText],[TotalThingsE],[OwnerId],[OwnerAlias],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(35,'Wasteful Stretch','Sock','Website',3500.00,'2017-12-30 00:00:00.0000000','Senior',77,1,'Some longer text here',0,1,'danderson','2017-12-07 16:25:06.6525053','2017-12-07 16:25:06.6524958',1,'2017-12-07 17:43:22.6821386',1)
SET IDENTITY_INSERT [ThingD] OFF