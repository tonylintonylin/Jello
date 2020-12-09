
/*==============================================================*/
/* Data Model + Data for the 'Surfboards' database              */
/* Copyright (C), Data & Object Factory, LLC                    */
/* All rights reserved. www.dofactory.com                       */
/*==============================================================*/

if exists (select 1
            from  sysindexes
           where  id    = object_id('Customer')
            and   name  = 'IndexCustomerTotalOrders'
            and   indid > 0
            and   indid < 255)
   drop index Customer.IndexCustomerTotalOrders
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Customer')
            and   name  = 'IndexCustomerCountry'
            and   indid > 0
            and   indid < 255)
   drop index Customer.IndexCustomerCountry
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Customer')
            and   name  = 'IndexCustomerCity'
            and   indid > 0
            and   indid < 255)
   drop index Customer.IndexCustomerCity
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Customer')
            and   name  = 'IndexCustomerPhone'
            and   indid > 0
            and   indid < 255)
   drop index Customer.IndexCustomerPhone
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Customer')
            and   name  = 'IndexCustomerEmail'
            and   indid > 0
            and   indid < 255)
   drop index Customer.IndexCustomerEmail
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Customer')
            and   name  = 'IndexCustomerLastName'
            and   indid > 0
            and   indid < 255)
   drop index Customer.IndexCustomerLastName
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Customer')
            and   type = 'U')
   drop table Customer
go

/*==============================================================*/
/* Table: Customer                                              */
/*==============================================================*/
create table Customer (
   Id                   int                  identity,
   FirstName            nvarchar(50)         not null,
   LastName             nvarchar(50)         not null,
   Email                nvarchar(100)        not null,
   Phone                nvarchar(30)         null,
   TotalOrders          int                  not null default 0,
   Interest             nvarchar(500)        null,
   City                 nvarchar(50)         null,
   Country              nvarchar(50)         null,
   Comments             nvarchar(max)        null,
   CreatedDate          datetime2            not null default getdate(),
   CreatedOn            datetime2            not null default getdate(),
   CreatedBy            int                  null,
   ChangedOn            datetime2            not null default getdate(),
   ChangedBy            int                  null,
   constraint PK_CUSTOMER primary key (Id)
)
go

/*==============================================================*/
/* Index: IndexCustomerLastName                                 */
/*==============================================================*/
create index IndexCustomerLastName on Customer (
LastName ASC
)
go

/*==============================================================*/
/* Index: IndexCustomerEmail                                    */
/*==============================================================*/
create index IndexCustomerEmail on Customer (
Email ASC
)
go

/*==============================================================*/
/* Index: IndexCustomerPhone                                    */
/*==============================================================*/
create index IndexCustomerPhone on Customer (
Phone ASC
)
go

/*==============================================================*/
/* Index: IndexCustomerCity                                     */
/*==============================================================*/
create index IndexCustomerCity on Customer (
City ASC
)
go

/*==============================================================*/
/* Index: IndexCustomerCountry                                  */
/*==============================================================*/
create index IndexCustomerCountry on Customer (
Country ASC
)
go

/*==============================================================*/
/* Index: IndexCustomerTotalOrders                              */
/*==============================================================*/
create index IndexCustomerTotalOrders on Customer (
TotalOrders ASC
)
go

/*==============================================================*/
/* Insert data in 'Surfboards' database                         */
/*==============================================================*/

SET IDENTITY_INSERT[Customer] ON
INSERT INTO [Customer] ([Id],[FirstName],[LastName],[Email],[Phone],[TotalOrders],[Interest],[City],[Country],[Comments],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(1,'Jacob','Sheffield','jacobs6@gmail.com','418-211-0004',0,NULL,'Dallas','USA',NULL,'2018-10-13 16:18:22.8391779','2018-10-13 16:18:22.8391779',1,'2018-10-15 11:30:01.7265224',1)
INSERT INTO [Customer] ([Id],[FirstName],[LastName],[Email],[Phone],[TotalOrders],[Interest],[City],[Country],[Comments],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(2,'Elly','VanderBilt','elly12@hotmail.com','212-444-5874',3,NULL,'New York','USA',NULL,'2018-10-13 16:34:32.6066667','2018-10-13 16:34:32.6066667',NULL,'2018-10-15 11:29:12.4643989',1)
INSERT INTO [Customer] ([Id],[FirstName],[LastName],[Email],[Phone],[TotalOrders],[Interest],[City],[Country],[Comments],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(3,'Kim','Lee','kleesurf@gmail.com','45-223-36999',5,NULL,'Canberra','Australia',NULL,'2018-10-13 16:35:33.0133333','2018-10-13 16:35:33.0133333',NULL,'2018-10-13 16:35:33.0133333',NULL)
INSERT INTO [Customer] ([Id],[FirstName],[LastName],[Email],[Phone],[TotalOrders],[Interest],[City],[Country],[Comments],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(4,'Nathan','O''Donnell','nod371@icloud.com','33-81-3376202',2,NULL,'Dublin','Ireland',NULL,'2018-10-13 16:36:37.1500000','2018-10-13 16:36:37.1500000',NULL,'2018-10-15 11:29:38.8876966',1)
INSERT INTO [Customer] ([Id],[FirstName],[LastName],[Email],[Phone],[TotalOrders],[Interest],[City],[Country],[Comments],[CreatedDate],[CreatedOn],[CreatedBy],[ChangedOn],[ChangedBy])VALUES(5,'Lara','Larsson','lslars007@yahoo.com','895-399-4442',0,NULL,'Santa Cruz','USA',NULL,'2018-10-13 16:38:14.6400000','2018-10-13 16:38:14.6400000',NULL,'2018-10-15 11:28:00.2548767',1)
SET IDENTITY_INSERT[Customer] ON