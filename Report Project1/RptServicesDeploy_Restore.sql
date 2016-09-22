IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MES_RedirectViews]') AND type in (N'P', N'PC'))
EXECUTE [dbo].[MES_RedirectViews]
   @SharedDataSourceType = N'%SourceName%'
  ,@SourceDatabase = N'%SourceDatabase%'
  ,@RestoreViews = 1
  ,@OracleUser = N'%SourceUser%'
GO