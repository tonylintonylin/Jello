-- Insert rows into table 'ThingA'
SET IDENTITY_INSERT ThingA ON

INSERT INTO ThingA
( -- columns to insert data into
 [Id], [Name], [OwnerAlias], [OwnerId]     
)
VALUES
( -- first row: values for the columns in the list above
 42, N'bigfourty', N'madebytony', N'1'
),
( -- second row: values for the columns in the list above
 43, N'smallerfourtone', N'madebytony', N'1'
)

SET IDENTITY_INSERT ThingA OFF 

-- add more rows here
GO
-- Query the total count of employees
SELECT COUNT(*) as ThingACount FROM dbo.ThingA;
-- Query all employee information
SELECT a.Id, a.Name, a.OwnerAlias, a.OwnerId
FROM dbo.ThingA as a
GO