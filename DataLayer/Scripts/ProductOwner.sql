-- Choose the ContentWho database
USE [ContentWho]
GO

-- Create the ProductOwner table
CREATE TABLE [dbo].[ProductOwner]
(
	[Id] [INT] IDENTITY(1,1) NOT NULL,
	[Name] [VARCHAR](50) NOT NULL,
	[EmploymentStatus] [INT] NULL DEFAULT 1,
	[WorkingDays] [INT] NULL DEFAULT 127,
	[IsActive] [BIT] NOT NULL DEFAULT 'true',
	CONSTRAINT [PK_ProductOwner] PRIMARY KEY CLUSTERED ([Id] ASC)
)
GO

-- Add the ProductOwnerId column on the Product table
ALTER TABLE [dbo].[Product]
ADD [ProductOwnerId] [int] NULL
GO

ALTER TABLE [dbo].[Product] WITH CHECK ADD CONSTRAINT [FK_Product_ProductOwner] FOREIGN KEY([ProductOwnerId])
REFERENCES [dbo].[ProductOwner] ([Id])
GO

-- Populate the data for the ProductOwner table
INSERT INTO [dbo].[ProductOwner] ([Name])
SELECT DISTINCT [PracticeAreaLead]
FROM [dbo].[Product]
WHERE [PracticeAreaLead] IS NOT NULL
ORDER BY [PracticeAreaLead] ASC
GO

-- Populate the data for the ProductOwnerId column
UPDATE [dbo].[Product]
SET [dbo].[Product].[ProductOwnerId] = (
	SELECT [Id]
	FROM [dbo].[ProductOwner]
	WHERE [dbo].[ProductOwner].[Name] = [dbo].[Product].[PracticeAreaLead]
)
GO