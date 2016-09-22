--FACT clean up
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[FACTProductionData]'))
DROP VIEW [dbo].[FACTProductionData]
GO
