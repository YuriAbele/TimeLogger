CREATE TABLE [dbo].[WorkMatrix] (
    [WorkMatrixID] INT            NOT NULL,
    [ProjectID]    INT            NOT NULL,
    [IsProductive] BIT            NOT NULL,
    [StartAt]      SMALLDATETIME  NOT NULL,
    [FinishAt]     SMALLDATETIME  NULL,
    [Comment]      NVARCHAR (MAX) NULL,
    CONSTRAINT [dbo.WorkMatrix.PK] PRIMARY KEY CLUSTERED ([WorkMatrixID] ASC),
    CONSTRAINT [dbo.WorkMatrix.FK.Project] FOREIGN KEY ([WorkMatrixID]) REFERENCES [dbo].[Project] ([ProjectID])
);


GO
CREATE NONCLUSTERED INDEX [dbo.WorkMatrix.IX.IsProductive]
    ON [dbo].[WorkMatrix]([WorkMatrixID] ASC);

