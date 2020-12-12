-- Insert rows into table 'Project'
SET IDENTITY_INSERT Project ON

INSERT INTO Project
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

SET IDENTITY_INSERT Project OFF 

-- add more rows here
GO
-- Query the total count of employees
SELECT COUNT(*) as ProjectCount FROM dbo.Project;
-- Query all employee information
SELECT a.Id, a.Title, a.OwnerAlias, a.OwnerId
FROM dbo.Project as a
GO