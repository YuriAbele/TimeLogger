CREATE TABLE [dbo].[Project] (
    [ProjectID]   INT            IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (100) NOT NULL,
    [DailyRate]   SMALLMONEY     NULL,
    [Description] NVARCHAR (MAX) NULL,
    CONSTRAINT [dbo.Project.PK] PRIMARY KEY CLUSTERED ([ProjectID] ASC),
    CONSTRAINT [dbo.Project.CK.DailyRate] CHECK (isnull([DailyRate],(0.0))>=(0.0)),
    CONSTRAINT [dbo.Project.UK.Name] UNIQUE NONCLUSTERED ([Name] ASC)
);

