--use aaReports

--FACT clean up
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[FACTProductionData]'))
DROP VIEW [dbo].[FACTProductionData]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[FACTGenealogyData]'))
DROP VIEW [dbo].[FACTGenealogyData]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[FACTOEEData]'))
DROP VIEW [dbo].[FACTOEEData]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[FACTDowntimeData]'))
DROP VIEW [dbo].[FACTDowntimeData]
GO
--Clean up reporting views:
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[rpt_vw_FACT_EfficiencyData]'))
DROP VIEW [dbo].[rpt_vw_FACT_EfficiencyData]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[rpt_vw_FACT_ProductionEvents]'))
DROP VIEW [dbo].[rpt_vw_FACT_ProductionEvents]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[rpt_vw_FACT_Shift]'))
DROP VIEW [dbo].[rpt_vw_FACT_Shift]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[rpt_vw_FACT_User]'))
DROP VIEW [dbo].[rpt_vw_FACT_User]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[rpt_vw_FACT_UtilState]'))
DROP VIEW [dbo].[rpt_vw_FACT_UtilState]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[rpt_vw_FACT_UtilReasonGrp]'))
DROP VIEW [dbo].[rpt_vw_FACT_UtilReasonGrp]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[rpt_vw_FACT_UtilReason]'))
DROP VIEW [dbo].[rpt_vw_FACT_UtilReason]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[rpt_vw_FACT_Product]'))
DROP VIEW [dbo].[rpt_vw_FACT_Product]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[rpt_vw_FACT_Entity]'))
DROP VIEW [dbo].[rpt_vw_FACT_Entity]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[rpt_vw_FACT_Entity_For_OEE]'))
DROP VIEW [dbo].[rpt_vw_FACT_Entity_For_OEE]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[rpt_vw_FACT_Category1]'))
DROP VIEW [dbo].[rpt_vw_FACT_Category1]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[rpt_vw_FACT_Category2]'))
DROP VIEW [dbo].[rpt_vw_FACT_Category2]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[rpt_vw_FACT_Category3]'))
DROP VIEW [dbo].[rpt_vw_FACT_Category3]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[rpt_vw_FACT_Category4]'))
DROP VIEW [dbo].[rpt_vw_FACT_Category4]
GO

--Migrated PEM Reports clean up
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[MES_EventName]'))
DROP VIEW [dbo].[MES_EventName]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[MES_EventType]'))
DROP VIEW [dbo].[MES_EventType]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[MES_Location]'))
DROP VIEW [dbo].[MES_Location]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[MES_Lot]'))
DROP VIEW [dbo].[MES_Lot]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[MES_Sublot]'))
DROP VIEW [dbo].[MES_Sublot]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[MES_Material]'))
DROP VIEW [dbo].[MES_Material]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[MES_ProcessSegment]'))
DROP VIEW [dbo].[MES_ProcessSegment]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[MES_ProductionRequest]'))
DROP VIEW [dbo].[MES_ProductionRequest]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[MES_SegmentRequirement]'))
DROP VIEW [dbo].[MES_SegmentRequirement]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[MES_Subsegment]'))
DROP VIEW [dbo].[MES_Subsegment]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[MES_SerialNumber]'))
DROP VIEW [dbo].[MES_SerialNumber]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[MES_ProductionSchedule]'))
DROP VIEW [dbo].[MES_ProductionSchedule]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[MES_MaterialType]'))
DROP VIEW [dbo].[MES_MaterialType]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[MES_Personnel]'))
DROP VIEW [dbo].[MES_Personnel]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[MES_GenealogyId]'))
DROP VIEW [dbo].[MES_GenealogyId]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[MES_SegmentResponse]'))
DROP VIEW [dbo].[MES_SegmentResponse]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[MES_ProductionEventMessage]'))
DROP VIEW [dbo].[MES_ProductionEventMessage]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[MES_ResourceActual]'))
DROP VIEW [dbo].[MES_ResourceActual]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[MES_MaterialConsumedActual]'))
DROP VIEW [dbo].[MES_MaterialConsumedActual]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[MES_MaterialProducedActual]'))
DROP VIEW [dbo].[MES_MaterialProducedActual]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[MES_ResourceActualInternal]'))
DROP VIEW [dbo].[MES_ResourceActualInternal]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[MES_Item]'))
DROP VIEW [dbo].[MES_Item]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[MES_WO]'))
DROP VIEW [dbo].[MES_WO]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[MES_DataLog48]'))
DROP VIEW [dbo].[MES_DataLog48]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[MES_DataLogValue]'))
DROP VIEW [dbo].[MES_DataLogValue]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[MES_JobEventEpa]'))
DROP VIEW [dbo].[MES_JobEventEpa]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[MES_UtilReas]'))
DROP VIEW [dbo].[MES_UtilReas]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[MES_UtilReasGrp]'))
DROP VIEW [dbo].[MES_UtilReasGrp]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductionAttributeName]') AND type in (N'U'))
DROP TABLE [dbo].[ProductionAttributeName]
go

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aarsLayoutLocalizedText]') AND type in (N'U'))
DELETE [dbo].[aarsLayoutLocalizedText] 
WHERE Scope IN (N'PEM.EventDetails Report',N'PEM.EventsReport Report', N'PEM.Genealogy Detail Report', N'PEM.GenealogyReport Report', N'PEM.ProductionReport Report')
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MES_GetGenealogy]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[MES_GetGenealogy]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MES_GetReverseGenealogy]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[MES_GetReverseGenealogy]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MES_GetGenealogyIdGenealogy]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[MES_GetGenealogyIdGenealogy]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MES_GetGenealogyIdGenealogy_Restore]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[MES_GetGenealogyIdGenealogy_Restore]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MES_GetLotGenealogy]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[MES_GetLotGenealogy]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MES_GetLotGenealogy_Restore]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[MES_GetLotGenealogy_Restore]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MES_GetReverseGenealogyIdGenealogy]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[MES_GetReverseGenealogyIdGenealogy]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MES_GetReverseGenealogyIdGenealogy_Restore]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[MES_GetReverseGenealogyIdGenealogy_Restore]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MES_GetReverseLotGenealogy]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[MES_GetReverseLotGenealogy]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MES_GetReverseLotGenealogy_Restore]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[MES_GetReverseLotGenealogy_Restore]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MES_SplitStr]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[MES_SplitStr]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MES_GetEPAValueByIndex]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[MES_GetEPAValueByIndex]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PEMGetTimePeriodInfo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[PEMGetTimePeriodInfo]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PEMGetDurationValues]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PEMGetDurationValues]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MES_GetHierarchicalReasons]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[MES_GetHierarchicalReasons]

------------------------------------------------------------------------------------------------
--Remove the localized entries if this is not a clean install
DELETE FROM dbo.aarsLayoutLocalizedText
WHERE Scope LIKE 'FACT.%'
GO

--FACT create Linked server views
DECLARE	@providerType nvarchar(30)
select @providerType = provider from sys.servers where name=N'%SourceName%'
DECLARE	@sqlSource BIT
DECLARE	@viewPrefix nvarchar(200)

IF( @providerType = N'SQLNCLI' OR @providerType = N'SQLNCLI10' OR @providerType = N'SQLNCLI11') 
	BEGIN
		SET @sqlSource = 1
		SET @viewPrefix = N'%SourceDatabase%.dbo'
	END
ELSE
	BEGIN
		SET @sqlSource = 0
		SET @viewPrefix = N'.%SourceUser%'
	END
--FACT create Linked server views
if (1>0)
BEGIN
DECLARE	@strQuery as NVARCHAR(MAX)

SET @strQuery = N'create view [dbo].[FACTProductionData] as select * from %SourceName%.' + @viewPrefix + N'.VW_PRODUCTION_DATA'
EXEC (@strQuery)

SET @strQuery = N'create view [dbo].[FACTGenealogyData] as select * from %SourceName%.' + @viewPrefix + N'.VW_GENEALOGY_DATA'
EXEC (@strQuery)

SET @strQuery = N'create view [dbo].[FACTOEEData] as select * from %SourceName%.' + @viewPrefix + N'.VW_OEE_DATA'
EXEC (@strQuery)

SET @strQuery = N'create view [dbo].[FACTDowntimeData] as select * from %SourceName%.' + @viewPrefix + N'.VW_DOWNTIME_DATA'
EXEC (@strQuery)

--Creating the reporting views
SET @strQuery = N'create view [dbo].[rpt_vw_FACT_ProductionEvents] as select * from %SourceName%.' + @viewPrefix + N'.VW_PROD_EVENTS'
EXEC (@strQuery)

SET @strQuery = N'create view [dbo].[rpt_vw_FACT_EfficiencyData] as select * from %SourceName%.' + @viewPrefix + N'.VW_EFFICIENCY_DATA'
EXEC (@strQuery)

SET @strQuery = N'create VIEW [dbo].[rpt_vw_FACT_Shift] AS select * from %SourceName%.' + @viewPrefix + N'.VW_SHIFT'
EXEC (@strQuery)

SET @strQuery = N'create VIEW [dbo].[rpt_vw_FACT_User] AS select * from %SourceName%.' + @viewPrefix + N'.VW_USER'
EXEC (@strQuery)

SET @strQuery = N'create VIEW [dbo].[rpt_vw_FACT_UtilState] AS select * from %SourceName%.' + @viewPrefix + N'.VW_UTIL_STATE'
EXEC (@strQuery)

SET @strQuery = N'create VIEW [dbo].[rpt_vw_FACT_UtilReasonGrp] AS select * from %SourceName%.' + @viewPrefix + N'.VW_UTIL_REASON_GROUP'
EXEC (@strQuery)

SET @strQuery = N'create VIEW [dbo].[rpt_vw_FACT_UtilReason] AS select * from %SourceName%.' + @viewPrefix + N'.VW_UTIL_REAS'
EXEC (@strQuery)

SET @strQuery = N'create VIEW [dbo].[rpt_vw_FACT_Product] AS select * from %SourceName%.' + @viewPrefix + N'.VW_PRODUCT'
EXEC (@strQuery)

SET @strQuery = N'create VIEW [dbo].[rpt_vw_FACT_Entity] AS select * from %SourceName%.' + @viewPrefix + N'.VW_ENT_FOR_UTIL'
EXEC (@strQuery)

SET @strQuery = N'create VIEW [dbo].[rpt_vw_FACT_Entity_For_OEE] AS select * from %SourceName%.' + @viewPrefix + N'.VW_ENT_FOR_OEE'
EXEC (@strQuery)

SET @strQuery = N'create VIEW [dbo].[rpt_vw_FACT_Category1] AS select * from %SourceName%.' + @viewPrefix + N'.VW_CATEGORY1'
EXEC (@strQuery)

SET @strQuery = N'create VIEW [dbo].[rpt_vw_FACT_Category2] AS select * from %SourceName%.' + @viewPrefix + N'.VW_CATEGORY2'
EXEC (@strQuery)

SET @strQuery = N'create VIEW [dbo].[rpt_vw_FACT_Category3] AS select * from %SourceName%.' + @viewPrefix + N'.VW_CATEGORY3'
EXEC (@strQuery)

SET @strQuery = N'create VIEW [dbo].[rpt_vw_FACT_Category4] AS select * from %SourceName%.' + @viewPrefix + N'.VW_CATEGORY4'
EXEC (@strQuery)

---Creating DB objects in the aaReports DB for the migrated PEM Reports
SET @strQuery = N'create view [dbo].[MES_EventName] as select * from %SourceName%.' + @viewPrefix + N'.VW_EVENTNAME'
EXEC (@strQuery)

SET @strQuery = N'create view [dbo].[MES_EventType] as select * from %SourceName%.' + @viewPrefix + N'.VW_EVENTTYPE'
EXEC (@strQuery)

SET @strQuery = N'create view [dbo].[MES_Lot] as select * from %SourceName%.' + @viewPrefix + N'.VW_LOT'
EXEC (@strQuery)

SET @strQuery = N'create view [dbo].[MES_Sublot] as select * from %SourceName%.' + @viewPrefix + N'.VW_SUBLOT'
EXEC (@strQuery)

SET @strQuery = N'create view [dbo].[MES_Location] as select * from %SourceName%.' + @viewPrefix + N'.VW_LOCATION'
EXEC (@strQuery)

SET @strQuery = N'create view [dbo].[MES_Material] as select * from %SourceName%.' + @viewPrefix + N'.VW_MATERIAL'
EXEC (@strQuery)

SET @strQuery = N'create view [dbo].[MES_ProcessSegment] as select * from %SourceName%.' + @viewPrefix + N'.VW_PROCESSSEGMENT'
EXEC (@strQuery)

SET @strQuery = N'create view [dbo].[MES_ProductionRequest] as select * from %SourceName%.' + @viewPrefix + N'.VW_PRODUCTIONREQUEST'
EXEC (@strQuery)

SET @strQuery = N'create view [dbo].[MES_SegmentRequirement] as select * from %SourceName%.' + @viewPrefix + N'.VW_SEGMENTREQUIREMENT'
EXEC (@strQuery)

SET @strQuery = N'create view [dbo].[MES_Subsegment] as select * from %SourceName%.' + @viewPrefix + N'.VW_SUBSEGMENT'
EXEC (@strQuery)

SET @strQuery = N'create view [dbo].[MES_SerialNumber] as select * from %SourceName%.' + @viewPrefix + N'.VW_SERIALNUMBER'
EXEC (@strQuery)

SET @strQuery = N'create view [dbo].[MES_ProductionSchedule] as select * from %SourceName%.' + @viewPrefix + N'.VW_PRODUCTIONSCHEDULE'
EXEC (@strQuery)

SET @strQuery = N'create view [dbo].[MES_MaterialType] as select * from %SourceName%.' + @viewPrefix + N'.VW_MATERIALTYPE'
EXEC (@strQuery)

SET @strQuery = N'create view [dbo].[MES_Personnel] as select * from %SourceName%.' + @viewPrefix + N'.VW_PERSONNEL'
EXEC (@strQuery)

SET @strQuery = N'create view [dbo].[MES_GenealogyId] as select * from %SourceName%.' + @viewPrefix + N'.VW_GENEALOGYID'
EXEC (@strQuery)

SET @strQuery = N'create view [dbo].[MES_SegmentResponse] as select * from %SourceName%.' + @viewPrefix + N'.VW_SEGMENTRESPONSE'
EXEC (@strQuery)

IF( @sqlSource > 0)
	SET @strQuery = N'create view [dbo].[MES_ResourceActual] as select * from %SourceName%.' + @viewPrefix + N'.VW_RESOURCEACTUAL'
ELSE
	SET @strQuery = N'create view [dbo].[MES_ResourceActual] as ' +
'SELECT [MATERIALID]' +
      ',[MATERIALTYPE]' +
      ',[EVENTNAME]' +
      ',[EVENTTYPE]' +
      ',[LOT]' +
      ',[LOCATION]' +
      ',[SEGMENTREQUIREMENTID]' +
      ',[PRODUCTIONREQUESTID]' +
      ',[PROCESSSEGMENTID]' +
      ',[SEGMENTRESPONSEID]' +
      ',CAST(QUANTITY AS FLOAT) AS QUANTITY' +
      ',[QUANTITYUNITOFMEASURE]' +
      ',[SUBLOT]' +
      ',[EVENTDATEUTC]' +
      ',[SUBSEGMENTID]' +
      ',[PERSONNEL]' +
      ',[SERIALNUMBER]' +
      ',CAST(EVENTGLOBID AS INT) AS EVENTGLOBID' +
      ',[GENEALOGYID]' +
      ',[PRODUCTIONSCHEDULEID] from %SourceName%.' + @viewPrefix + N'.VW_RESOURCEACTUAL'
EXEC (@strQuery)

SET @strQuery = N'create view [dbo].[MES_MaterialConsumedActual] as select * from %SourceName%.' + @viewPrefix + N'.VW_MATERIALCONSUMEDACTUAL'
EXEC (@strQuery)

SET @strQuery = N'create view [dbo].[MES_MaterialProducedActual] as select * from %SourceName%.' + @viewPrefix + N'.VW_MATERIALPRODUCEDACTUAL'
EXEC (@strQuery)

IF( @sqlSource > 0)
	SET @strQuery = N'create view [dbo].[MES_ResourceActualInternal] as select * from %SourceName%.' + @viewPrefix + N'.VW_RESOURCEACTUALINTERNAL'
ELSE
	SET @strQuery = N'create view [dbo].[MES_ResourceActualInternal] as ' +
	'SELECT [MATERIALID] ' +
      ',[MATERIALTYPE] ' +
      ',[EVENTNAME] ' +
      ',[EVENTTYPE] ' +
      ',[LOT] ' +
      ',[LOCATION] ' +
      ',[SEGMENTREQUIREMENTID] ' +
      ',[PRODUCTIONREQUESTID] ' +
      ',[PROCESSSEGMENTID] ' +
      ',[SEGMENTRESPONSEID] ' +
      ',CAST(QUANTITY AS FLOAT) AS QUANTITY ' +
      ',[QUANTITYUNITOFMEASURE] ' +
      ',[SUBLOT] ' +
      ',[EVENTDATEUTC] ' +
      ',[SUBSEGMENTID] ' +
      ',[PERSONNEL] ' +
      ',[SERIALNUMBER] ' +
      ',CAST(EVENTGLOBID AS INT) AS EVENTGLOBID ' +
      ',[EVENTID] ' +
      ',[EVENTLINKID] ' +
      ',[GENEALOGYID] from %SourceName%.' + @viewPrefix + N'.VW_RESOURCEACTUALINTERNAL'
EXEC (@strQuery)

SET @strQuery = N'create view [dbo].[MES_Item] as select * from %SourceName%.' + @viewPrefix + N'.VW_ITEM'
EXEC (@strQuery)

SET @strQuery = N'create view [dbo].[MES_WO] as select * from %SourceName%.' + @viewPrefix + N'.VW_WO'
EXEC (@strQuery)

SET @strQuery = N'create view [dbo].[MES_DataLog48] as select * from %SourceName%.' + @viewPrefix + N'.VW_DATALOG48'
EXEC (@strQuery)

SET @strQuery = N'create view [dbo].[MES_DataLogValue] as select * from %SourceName%.' + @viewPrefix + N'.VW_DATALOGVALUE'
EXEC (@strQuery)

SET @strQuery = N'create view [dbo].[MES_JobEventEpa] as select * from %SourceName%.' + @viewPrefix + N'.VW_JOBEVENTEPA'
EXEC (@strQuery)

SET @strQuery = N'create view [dbo].[MES_UtilReas] as select * from %SourceName%.' + @viewPrefix + N'.VW_UTILREAS'
EXEC (@strQuery)

SET @strQuery = N'create view [dbo].[MES_UtilReasGrp] as select * from %SourceName%.' + @viewPrefix + N'.VW_UTILREASGRP'
EXEC (@strQuery)

END
GO

---Create Linked Views for Migrated PEM Reports
-----------------------------------------------

--Localization related text for production entity
Insert into dbo.aarsLayoutLocalizedText
(Scope,TextId, LanguageCode,LocalizedText,Description)
Select N'FACT.ProductionEntity Report' as Scope,TextId,LanguageCode, LocalizedText, Description from 
dbo.aarsLayoutLocalizedText where Scope='ReportTemplate'
GO

--Report Title
update dbo.aarsLayoutLocalizedText
set LocalizedText = N'Production by Entity'
where Scope = N'FACT.ProductionEntity Report' and TextId = 0
GO

--Data Filtering Criteria
update dbo.aarsLayoutLocalizedText
set LocalizedText = N'Data Filtering Criteria'
where Scope = N'FACT.ProductionEntity Report' and TextId = 3
GO

--Localization related text for OEE by Shift Trend entity
Insert into dbo.aarsLayoutLocalizedText
(Scope,TextId, LanguageCode,LocalizedText,Description)
Select N'FACT.OEEShift Report' as Scope,TextId,LanguageCode, LocalizedText, Description from 
dbo.aarsLayoutLocalizedText where Scope='ReportTemplate'
GO

--Report Title
update dbo.aarsLayoutLocalizedText
set LocalizedText = N'OEE by Shift Trend'
where Scope = N'FACT.OEEShift Report' and TextId = 0
GO

--Data Filtering Criteria
update dbo.aarsLayoutLocalizedText
set LocalizedText = N'Data Filtering Criteria'
where Scope = N'FACT.OEEShift Report' and TextId = 3
GO

--Localization related text for Genealogy by work order
Insert into dbo.aarsLayoutLocalizedText
(Scope,TextId, LanguageCode,LocalizedText,Description)
Select N'FACT.GenealogyWorkOrder Report' as Scope,TextId,LanguageCode, LocalizedText, Description from 
dbo.aarsLayoutLocalizedText where Scope='ReportTemplate'
GO

--Report Title
update dbo.aarsLayoutLocalizedText
set LocalizedText = N'Genealogy by Work Order'
where Scope = N'FACT.GenealogyWorkOrder Report' and TextId = 0
GO

--Data Filtering Criteria
update dbo.aarsLayoutLocalizedText
set LocalizedText = N'Data Filtering Criteria'
where Scope = N'FACT.GenealogyWorkOrder Report' and TextId = 3
GO

--Localization related text for Downtime Analysis
Insert into dbo.aarsLayoutLocalizedText
(Scope,TextId, LanguageCode,LocalizedText,Description)
Select N'FACT.DowntimeAnalysis Report' as Scope,TextId,LanguageCode, LocalizedText, Description from 
dbo.aarsLayoutLocalizedText where Scope='ReportTemplate'
GO

--Report Title
update dbo.aarsLayoutLocalizedText
set LocalizedText = N'Downtime Analysis'
where Scope = N'FACT.DowntimeAnalysis Report' and TextId = 0
GO

--Data Filtering Criteria
update dbo.aarsLayoutLocalizedText
set LocalizedText = N'Data Filtering Criteria'
where Scope = N'FACT.DowntimeAnalysis Report' and TextId = 3
GO

--Add new custom entries in aarsLayoutLocalizedText table--
--For Reports Production Entity
DECLARE @docHandle int
declare @xmlDocument nvarchar(max) 
set @xmlDocument = N'<ROOT>
<aarsLayoutLocalizedText Scope="FACT.ProductionEntity Report" TextId="1000" LanguageCode="en-us" LocalizedText="Entity"/>
<aarsLayoutLocalizedText Scope="FACT.ProductionEntity Report" TextId="1001" LanguageCode="en-us" LocalizedText="Item"/>
<aarsLayoutLocalizedText Scope="FACT.ProductionEntity Report" TextId="1002" LanguageCode="en-us" LocalizedText="Item Description"/>
<aarsLayoutLocalizedText Scope="FACT.ProductionEntity Report" TextId="1003" LanguageCode="en-us" LocalizedText="Units"/>
<aarsLayoutLocalizedText Scope="FACT.ProductionEntity Report" TextId="1004" LanguageCode="en-us" LocalizedText="Production"/>
<aarsLayoutLocalizedText Scope="FACT.ProductionEntity Report" TextId="1005" LanguageCode="en-us" LocalizedText="Rejects"/>
<aarsLayoutLocalizedText Scope="FACT.ProductionEntity Report" TextId="1006" LanguageCode="en-us" LocalizedText="%Quality"/>
<aarsLayoutLocalizedText Scope="FACT.ProductionEntity Report" TextId="1007" LanguageCode="en-us" LocalizedText="Production Request ID"/>
<aarsLayoutLocalizedText Scope="FACT.ProductionEntity Report" TextId="1008" LanguageCode="en-us" LocalizedText="Entities"/>
<aarsLayoutLocalizedText Scope="FACT.ProductionEntity Report" TextId="1009" LanguageCode="en-us" LocalizedText="Outlining"/>
<aarsLayoutLocalizedText Scope="FACT.ProductionEntity Report" TextId="1010" LanguageCode="en-us" LocalizedText="Expanded"/>
<aarsLayoutLocalizedText Scope="FACT.ProductionEntity Report" TextId="1011" LanguageCode="en-us" LocalizedText="Collapsed"/>
<aarsLayoutLocalizedText Scope="FACT.ProductionEntity Report" TextId="1012" LanguageCode="en-us" LocalizedText="Items List"/>
<aarsLayoutLocalizedText Scope="FACT.ProductionEntity Report" TextId="1013" LanguageCode="en-us" LocalizedText="Entities List"/>
<aarsLayoutLocalizedText Scope="FACT.ProductionEntity Report" TextId="1014" LanguageCode="en-us" LocalizedText="From"/>
<aarsLayoutLocalizedText Scope="FACT.ProductionEntity Report" TextId="1015" LanguageCode="en-us" LocalizedText="To"/>
</ROOT>'
EXEC sp_xml_preparedocument @docHandle OUTPUT, @xmlDocument
-- Use OPENXML to provide rowset consisting of data.
INSERT aarsLayoutLocalizedText
SELECT * 
FROM OPENXML(@docHandle, N'/ROOT/aarsLayoutLocalizedText') 
  WITH aarsLayoutLocalizedText
GO

--Add new custom entries in aarsLayoutLocalizedText table--
--For Reports Production Entity
DECLARE @docHandle int
declare @xmlDocument nvarchar(max) 
set @xmlDocument = N'<ROOT>
<aarsLayoutLocalizedText Scope="FACT.OEEShift Report" TextId="1000" LanguageCode="en-us" LocalizedText="Entity"/>
<aarsLayoutLocalizedText Scope="FACT.OEEShift Report" TextId="1001" LanguageCode="en-us" LocalizedText="Work Order ID"/>
<aarsLayoutLocalizedText Scope="FACT.OEEShift Report" TextId="1002" LanguageCode="en-us" LocalizedText="Shift"/>
<aarsLayoutLocalizedText Scope="FACT.OEEShift Report" TextId="1003" LanguageCode="en-us" LocalizedText="Date"/>
<aarsLayoutLocalizedText Scope="FACT.OEEShift Report" TextId="1004" LanguageCode="en-us" LocalizedText="%Utilization"/>
<aarsLayoutLocalizedText Scope="FACT.OEEShift Report" TextId="1005" LanguageCode="en-us" LocalizedText="%Performance"/>
<aarsLayoutLocalizedText Scope="FACT.OEEShift Report" TextId="1006" LanguageCode="en-us" LocalizedText="%Quality"/>
<aarsLayoutLocalizedText Scope="FACT.OEEShift Report" TextId="1007" LanguageCode="en-us" LocalizedText="%OEE"/>
<aarsLayoutLocalizedText Scope="FACT.OEEShift Report" TextId="1008" LanguageCode="en-us" LocalizedText="OEE Trend Chart"/>
<aarsLayoutLocalizedText Scope="FACT.OEEShift Report" TextId="1009" LanguageCode="en-us" LocalizedText="Outlining"/>
<aarsLayoutLocalizedText Scope="FACT.OEEShift Report" TextId="1010" LanguageCode="en-us" LocalizedText="Expanded"/>
<aarsLayoutLocalizedText Scope="FACT.OEEShift Report" TextId="1011" LanguageCode="en-us" LocalizedText="Collapsed"/>
<aarsLayoutLocalizedText Scope="FACT.OEEShift Report" TextId="1012" LanguageCode="en-us" LocalizedText="Entities List"/>
<aarsLayoutLocalizedText Scope="FACT.OEEShift Report" TextId="1013" LanguageCode="en-us" LocalizedText="Work OrderID List"/>
<aarsLayoutLocalizedText Scope="FACT.OEEShift Report" TextId="1014" LanguageCode="en-us" LocalizedText="Shift Name List"/>
<aarsLayoutLocalizedText Scope="FACT.OEEShift Report" TextId="1015" LanguageCode="en-us" LocalizedText="From"/>
<aarsLayoutLocalizedText Scope="FACT.OEEShift Report" TextId="1016" LanguageCode="en-us" LocalizedText="To"/>
</ROOT>'
EXEC sp_xml_preparedocument @docHandle OUTPUT, @xmlDocument
-- Use OPENXML to provide rowset consisting of data.
INSERT aarsLayoutLocalizedText
SELECT * 
FROM OPENXML(@docHandle, N'/ROOT/aarsLayoutLocalizedText') 
  WITH aarsLayoutLocalizedText
GO


--Add new custom entries in aarsLayoutLocalizedText table--
--For Reports Production Entity
DECLARE @docHandle int
declare @xmlDocument nvarchar(max) 
set @xmlDocument = N'<ROOT>
<aarsLayoutLocalizedText Scope="FACT.GenealogyWorkOrder Report" TextId="1000" LanguageCode="en-us" LocalizedText="Entity Name"/>
<aarsLayoutLocalizedText Scope="FACT.GenealogyWorkOrder Report" TextId="1001" LanguageCode="en-us" LocalizedText="Item Name"/>
<aarsLayoutLocalizedText Scope="FACT.GenealogyWorkOrder Report" TextId="1002" LanguageCode="en-us" LocalizedText="Work Order ID"/>
<aarsLayoutLocalizedText Scope="FACT.GenealogyWorkOrder Report" TextId="1003" LanguageCode="en-us" LocalizedText="Operation ID"/>
<aarsLayoutLocalizedText Scope="FACT.GenealogyWorkOrder Report" TextId="1004" LanguageCode="en-us" LocalizedText="Produced Item"/>
<aarsLayoutLocalizedText Scope="FACT.GenealogyWorkOrder Report" TextId="1005" LanguageCode="en-us" LocalizedText="Job Start Time"/>
<aarsLayoutLocalizedText Scope="FACT.GenealogyWorkOrder Report" TextId="1006" LanguageCode="en-us" LocalizedText="Job End Time"/>
<aarsLayoutLocalizedText Scope="FACT.GenealogyWorkOrder Report" TextId="1007" LanguageCode="en-us" LocalizedText="Produced Lot"/>
<aarsLayoutLocalizedText Scope="FACT.GenealogyWorkOrder Report" TextId="1008" LanguageCode="en-us" LocalizedText="Grade"/>
<aarsLayoutLocalizedText Scope="FACT.GenealogyWorkOrder Report" TextId="1009" LanguageCode="en-us" LocalizedText="Outlining"/>
<aarsLayoutLocalizedText Scope="FACT.GenealogyWorkOrder Report" TextId="1010" LanguageCode="en-us" LocalizedText="Expanded"/>
<aarsLayoutLocalizedText Scope="FACT.GenealogyWorkOrder Report" TextId="1011" LanguageCode="en-us" LocalizedText="Collapsed"/>
<aarsLayoutLocalizedText Scope="FACT.GenealogyWorkOrder Report" TextId="1012" LanguageCode="en-us" LocalizedText="State"/>
<aarsLayoutLocalizedText Scope="FACT.GenealogyWorkOrder Report" TextId="1013" LanguageCode="en-us" LocalizedText="Produced Quantity"/>
<aarsLayoutLocalizedText Scope="FACT.GenealogyWorkOrder Report" TextId="1014" LanguageCode="en-us" LocalizedText="Consumed Item ID(Description)"/>
<aarsLayoutLocalizedText Scope="FACT.GenealogyWorkOrder Report" TextId="1015" LanguageCode="en-us" LocalizedText="Lot"/>
<aarsLayoutLocalizedText Scope="FACT.GenealogyWorkOrder Report" TextId="1016" LanguageCode="en-us" LocalizedText="Target Entity Name"/>
<aarsLayoutLocalizedText Scope="FACT.GenealogyWorkOrder Report" TextId="1017" LanguageCode="en-us" LocalizedText="Entities List"/>
<aarsLayoutLocalizedText Scope="FACT.GenealogyWorkOrder Report" TextId="1018" LanguageCode="en-us" LocalizedText="Items List"/>
<aarsLayoutLocalizedText Scope="FACT.GenealogyWorkOrder Report" TextId="1019" LanguageCode="en-us" LocalizedText="Work OrderID List"/>
<aarsLayoutLocalizedText Scope="FACT.GenealogyWorkOrder Report" TextId="1020" LanguageCode="en-us" LocalizedText="From"/>
<aarsLayoutLocalizedText Scope="FACT.GenealogyWorkOrder Report" TextId="1021" LanguageCode="en-us" LocalizedText="To"/>
</ROOT>'
EXEC sp_xml_preparedocument @docHandle OUTPUT, @xmlDocument
-- Use OPENXML to provide rowset consisting of data.
INSERT aarsLayoutLocalizedText
SELECT * 
FROM OPENXML(@docHandle, N'/ROOT/aarsLayoutLocalizedText') 
  WITH aarsLayoutLocalizedText
GO

--Add new custom entries in aarsLayoutLocalizedText table--
--For Reports Production Entity
DECLARE @docHandle int
declare @xmlDocument nvarchar(max) 
set @xmlDocument = N'<ROOT>
<aarsLayoutLocalizedText Scope="FACT.DowntimeAnalysis Report" TextId="1000" LanguageCode="en-us" LocalizedText="Entity Name"/>
<aarsLayoutLocalizedText Scope="FACT.DowntimeAnalysis Report" TextId="1001" LanguageCode="en-us" LocalizedText="Item ID"/>
<aarsLayoutLocalizedText Scope="FACT.DowntimeAnalysis Report" TextId="1002" LanguageCode="en-us" LocalizedText="Work Order ID"/>
<aarsLayoutLocalizedText Scope="FACT.DowntimeAnalysis Report" TextId="1003" LanguageCode="en-us" LocalizedText="Shift Name"/>
<aarsLayoutLocalizedText Scope="FACT.DowntimeAnalysis Report" TextId="1004" LanguageCode="en-us" LocalizedText="Group Name"/>
<aarsLayoutLocalizedText Scope="FACT.DowntimeAnalysis Report" TextId="1005" LanguageCode="en-us" LocalizedText="Group State"/>
<aarsLayoutLocalizedText Scope="FACT.DowntimeAnalysis Report" TextId="1006" LanguageCode="en-us" LocalizedText="Occurences"/>
<aarsLayoutLocalizedText Scope="FACT.DowntimeAnalysis Report" TextId="1007" LanguageCode="en-us" LocalizedText="Duration(mins)"/>
<aarsLayoutLocalizedText Scope="FACT.DowntimeAnalysis Report" TextId="1008" LanguageCode="en-us" LocalizedText="% Total Duration"/>
<aarsLayoutLocalizedText Scope="FACT.DowntimeAnalysis Report" TextId="1009" LanguageCode="en-us" LocalizedText="Outlining"/>
<aarsLayoutLocalizedText Scope="FACT.DowntimeAnalysis Report" TextId="1010" LanguageCode="en-us" LocalizedText="Expanded"/>
<aarsLayoutLocalizedText Scope="FACT.DowntimeAnalysis Report" TextId="1011" LanguageCode="en-us" LocalizedText="Collapsed"/>
<aarsLayoutLocalizedText Scope="FACT.DowntimeAnalysis Report" TextId="1012" LanguageCode="en-us" LocalizedText="Top 10 Downtime Durations by Reason"/>
<aarsLayoutLocalizedText Scope="FACT.DowntimeAnalysis Report" TextId="1013" LanguageCode="en-us" LocalizedText="Downtime Reason Gruop"/>
<aarsLayoutLocalizedText Scope="FACT.DowntimeAnalysis Report" TextId="1014" LanguageCode="en-us" LocalizedText="Downtime Reason State"/>
<aarsLayoutLocalizedText Scope="FACT.DowntimeAnalysis Report" TextId="1015" LanguageCode="en-us" LocalizedText="Reason Name"/>
<aarsLayoutLocalizedText Scope="FACT.DowntimeAnalysis Report" TextId="1016" LanguageCode="en-us" LocalizedText="Hour"/>
<aarsLayoutLocalizedText Scope="FACT.DowntimeAnalysis Report" TextId="1017" LanguageCode="en-us" LocalizedText="Day"/>
<aarsLayoutLocalizedText Scope="FACT.DowntimeAnalysis Report" TextId="1018" LanguageCode="en-us" LocalizedText="Week"/>
<aarsLayoutLocalizedText Scope="FACT.DowntimeAnalysis Report" TextId="1019" LanguageCode="en-us" LocalizedText="Month"/>
<aarsLayoutLocalizedText Scope="FACT.DowntimeAnalysis Report" TextId="1020" LanguageCode="en-us" LocalizedText="Year"/>
<aarsLayoutLocalizedText Scope="FACT.DowntimeAnalysis Report" TextId="1021" LanguageCode="en-us" LocalizedText="Entities List"/>
<aarsLayoutLocalizedText Scope="FACT.DowntimeAnalysis Report" TextId="1022" LanguageCode="en-us" LocalizedText="Items List"/>
<aarsLayoutLocalizedText Scope="FACT.DowntimeAnalysis Report" TextId="1023" LanguageCode="en-us" LocalizedText="Work OrderID List"/>
<aarsLayoutLocalizedText Scope="FACT.DowntimeAnalysis Report" TextId="1024" LanguageCode="en-us" LocalizedText="Shift Name List"/>
<aarsLayoutLocalizedText Scope="FACT.DowntimeAnalysis Report" TextId="1025" LanguageCode="en-us" LocalizedText="From"/>
<aarsLayoutLocalizedText Scope="FACT.DowntimeAnalysis Report" TextId="1026" LanguageCode="en-us" LocalizedText="To"/>
</ROOT>'
EXEC sp_xml_preparedocument @docHandle OUTPUT, @xmlDocument
-- Use OPENXML to provide rowset consisting of data.
INSERT aarsLayoutLocalizedText
SELECT * 
FROM OPENXML(@docHandle, N'/ROOT/aarsLayoutLocalizedText') 
  WITH aarsLayoutLocalizedText
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PEMGetTimePeriodInfo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[PEMGetTimePeriodInfo]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PEMGetDurationValues]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[PEMGetDurationValues]
GO

CREATE PROCEDURE [dbo].[PEMGetTimePeriodInfo]
	@StartDateTime DateTime = NULL,
	@EndDateTime   DateTime = NULL,
	@TimeZoneId INT = -1,
	@Duration INT = 0
AS
SET NOCOUNT ON

-- Get UTC versions of the times to use with the History table
DECLARE @StartDateTimeUTC DateTime
DECLARE @EndDateTimeUTC DateTime

DECLARE @DurationLabel nvarchar(50)
SET @DurationLabel = dbo.aarsGetLanguageText('aaTimeRangeEnum',@Duration)

-- Need to determine if the parameter values came from the ArchestrA Reports parameter page or the standard Microsoft page
-- For the logic below to work correctly, the report should include an integer parameter "TimeZoneId" with a default value of "-1",
-- which will be overridden by the ArchestrA Reports parameter page
IF @TimeZoneId = -1
   BEGIN -- The ArchestrA Reports parameter page will never supply a value of "-1". Assume the time is in "server local" time rather than UTC
      SET @TimeZoneId = -100
	  SET @StartDateTimeUTC = dbo.TimeZoneToUtc(@StartDateTime, -100)
	  SET @EndDateTimeUTC = dbo.TimeZoneToUtc(@EndDateTime, -100)
   END
ELSE
   BEGIN -- The times are already in UTC, coming from the ArchestrA Reports parameter page
	  SET @StartDateTimeUTC = @StartDateTime
	  SET @EndDateTimeUTC = @EndDateTime
   END

-- The times are in UTC, now adjust for the "named time periods"
SET @StartDateTimeUTC = dbo.CalculateStartTimeUtc(@StartDateTimeUTC, @Duration, @TimeZoneId)
SET @EndDateTimeUTC = dbo.CalculateEndTimeUtc(@EndDateTimeUTC, @Duration, @TimeZoneId)

-- Ensure the times are in "server local" time for use with all the SQL Server tables
SET @StartDateTime = dbo.UtcToTimeZone(@StartDateTimeUTC,@TimeZoneId)
SET @EndDateTime = dbo.UtcToTimeZone(@EndDateTimeUTC,@TimeZoneId)

-- Output the results
SELECT 
	@StartDateTimeUTC AS StartDateTimeUTC, 
	@EndDateTimeUTC AS EndDateTimeUTC,
	dbo.DateTimeToFileTime(@StartDateTimeUTC) as StartFileTimeUTC,
	dbo.DateTimeToFileTime(@EndDateTimeUTC) as EndFileTimeUTC, 
	@StartDateTime AS StartDateTimeLocal, 
	@EndDateTime AS EndDateTimeLocal, 
	@TimeZoneId AS TimeZoneId, 
	dbo.TimeZoneDisplayName(@TimeZoneId) AS TimeZone, 
	dbo.TimeZoneDisplayName(-100) AS ServerTimeZone,
	@Duration AS DurationId,
	@DurationLabel AS Duration
GO

CREATE FUNCTION PEMGetDurationValues 
(
	@Scope nvarchar(50) = N'aaTimeRangeEnum',
	@LanguageCode NCHAR(6) = NULL
)
RETURNS 
@tblDurations TABLE 
(
	-- Add the column definitions for the TABLE variable here
	TextId int, 
	LocalizedText nvarchar(50)
)
AS
BEGIN
	IF ((select count(TextId)
		FROM aarsLayoutLocalizedText
		WHERE LanguageCode= @LanguageCode AND Scope = @Scope) = 0 )
	BEGIN
		--If you can not find entries for this LanguageCode
		SET @LanguageCode = CAST((SELECT TOP 1 [Value] FROM [dbo].[aarsSystemParameters] WHERE ParameterName='DefaultLanguageCode') AS NCHAR(6))
	END
	INSERT INTO @tblDurations
	SELECT TextId,LocalizedText
		FROM aarsLayoutLocalizedText
		WHERE LanguageCode= dbo.aarsGetLanguageCode(@Scope,@LanguageCode)
			AND Scope = @Scope
	RETURN 
END
GO
-------------------------------------------------------------
---epm
-------------------------------------------------------------
--SP Cleanup
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rpt_FACT_EventsDetail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[rpt_FACT_EventsDetail]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rpt_FACT_EventsDetail_MLReasGrp]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[rpt_FACT_EventsDetail_MLReasGrp]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rpt_FACT_EventsChrono]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[rpt_FACT_EventsChrono]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rpt_FACT_OEE_Analysis_By_Period]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[rpt_FACT_OEE_Analysis_By_Period]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rpt_FACT_OEE_Detail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[rpt_FACT_OEE_Detail]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rpt_FACT_OEE_Losses]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[rpt_FACT_OEE_Losses]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rpt_FACT_OEETimeResolution]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[rpt_FACT_OEETimeResolution]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rpt_FACT_ParetoHighLevelGrouping]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[rpt_FACT_ParetoHighLevelGrouping]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rpt_FACT_ParetoAggregates]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[rpt_FACT_ParetoAggregates]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rpt_FACT_LossType]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[rpt_FACT_LossType]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rpt_FACT_NotDefined]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[rpt_FACT_NotDefined]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rpt_FACT_Get_Util_WhereClause]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[rpt_FACT_Get_Util_WhereClause]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rpt_FACT_EventsDurationPieChart]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[rpt_FACT_EventsDurationPieChart]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rpt_FACT_EventsPareto]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[rpt_FACT_EventsPareto]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rpt_FACT_EventsCountPieChart]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[rpt_FACT_EventsCountPieChart]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rpt_FACT_OEE_GetTimeFilter]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[rpt_FACT_OEE_GetTimeFilter]

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MES_RedirectViews]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[MES_RedirectViews]
--Cleanup
--The language entries are already taken care of earlier (Scope like 'FACT.%')

--Cleanup help tables
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aaFACT_ColumnNames]') AND type in (N'U'))
DROP TABLE [dbo].[aaFACT_ColumnNames]
GO

--Create the table for column mapping
CREATE TABLE [dbo].[aaFACT_ColumnNames](
	[Scope] [nvarchar](50) COLLATE Latin1_General_CI_AI NOT NULL,
	[TextId] [int] NOT NULL,
	[ColumnName] [nvarchar](50) COLLATE Latin1_General_CI_AI NOT NULL
) ON [PRIMARY]
GO

CREATE UNIQUE NONCLUSTERED INDEX [ScopeAndTextId] ON [dbo].[aaFACT_ColumnNames] 
(
	[Scope] ASC,
	[TextId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

Insert into dbo.aarsLayoutLocalizedText
(Scope,TextId, LanguageCode,LocalizedText,Description)
Select N'FACT.ReportTemplate' as Scope,TextId,LanguageCode, LocalizedText, Description from 
dbo.aarsLayoutLocalizedText where Scope='ReportTemplate'
GO

DECLARE @docHandle int
declare @xmlDocument nvarchar(max) 

set @xmlDocument = N'<ROOT>
<aaFACT_ColumnNames Scope="FACT.ParetoGrouping" TextId="0" ColumnName="NoGroup"/>
<aaFACT_ColumnNames Scope="FACT.ParetoGrouping" TextId="1" ColumnName="ReasonGrpDesc"/>
<aaFACT_ColumnNames Scope="FACT.ParetoGrouping" TextId="2" ColumnName="ReasonDesc"/>
<aaFACT_ColumnNames Scope="FACT.ParetoGrouping" TextId="3" ColumnName="UtilStateDesc"/>
<aaFACT_ColumnNames Scope="FACT.ParetoGrouping" TextId="4" ColumnName="ShiftDesc"/>
<aaFACT_ColumnNames Scope="FACT.ParetoGrouping" TextId="5" ColumnName="EntityName"/>
<aaFACT_ColumnNames Scope="FACT.ParetoGrouping" TextId="6" ColumnName="LossType"/>
<aaFACT_ColumnNames Scope="FACT.ParetoGrouping" TextId="7" ColumnName="ProductID"/>
<aaFACT_ColumnNames Scope="FACT.ParetoGrouping" TextId="8" ColumnName="WOID"/>
<aaFACT_ColumnNames Scope="FACT.ParetoGrouping" TextId="9" ColumnName="UserID"/>
<aaFACT_ColumnNames Scope="FACT.OEEFactorName" TextId="100" ColumnName="System Schedule"/>
<aaFACT_ColumnNames Scope="FACT.OEEFactorName" TextId="200" ColumnName="Availability"/>
<aaFACT_ColumnNames Scope="FACT.OEEFactorName" TextId="300" ColumnName="Performance"/>
<aaFACT_ColumnNames Scope="FACT.OEEFactorName" TextId="400" ColumnName="Quality"/>
<aaFACT_ColumnNames Scope="FACT.OEETimeCategory" TextId="101" ColumnName="Scheduled Time"/>
<aaFACT_ColumnNames Scope="FACT.OEETimeCategory" TextId="102" ColumnName="Idle"/>
<aaFACT_ColumnNames Scope="FACT.OEETimeCategory" TextId="201" ColumnName="Operating Time"/>
<aaFACT_ColumnNames Scope="FACT.OEETimeCategory" TextId="202" ColumnName="Downtime"/>
<aaFACT_ColumnNames Scope="FACT.OEETimeCategory" TextId="301" ColumnName="Net Operating Time"/>
<aaFACT_ColumnNames Scope="FACT.OEETimeCategory" TextId="302" ColumnName="Speed Losses"/>
<aaFACT_ColumnNames Scope="FACT.OEETimeCategory" TextId="401" ColumnName="Fully Productive Time"/>
<aaFACT_ColumnNames Scope="FACT.OEETimeCategory" TextId="402" ColumnName="Quality Losses"/>
<aaFACT_ColumnNames Scope="FACT.OEETimeResolution" TextId="0" ColumnName="Day"/>  
<aaFACT_ColumnNames Scope="FACT.OEETimeResolution" TextId="1" ColumnName="Shift"/> 
<aaFACT_ColumnNames Scope="FACT.OEETimeResolution" TextId="2" ColumnName="Hour"/> 
</ROOT>'
EXEC sp_xml_preparedocument @docHandle OUTPUT, @xmlDocument
-- Use OPENXML to provide rowset consisting of data.
INSERT aaFACT_ColumnNames
SELECT * 
FROM OPENXML(@docHandle, N'/ROOT/aaFACT_ColumnNames') 
  WITH aaFACT_ColumnNames
GO

DECLARE @docHandle int
declare @xmlDocument nvarchar(max) 

set @xmlDocument = N'<ROOT>
<aarsLayoutLocalizedText Scope="FACT.OEE Details Report" TextId="0" LanguageCode="en-us" LocalizedText="OEE Details" Description="OEE Details"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Details Report" TextId="1" LanguageCode="en-us" LocalizedText="Data Filtering Criteria" Description="Data Filtering Criteria"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Details Report" TextId="2" LanguageCode="en-us" LocalizedText="Efficiency Trend" Description="Efficiency Trend"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Details Report" TextId="3" LanguageCode="en-us" LocalizedText="Efficiency Losses" Description="Efficiency Losses"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Details Report" TextId="4" LanguageCode="en-us" LocalizedText="Event Categories" Description="Event Categories"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Details Report" TextId="5" LanguageCode="en-us" LocalizedText="OEE Detailed Information" Description="OEE Detailed Information"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Details Report" TextId="6" LanguageCode="en-us" LocalizedText="Entity Name" Description=" "/>
<aarsLayoutLocalizedText Scope="FACT.OEE Details Report" TextId="7" LanguageCode="en-us" LocalizedText="Item ID" Description=" "/>
<aarsLayoutLocalizedText Scope="FACT.OEE Details Report" TextId="8" LanguageCode="en-us" LocalizedText="Others" Description="Others"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Details Report" TextId="9" LanguageCode="en-us" LocalizedText="Work Order ID" Description=" "/>
<aarsLayoutLocalizedText Scope="FACT.OEE Details Report" TextId="10" LanguageCode="en-us" LocalizedText="User ID" Description=" "/>
<aarsLayoutLocalizedText Scope="FACT.OEE Details Report" TextId="11" LanguageCode="en-us" LocalizedText="Shift Desc" Description="Shift Desc"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Details Report" TextId="12" LanguageCode="en-us" LocalizedText="Time Resolution" Description=" "/>
<aarsLayoutLocalizedText Scope="FACT.OEE Details Report" TextId="13" LanguageCode="en-us" LocalizedText="Downtime Events Duration" Description="Downtime Events Duration"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Details Report" TextId="14" LanguageCode="en-us" LocalizedText="Runtime Events Duration" Description="Runtime Events Duration"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Details Report" TextId="15" LanguageCode="en-us" LocalizedText="Period" Description=" "/>
<aarsLayoutLocalizedText Scope="FACT.OEE Details Report" TextId="16" LanguageCode="en-us" LocalizedText="Scheduled Time" Description="Scheduled Time"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Details Report" TextId="17" LanguageCode="en-us" LocalizedText="Production Time" Description="Production Time"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Details Report" TextId="18" LanguageCode="en-us" LocalizedText="Good Units" Description=" "/>
<aarsLayoutLocalizedText Scope="FACT.OEE Details Report" TextId="19" LanguageCode="en-us" LocalizedText="Bad Units" Description=" "/>
<aarsLayoutLocalizedText Scope="FACT.OEE Details Report" TextId="20" LanguageCode="en-us" LocalizedText="Total Units" Description=" "/>
<aarsLayoutLocalizedText Scope="FACT.OEE Details Report" TextId="21" LanguageCode="en-us" LocalizedText="Theor. Units" Description=" "/>
<aarsLayoutLocalizedText Scope="FACT.OEE Details Report" TextId="22" LanguageCode="en-us" LocalizedText="Availability" Description=" "/>
<aarsLayoutLocalizedText Scope="FACT.OEE Details Report" TextId="23" LanguageCode="en-us" LocalizedText="Performance" Description=" "/>
<aarsLayoutLocalizedText Scope="FACT.OEE Details Report" TextId="24" LanguageCode="en-us" LocalizedText="Quality" Description=" "/>
<aarsLayoutLocalizedText Scope="FACT.OEE Details Report" TextId="25" LanguageCode="en-us" LocalizedText="OEE" Description=" "/>
<aarsLayoutLocalizedText Scope="FACT.OEE Details Report" TextId="26" LanguageCode="en-us" LocalizedText="Report Generated On " Description=" "/>
<aarsLayoutLocalizedText Scope="FACT.OEE Details Report" TextId="27" LanguageCode="en-us" LocalizedText="ALL" Description=" "/>
<aarsLayoutLocalizedText Scope="FACT.OEE Details Report" TextId="28" LanguageCode="en-us" LocalizedText="Time Period" Description="Time Period"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Details Report" TextId="29" LanguageCode="en-us" LocalizedText="Duration" Description="Duration"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Analysis Report" TextId="0" LanguageCode="en-us" LocalizedText="OEE Analysis" Description="OEE Analysis"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Analysis Report" TextId="1" LanguageCode="en-us" LocalizedText="Time Resolution" Description="Time Resolution"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Analysis Report" TextId="2" LanguageCode="en-us" LocalizedText="Time Period" Description="Time Period"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Analysis Report" TextId="3" LanguageCode="en-us" LocalizedText="Shift Desc" Description="Shift Desc"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Analysis Report" TextId="4" LanguageCode="en-us" LocalizedText="Area" Description="Area"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Analysis Report" TextId="5" LanguageCode="en-us" LocalizedText="Entity Name" Description="Entity Name"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Analysis Report" TextId="6" LanguageCode="en-us" LocalizedText="Item ID" Description="Item ID"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Analysis Report" TextId="7" LanguageCode="en-us" LocalizedText="Job" Description="Job"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Analysis Report" TextId="8" LanguageCode="en-us" LocalizedText="Work Order ID" Description="Work Order ID"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Analysis Report" TextId="9" LanguageCode="en-us" LocalizedText="User ID" Description="User ID"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Analysis Report" TextId="10" LanguageCode="en-us" LocalizedText="Data Filtering Criteria" Description="Data Filtering Criteria"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Analysis Report" TextId="11" LanguageCode="en-us" LocalizedText="Efficiency Analysis" Description="Efficiency Analysis"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Analysis Report" TextId="12" LanguageCode="en-us" LocalizedText="OEE Trend" Description="OEE Trend"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Analysis Report" TextId="13" LanguageCode="en-us" LocalizedText="ALL" Description="All"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Analysis Report" TextId="14" LanguageCode="en-us" LocalizedText="OEE" Description="OEE"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Analysis Report" TextId="15" LanguageCode="en-us" LocalizedText="Availability" Description="Availability"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Analysis Report" TextId="16" LanguageCode="en-us" LocalizedText="Performance" Description="Performance"/>
<aarsLayoutLocalizedText Scope="FACT.OEE Analysis Report" TextId="17" LanguageCode="en-us" LocalizedText="Quality" Description="Quality"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="0" LanguageCode="en-us" LocalizedText="Production Events Summary for Utilization" Description="Production Events Summary for Utilization"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="1" LanguageCode="en-us" LocalizedText="Events Time Order" Description="Events Date/Time Order"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="2" LanguageCode="en-us" LocalizedText="Time Period" Description="Time Period"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="3" LanguageCode="en-us" LocalizedText="Reason Group Desc" Description="Reason Group Desc"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="4" LanguageCode="en-us" LocalizedText="Reason Desc" Description="Reason Desc"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="5" LanguageCode="en-us" LocalizedText="Average Duration" Description="Average Duration"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="6" LanguageCode="en-us" LocalizedText="Util State Desc" Description="Util State Desc"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="7" LanguageCode="en-us" LocalizedText="Shift Desc" Description="Shift Desc"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="8" LanguageCode="en-us" LocalizedText="Duration" Description="Duration"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="9" LanguageCode="en-us" LocalizedText="Entity Name" Description="Entity Name"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="10" LanguageCode="en-us" LocalizedText="Loss Type" Description="Loss Type"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="11" LanguageCode="en-us" LocalizedText="Item ID" Description="Item ID"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="12" LanguageCode="en-us" LocalizedText="User Notes" Description="User Notes"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="13" LanguageCode="en-us" LocalizedText="Work Order ID" Description="Work Order ID"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="14" LanguageCode="en-us" LocalizedText="User ID" Description="User ID"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="15" LanguageCode="en-us" LocalizedText="Pareto Count/Duration" Description="Pareto Count/Duration:"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="16" LanguageCode="en-us" LocalizedText="Pareto Top Count" Description="Pareto Top Count"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="17" LanguageCode="en-us" LocalizedText="Pareto Low Level Grouping" Description="Pareto Low Level Grouping"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="18" LanguageCode="en-us" LocalizedText="Pareto High Level Grouping" Description="Pareto High Level Grouping"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="19" LanguageCode="en-us" LocalizedText="Min. Event Duration (sec)" Description="Min. Event Duration (sec)"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="20" LanguageCode="en-us" LocalizedText="Data Filtering Criteria" Description="Data Filtering Criteria"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="21" LanguageCode="en-us" LocalizedText="Events Count" Description="Events Count"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="22" LanguageCode="en-us" LocalizedText="Events Duration" Description="Events Duration"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="23" LanguageCode="en-us" LocalizedText="Utilization Reasons Gantt Chart" Description="Utilization Reasons Gain Chart"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="24" LanguageCode="en-us" LocalizedText="Pareto Chart" Description="Pareto Chart"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="25" LanguageCode="en-us" LocalizedText="Events Detail" Description="Events Detail"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="26" LanguageCode="en-us" LocalizedText="Start Time" Description="Start Time"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="27" LanguageCode="en-us" LocalizedText="End Time" Description="End Time"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="28" LanguageCode="en-us" LocalizedText="Total Duration" Description="Total Duration"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="29" LanguageCode="en-us" LocalizedText="Number of Events" Description="Number of Events"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="30" LanguageCode="en-us" LocalizedText="ALL" Description="All possible choices"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="31" LanguageCode="en-us" LocalizedText="Color" Description="Color"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="32" LanguageCode="en-us" LocalizedText="No Data" Description="Label for period with no events logged"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="33" LanguageCode="en-us" LocalizedText="Pareto" Description="Pareto"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="34" LanguageCode="en-us" LocalizedText="Others" Description="Others"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="35" LanguageCode="en-us" LocalizedText="Ascending" Description="Label for ascending order"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="36" LanguageCode="en-us" LocalizedText="Descending" Description="Label for descending order"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="37" LanguageCode="en-us" LocalizedText="Category 1" Description="Label for Category 1"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="38" LanguageCode="en-us" LocalizedText="Category 2" Description="Label for Category 2"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="39" LanguageCode="en-us" LocalizedText="Category 3" Description="Label for Category 3"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="40" LanguageCode="en-us" LocalizedText="Category 4" Description="Label for Category 4"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="41" LanguageCode="en-us" LocalizedText="Reason Group(s)\Reason\Entity" Description="Multi Level Reason Tree"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="42" LanguageCode="en-us" LocalizedText="Production Event Summary by Utilization Reason Group" Description="Title for Production Event Summary by Utilization Reason Group"/>
<aarsLayoutLocalizedText Scope="FACT.Production Events Summary for Utilization" TextId="43" LanguageCode="en-us" LocalizedText="OEE Category" Description="Label to match to LossType"/>
<aarsLayoutLocalizedText Scope="FACT._Events Pareto Report" TextId="0" LanguageCode="en-us" LocalizedText="Row Order"  Description="Row Order"/>
<aarsLayoutLocalizedText Scope="FACT._Events Pareto Report" TextId="1" LanguageCode="en-us" LocalizedText="Group High"  Description="Group High"/>
<aarsLayoutLocalizedText Scope="FACT._Events Pareto Report" TextId="2" LanguageCode="en-us" LocalizedText="Group Low"  Description="Group Low"/>
<aarsLayoutLocalizedText Scope="FACT._Events Pareto Report" TextId="3" LanguageCode="en-us" LocalizedText="Events Count"  Description="Events Count"/>
<aarsLayoutLocalizedText Scope="FACT._Events Pareto Report" TextId="4" LanguageCode="en-us" LocalizedText="Duration"  Description="Duration"/>
<aarsLayoutLocalizedText Scope="FACT._Events Pareto Report" TextId="5" LanguageCode="en-us" LocalizedText="Events Count %"  Description="Events Count %"/>
<aarsLayoutLocalizedText Scope="FACT._Events Pareto Report" TextId="6" LanguageCode="en-us" LocalizedText="Duration %"  Description="Duration %"/>
<aarsLayoutLocalizedText Scope="FACT._Events Pareto Report" TextId="7" LanguageCode="en-us" LocalizedText="Others" Description="Group for Other Reasons"/>
<aarsLayoutLocalizedText Scope="FACT._Events Duration Report" TextId="0" LanguageCode="en-us" LocalizedText="Reason Desc"  Description="Reason Desc"/>
<aarsLayoutLocalizedText Scope="FACT._Events Duration Report" TextId="1" LanguageCode="en-us" LocalizedText="Duration"  Description="Duration"/>
<aarsLayoutLocalizedText Scope="FACT._Events Duration Report" TextId="2" LanguageCode="en-us" LocalizedText="Duration %"  Description="Duration %"/>
<aarsLayoutLocalizedText Scope="FACT._Events Duration Report" TextId="3" LanguageCode="en-us" LocalizedText="Others" Description="Group for Other Reasons"/>
<aarsLayoutLocalizedText Scope="FACT._Events Count Report" TextId="0" LanguageCode="en-us" LocalizedText="Reason Desc"  Description="Reason Desc"/>
<aarsLayoutLocalizedText Scope="FACT._Events Count Report" TextId="1" LanguageCode="en-us" LocalizedText="Events Count"  Description="Events Count"/>
<aarsLayoutLocalizedText Scope="FACT._Events Count Report" TextId="2" LanguageCode="en-us" LocalizedText="Events Count %"  Description="Events Count %"/>
<aarsLayoutLocalizedText Scope="FACT._Events Count Report" TextId="3" LanguageCode="en-us" LocalizedText="Others" Description="Group for Other Reasons"/>
<aarsLayoutLocalizedText Scope="FACT._Events Chrono Report" TextId="0" LanguageCode="en-us" LocalizedText="Event Start Date/Time"  Description="Event Start Date/Time"/>
<aarsLayoutLocalizedText Scope="FACT._Events Chrono Report" TextId="1" LanguageCode="en-us" LocalizedText="Entity Name"  Description="Entity Name"/>
<aarsLayoutLocalizedText Scope="FACT._Events Chrono Report" TextId="2" LanguageCode="en-us" LocalizedText="Reason Desc"  Description="Reason Desc"/>
<aarsLayoutLocalizedText Scope="FACT._Events Chrono Report" TextId="3" LanguageCode="en-us" LocalizedText="Duration"  Description="Duration"/>
<aarsLayoutLocalizedText Scope="FACT._Events Chrono Report" TextId="4" LanguageCode="en-us" LocalizedText="No Data"  Description="No Data"/>
<aarsLayoutLocalizedText Scope="FACT._Event Categories Performance Losses Report" TextId="0" LanguageCode="en-us" LocalizedText="Performance Losses" Description="Performance Losses"/>
<aarsLayoutLocalizedText Scope="FACT._Event Categories Performance Losses Report" TextId="1" LanguageCode="en-us" LocalizedText="Reason Desc" Description="Reason Desc"/>
<aarsLayoutLocalizedText Scope="FACT._Event Categories Performance Losses Report" TextId="2" LanguageCode="en-us" LocalizedText="Duration" Description="Duration"/>
<aarsLayoutLocalizedText Scope="FACT._Event Categories Performance Losses Report" TextId="3" LanguageCode="en-us" LocalizedText="Duration %" Description="Duration %"/>
<aarsLayoutLocalizedText Scope="FACT._Event Categories Performance Losses Report" TextId="4" LanguageCode="en-us" LocalizedText="Others" Description="Group for Other Reasons"/>
<aarsLayoutLocalizedText Scope="FACT._Event Categories Availability Losses Report" TextId="0" LanguageCode="en-us" LocalizedText="Availability Losses" Description="Availability Losses"/>
<aarsLayoutLocalizedText Scope="FACT._Event Categories Availability Losses Report" TextId="1" LanguageCode="en-us" LocalizedText="Reason Desc" Description="Reason Desc"/>
<aarsLayoutLocalizedText Scope="FACT._Event Categories Availability Losses Report" TextId="2" LanguageCode="en-us" LocalizedText="Duration" Description="Duration"/>
<aarsLayoutLocalizedText Scope="FACT._Event Categories Availability Losses Report" TextId="3" LanguageCode="en-us" LocalizedText="Duration %" Description="Duration %"/>
<aarsLayoutLocalizedText Scope="FACT._Event Categories Availability Losses Report" TextId="4" LanguageCode="en-us" LocalizedText="Others" Description="Group for Other Reasons"/>
<aarsLayoutLocalizedText Scope="FACT._Trend Data Report" TextId="0" LanguageCode="en-us" LocalizedText="OEE Analysis by Period - Trend" Description="OEE Analysis by Period - Trend"/>
<aarsLayoutLocalizedText Scope="FACT._Trend Data Report" TextId="1" LanguageCode="en-us" LocalizedText="Entity Name" Description="Entity Name"/>
<aarsLayoutLocalizedText Scope="FACT._Trend Data Report" TextId="2" LanguageCode="en-us" LocalizedText="OEE" Description="OEE"/>
<aarsLayoutLocalizedText Scope="FACT._Trend Data Report" TextId="3" LanguageCode="en-us" LocalizedText="Availability" Description="Availability"/>
<aarsLayoutLocalizedText Scope="FACT._Trend Data Report" TextId="4" LanguageCode="en-us" LocalizedText="Performance" Description="Performance"/>
<aarsLayoutLocalizedText Scope="FACT._Trend Data Report" TextId="5" LanguageCode="en-us" LocalizedText="Quality" Description="Quality"/>
<aarsLayoutLocalizedText Scope="FACT._Trend Data Report" TextId="6" LanguageCode="en-us" LocalizedText="Period End Time" Description="Period End Time"/>
<aarsLayoutLocalizedText Scope="FACT._OEE Analysis by Period Report" TextId="0" LanguageCode="en-us" LocalizedText="Day Period" Description="Day Period"/>
<aarsLayoutLocalizedText Scope="FACT._OEE Analysis by Period Report" TextId="1" LanguageCode="en-us" LocalizedText="Shift Desc" Description="Shift"/>
<aarsLayoutLocalizedText Scope="FACT._OEE Analysis by Period Report" TextId="2" LanguageCode="en-us" LocalizedText="Period Start" Description="Period Start"/>
<aarsLayoutLocalizedText Scope="FACT._OEE Analysis by Period Report" TextId="3" LanguageCode="en-us" LocalizedText="Entity Name" Description="Entity Name"/>
<aarsLayoutLocalizedText Scope="FACT._OEE Analysis by Period Report" TextId="4" LanguageCode="en-us" LocalizedText="Period Last Hour" Description="Period Last Hour"/>
<aarsLayoutLocalizedText Scope="FACT._OEE Analysis by Period Report" TextId="5" LanguageCode="en-us" LocalizedText="Schedule Time" Description="Schedule Time"/>
<aarsLayoutLocalizedText Scope="FACT._OEE Analysis by Period Report" TextId="6" LanguageCode="en-us" LocalizedText="Production Time" Description="Production Time"/>
<aarsLayoutLocalizedText Scope="FACT._OEE Analysis by Period Report" TextId="7" LanguageCode="en-us" LocalizedText="Good Units" Description="Good Units"/>
<aarsLayoutLocalizedText Scope="FACT._OEE Analysis by Period Report" TextId="8" LanguageCode="en-us" LocalizedText="Total Units" Description="Total Units"/>
<aarsLayoutLocalizedText Scope="FACT._OEE Analysis by Period Report" TextId="9" LanguageCode="en-us" LocalizedText="Theoretical Count" Description="Theoretical Count"/>
<aarsLayoutLocalizedText Scope="FACT.ParetoGrouping" TextId="0" LanguageCode="en-us" LocalizedText="N/A" Description="NoGroup"/>
<aarsLayoutLocalizedText Scope="FACT.ParetoGrouping" TextId="1" LanguageCode="en-us" LocalizedText="Reason Group Desc" Description="ReasonGrpDesc"/>
<aarsLayoutLocalizedText Scope="FACT.ParetoGrouping" TextId="2" LanguageCode="en-us" LocalizedText="Reason Desc" Description="ReasonDesc"/>
<aarsLayoutLocalizedText Scope="FACT.ParetoGrouping" TextId="3" LanguageCode="en-us" LocalizedText="Util State Desc" Description="UtilStateDesc"/>
<aarsLayoutLocalizedText Scope="FACT.ParetoGrouping" TextId="4" LanguageCode="en-us" LocalizedText="Shift Desc" Description="ShiftDesc"/>
<aarsLayoutLocalizedText Scope="FACT.ParetoGrouping" TextId="5" LanguageCode="en-us" LocalizedText="Entity Name" Description="EntityName"/>
<aarsLayoutLocalizedText Scope="FACT.ParetoGrouping" TextId="6" LanguageCode="en-us" LocalizedText="Loss Type" Description="LossType"/>
<aarsLayoutLocalizedText Scope="FACT.ParetoGrouping" TextId="7" LanguageCode="en-us" LocalizedText="Item ID" Description="ProductID"/>
<aarsLayoutLocalizedText Scope="FACT.ParetoGrouping" TextId="8" LanguageCode="en-us" LocalizedText="Work Order ID" Description="WOID"/>
<aarsLayoutLocalizedText Scope="FACT.ParetoGrouping" TextId="9" LanguageCode="en-us" LocalizedText="User ID" Description="UserID"/>
<aarsLayoutLocalizedText Scope="FACT._Losses Data Report" TextId="0" LanguageCode="en-us" LocalizedText="OEE Losses" Description=""/>
<aarsLayoutLocalizedText Scope="FACT._Losses Data Report" TextId="1" LanguageCode="en-us" LocalizedText="OEE Factor Name" Description=""/>
<aarsLayoutLocalizedText Scope="FACT._Losses Data Report" TextId="2" LanguageCode="en-us" LocalizedText="OEE Time Category" Description=""/>
<aarsLayoutLocalizedText Scope="FACT._Losses Data Report" TextId="3" LanguageCode="en-us" LocalizedText="OEE Duration /Days" Description=""/>
<aarsLayoutLocalizedText Scope="FACT.OEEFactorName" TextId="100" LanguageCode="en-us" LocalizedText="System Schedule" Description="System Schedule"/>
<aarsLayoutLocalizedText Scope="FACT.OEEFactorName" TextId="200" LanguageCode="en-us" LocalizedText="Availability" Description="Availability"/>
<aarsLayoutLocalizedText Scope="FACT.OEEFactorName" TextId="300" LanguageCode="en-us" LocalizedText="Performance" Description="Performance"/>
<aarsLayoutLocalizedText Scope="FACT.OEEFactorName" TextId="400" LanguageCode="en-us" LocalizedText="Quality" Description="Quality"/>
<aarsLayoutLocalizedText Scope="FACT.OEETimeCategory" TextId="101" LanguageCode="en-us" LocalizedText="Scheduled Time" Description="Scheduled Time"/>
<aarsLayoutLocalizedText Scope="FACT.OEETimeCategory" TextId="102" LanguageCode="en-us" LocalizedText="Idle" Description="Idle"/>
<aarsLayoutLocalizedText Scope="FACT.OEETimeCategory" TextId="201" LanguageCode="en-us" LocalizedText="Operating Time" Description="Operating Time"/>
<aarsLayoutLocalizedText Scope="FACT.OEETimeCategory" TextId="202" LanguageCode="en-us" LocalizedText="Downtime" Description="Downtime"/>
<aarsLayoutLocalizedText Scope="FACT.OEETimeCategory" TextId="301" LanguageCode="en-us" LocalizedText="Net Operating Time" Description="Net Operating Time"/>
<aarsLayoutLocalizedText Scope="FACT.OEETimeCategory" TextId="302" LanguageCode="en-us" LocalizedText="Speed Losses" Description="Speed Losses"/>
<aarsLayoutLocalizedText Scope="FACT.OEETimeCategory" TextId="401" LanguageCode="en-us" LocalizedText="Fully Productive Time" Description="Fully Productive Time"/>
<aarsLayoutLocalizedText Scope="FACT.OEETimeCategory" TextId="402" LanguageCode="en-us" LocalizedText="Quality Losses" Description="Quality Losses"/>  
<aarsLayoutLocalizedText Scope="FACT.OEETimeResolution" TextId="0" LanguageCode="en-us" LocalizedText="Day" Description="Day"/>  
<aarsLayoutLocalizedText Scope="FACT.OEETimeResolution" TextId="1" LanguageCode="en-us" LocalizedText="Shift" Description="Shift"/> 
<aarsLayoutLocalizedText Scope="FACT.OEETimeResolution" TextId="2" LanguageCode="en-us" LocalizedText="Hour" Description="Hour"/> 
<aarsLayoutLocalizedText Scope="FACT.ParetoAggregate" TextId="0" LanguageCode="en-us" LocalizedText="Count" Description="Count"/>  
<aarsLayoutLocalizedText Scope="FACT.ParetoAggregate" TextId="1" LanguageCode="en-us" LocalizedText="Duration" Description="Duration"/> 
<aarsLayoutLocalizedText Scope="FACT.NotDefined"      TextId="0" LanguageCode="en-us" LocalizedText="Not Defined" Description="Not Defined"/> 
<aarsLayoutLocalizedText Scope="FACT.LossType" TextId="1" LanguageCode="en-us" LocalizedText="Idle" Description="Idle"/> 
<aarsLayoutLocalizedText Scope="FACT.LossType" TextId="2" LanguageCode="en-us" LocalizedText="Availability Loss" Description="Availability Loss"/> 
<aarsLayoutLocalizedText Scope="FACT.LossType" TextId="3" LanguageCode="en-us" LocalizedText="Performance Loss" Description="Performance Loss"/> 
<aarsLayoutLocalizedText Scope="FACT.OEECategory" TextId="1" LanguageCode="en-us" LocalizedText="Idle" Description="Idle"/> 
<aarsLayoutLocalizedText Scope="FACT.OEECategory" TextId="2" LanguageCode="en-us" LocalizedText="Downtime" Description="Map to Availability Loss"/> 
<aarsLayoutLocalizedText Scope="FACT.OEECategory" TextId="3" LanguageCode="en-us" LocalizedText="Runtime" Description="Map to Performance Loss"/> 
</ROOT>'
EXEC sp_xml_preparedocument @docHandle OUTPUT, @xmlDocument
-- Use OPENXML to provide rowset consisting of data.
INSERT aarsLayoutLocalizedText
SELECT * 
FROM OPENXML(@docHandle, N'/ROOT/aarsLayoutLocalizedText') 
  WITH aarsLayoutLocalizedText
GO

--CREATE PROCEDURE [dbo].[rpt_FACT_NotDefined]
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[rpt_FACT_NotDefined]
	@LanguageCode     NCHAR(6),
	@LabelNotDefined  NVARCHAR(50) OUT
AS

SET @LabelNotDefined = N'NotDefined'


IF (SELECT COUNT(TextId) FROM aarsLayoutLocalizedText WHERE Scope = N'FACT.NotDefined')>0
BEGIN

SELECT @LabelNotDefined = (
	SELECT LocalizedText
	FROM    aarsLayoutLocalizedText 
	WHERE	(Scope = N'FACT.NotDefined' 
			AND aarsLayoutLocalizedText.LanguageCode = dbo.aarsGetLanguageCode(N'FACT.NotDefined',@LanguageCode)))
END
GO

--CREATE PROCEDURE [dbo].[rpt_FACT_LossType]
CREATE PROCEDURE [dbo].[rpt_FACT_LossType]
	@LanguageCode NCHAR(6)
AS

BEGIN

DECLARE @TMP TABLE
      (TextId          INT,
       LocalizedText   NVARCHAR(256),
	   OEECatLabel	   NVARCHAR(50),
       LossType		   NVARCHAR(50),
	   OrderId		   INT)

INSERT INTO @TMP
		SELECT     LossType.TextId, LossType.LocalizedText, OEECategory.LocalizedText as OEECatLabel, N'',1
		FROM         aarsLayoutLocalizedText as LossType inner join  aarsLayoutLocalizedText as OEECategory
on LossType.TextId = OEECategory.TextId
		WHERE (LossType.Scope = N'FACT.LossType') and (OEECategory.Scope = N'FACT.OEECategory')
			AND (LossType.LanguageCode = dbo.aarsGetLanguageCode(N'FACT.LossType',@LanguageCode))
			AND (OEECategory.LanguageCode = dbo.aarsGetLanguageCode(N'FACT.OEECategory',@LanguageCode))
UPDATE @TMP
SET LossType = N'Idle'
WHERE TextId = 1

UPDATE @TMP
SET LossType = N'Availability Loss'
WHERE TextId = 2

UPDATE @TMP
SET LossType = N'Performance Loss'
WHERE TextId = 3

INSERT INTO @TMP
SELECT     0, N'ALL',N'ALL',N'ALL',0

SELECT * FROM @TMP
ORDER BY OrderId,LocalizedText

END
GO

--CREATE PROCEDURE [dbo].[rpt_FACT_ParetoHighLevelGrouping]
CREATE PROCEDURE [dbo].[rpt_FACT_ParetoHighLevelGrouping]
	@LowLevelGroupDesc NVARCHAR(256),
	@LanguageCode NCHAR(6),
	@Scope NVARCHAR(50),
	@ParetoTopCount INT
AS

BEGIN

DECLARE @TMP TABLE
      (Scope           NVARCHAR(50),
       TextId          INT,
       LanguageCode    NCHAR(6),
       LocalizedText   NVARCHAR(256),
       ColumnName      NVARCHAR(50)) 

IF (@ParetoTopCount = 0) 
	BEGIN
		INSERT INTO @TMP
		SELECT     aarsLayoutLocalizedText.Scope, aarsLayoutLocalizedText.TextId, LanguageCode, LocalizedText,ColumnName
		FROM         aarsLayoutLocalizedText 
		INNER JOIN aaFACT_ColumnNames ON 
		(aarsLayoutLocalizedText.Scope = aaFACT_ColumnNames.Scope AND 
		aarsLayoutLocalizedText.TextId = aaFACT_ColumnNames.TextId)
		WHERE     (aarsLayoutLocalizedText.Scope = @Scope) 
		AND (LanguageCode = dbo.aarsGetLanguageCode(@Scope,@LanguageCode)) 
		AND ColumnName <> @LowLevelGroupDesc
	END
ELSE
	--Only the 'NoGroup' is an option for this case @ParetoTopCount <> 0
	BEGIN
		INSERT INTO @TMP
		SELECT     aarsLayoutLocalizedText.Scope, aarsLayoutLocalizedText.TextId, LanguageCode, LocalizedText,ColumnName
		FROM         aarsLayoutLocalizedText 
		INNER JOIN aaFACT_ColumnNames ON 
		(aarsLayoutLocalizedText.Scope = aaFACT_ColumnNames.Scope AND 
		aarsLayoutLocalizedText.TextId = aaFACT_ColumnNames.TextId)
		WHERE     (aarsLayoutLocalizedText.Scope = @Scope) 
		AND (LanguageCode = dbo.aarsGetLanguageCode(@Scope,@LanguageCode)) 
		AND ColumnName = N'NoGroup'
	END

SELECT Scope, TextId, LanguageCode, LocalizedText, ColumnName
FROM @TMP
ORDER BY TextId

END
GO

--CREATE PROCEDURE [dbo].[rpt_FACT_OEETimeResolution]
CREATE PROCEDURE [dbo].[rpt_FACT_OEETimeResolution]
	@LanguageCode NCHAR(6)
AS

BEGIN

DECLARE @TMP TABLE
      (TextId          INT,
       LocalizedText   NVARCHAR(256),
       ColumnName      NVARCHAR(50)) 

INSERT INTO @TMP
		SELECT     aarsLayoutLocalizedText.TextId, LocalizedText,ColumnName
		FROM         aarsLayoutLocalizedText 
			INNER JOIN aaFACT_ColumnNames ON 
				(aarsLayoutLocalizedText.Scope = aaFACT_ColumnNames.Scope AND 
					aarsLayoutLocalizedText.TextId = aaFACT_ColumnNames.TextId)
		WHERE (aarsLayoutLocalizedText.Scope = N'FACT.OEETimeResolution') 
			AND (LanguageCode = dbo.aarsGetLanguageCode(N'FACT.OEETimeResolution',@LanguageCode)) 
		
SELECT TextId, LocalizedText, ColumnName
FROM @TMP
ORDER BY TextId

END
GO

----CREATE PROCEDURE [dbo].[rpt_FACT_Get_Util_WhereClause]
CREATE PROCEDURE [dbo].[rpt_FACT_Get_Util_WhereClause]
   	@ReasonGrpDesc				NVARCHAR(4000),
    @ReasonDesc					NVARCHAR(4000),
    @UtilStateDesc              NVARCHAR(4000),
    @ShiftDesc					NVARCHAR(4000),
    @EntityName                 NVARCHAR(4000),
    @LossType					NVARCHAR(4000),
    @ProductID					NVARCHAR(4000),
    @WOID						NVARCHAR(4000),
    @UserID						NVARCHAR(4000),
    @Category1                  NVARCHAR(4000)= N'',
    @Category2                  NVARCHAR(4000)= N'',
    @Category3                  NVARCHAR(4000)= N'',
    @Category4                  NVARCHAR(4000)= N'',
    @MinEventDuration			INT,
	@WhereClause				NVARCHAR(4000) OUT
AS
BEGIN

SET @WhereClause = N''

IF @ReasonGrpDesc <> N''
BEGIN
SET @WhereClause = @WhereClause + ' AND ReasonGrpDesc IN ' + @ReasonGrpDesc + N''
END
IF @ReasonDesc <> N''
BEGIN
SET @WhereClause = @WhereClause + ' AND ReasonDesc IN ' + @ReasonDesc + N''
END
IF @UtilStateDesc <> N''
BEGIN
SET @WhereClause = @WhereClause + ' AND  UtilStateDesc IN ' + @UtilStateDesc + N''
END
IF @ShiftDesc <> N''
BEGIN
SET @WhereClause = @WhereClause + ' AND  ShiftDesc IN ' + @ShiftDesc + N''
END
IF @EntityName <> N''
BEGIN
SET @WhereClause = @WhereClause + ' AND  EntityName IN ' + @EntityName + N''
END
IF @LossType <> N''
BEGIN
SET @WhereClause = @WhereClause + ' AND  LossType IN ' + @LossType + N''
END
IF @ProductID <> N''
BEGIN
SET @WhereClause = @WhereClause + ' AND  ProductID IN ' + @ProductID + N''
END

IF @Category1 <> N''
BEGIN
SET @WhereClause = @WhereClause + ' AND Category1 IN ' + @Category1 + N''
END
IF @Category2 <> N''
BEGIN
SET @WhereClause = @WhereClause + ' AND Category2 IN ' + @Category2 + N''
END
IF @Category3 <> N''
BEGIN
SET @WhereClause = @WhereClause + ' AND Category3 IN ' + @Category3 + N''
END
IF @Category4 <> N''
BEGIN
SET @WhereClause = @WhereClause + ' AND Category4 IN ' + @Category4 + N''
END
--This was WO.wo_desc
IF @WOID <> N'ALL'
BEGIN
SET @WhereClause = @WhereClause + ' AND  WOID = ' + @WOID + N''
END

IF @UserID <> N''
BEGIN
SET @WhereClause = @WhereClause + ' AND  UserID IN ' + @UserID + N''
END

IF @MinEventDuration > 0
BEGIN
SET @WhereClause = @WhereClause + ' AND  Duration >= ' + CONVERT(NVARCHAR,@MinEventDuration)
END
END
GO

--CREATE PROCEDURE [dbo].[rpt_FACT_ParetoAggregates]
CREATE PROCEDURE [dbo].[rpt_FACT_ParetoAggregates]
	@LanguageCode NCHAR(6)
AS


DECLARE @CountLabel NVARCHAR(256)
DECLARE @DurationLabel NVARCHAR(256)

SET @CountLabel = N'Count'
SET @DurationLabel = N'Duration'


SET NOCOUNT ON

CREATE TABLE #TMP (TextId  INT, LocalizedText   NVARCHAR(256)) 

INSERT INTO #TMP
SELECT  TextId, LocalizedText
FROM    aarsLayoutLocalizedText 
WHERE	(Scope = N'FACT.ParetoAggregate' 
		AND aarsLayoutLocalizedText.LanguageCode = dbo.aarsGetLanguageCode(N'FACT.ParetoAggregate',@LanguageCode))

IF ((SELECT COUNT(TextId) FROM #TMP WHERE TextId = 0)>0)
BEGIN
	SET @CountLabel = (SELECT LocalizedText FROM #TMP WHERE TextId = 0)--TextID 0 is for Count
END

IF (SELECT COUNT(TextId) FROM #TMP WHERE TextId = 1)>0
BEGIN
	SELECT @DurationLabel = (SELECT LocalizedText FROM #TMP WHERE TextId = 1)--TextID 1 is for Duration
END
	
CREATE TABLE #Result 
(TextId          INT,
LocalizedText   NVARCHAR(256),
Value		   NVARCHAR(20))

INSERT INTO #Result
SELECT 0,@CountLabel, N'Count'

INSERT INTO #Result
SELECT 1,@DurationLabel, N'Duration'

INSERT INTO #Result
SELECT 2,@CountLabel + N', ' + @DurationLabel, N'Count, Duration'

INSERT INTO #Result
SELECT 3,@DurationLabel + N', ' + @CountLabel , N'Duration, Count'

select * from #Result	
GO

---CREATE PROCEDURE [dbo].[rpt_FACT_EventsCountPieChart]
CREATE PROCEDURE [dbo].[rpt_FACT_EventsCountPieChart]
    @StartDateTimeUTC           DATETIME ,
    @EndDateTimeUTC             DATETIME ,
	@TimeZoneId					INT = -1,
	@ReasonGrpDesc				NVARCHAR(4000),
    @ReasonDesc					NVARCHAR(4000),
    @UtilStateDesc              NVARCHAR(4000),
    @ShiftDesc					NVARCHAR(4000),
    @EntityName                 NVARCHAR(4000),
    @LossType					NVARCHAR(4000),
    @ProductID					NVARCHAR(4000),
    @WOID						NVARCHAR(4000),
    @UserID						NVARCHAR(4000),
    @Category1                  NVARCHAR(4000)= N'',
    @Category2                  NVARCHAR(4000)= N'',
    @Category3                  NVARCHAR(4000)= N'',
    @Category4                  NVARCHAR(4000)= N'',
    @MinEventDuration			INT,
	@LanguageCode				NVARCHAR(6),
	@LabelForOtherReasons		NVARCHAR(80) = N'Others',
	@ExecuteAgainstRestoreDB	BIT=0
AS
--*************************************************************
-- NAME...:  rpt_FACT_EventsCountPieChart
-- VERSION: 0.1
-- AUTHOR.: Diana Ivanova
--
-- DESCRIPTION:
--
-- MODIFICATIONS: -
--
-- NOTES: -
--*************************************************************

--*************************************************************
-- Declare local variables
--*************************************************************
DECLARE @TopClause			NVARCHAR(50)
DECLARE @WhereClause		NVARCHAR(4000)
DECLARE @OrderBy			NVARCHAR(50)
DECLARE @LabelNotDefined	NVARCHAR(50)
DECLARE @SourceView NVARCHAR(100)

IF(@ExecuteAgainstRestoreDB=0) 
	BEGIN
		SET @SourceView = N'rpt_vw_FACT_ProductionEvents'
	END
ELSE
	BEGIN
		SET @SourceView = N'rpt_vw_FACT_ProductionEvents_Restore'
	END

-- Set parameter values here.

EXECUTE rpt_FACT_NotDefined
   @LanguageCode
  ,@LabelNotDefined OUTPUT

--*************************************************************
-- Set local variables
--*************************************************************
SET @TopClause = 'TOP 10'
SET @OrderBy = 'CountEvent'

EXEC rpt_FACT_Get_Util_WhereClause
@ReasonGrpDesc,
@ReasonDesc,
@UtilStateDesc,
@ShiftDesc,
@EntityName,
@LossType,
@ProductID,
@WOID,
@UserID,
@Category1,
@Category2,
@Category3,
@Category4,
@MinEventDuration,
@WhereClause OUT

SET NOCOUNT ON

--*************************************************************
-- Create Temporary tables.
--*************************************************************
CREATE TABLE #AllResults (ReasonDesc NVARCHAR(80),CountEvent INT,ColorCode NVARCHAR(20))
CREATE TABLE #TopN (ReasonDesc NVARCHAR(80),CountEvent INT,ColorCode NVARCHAR(20))
CREATE TABLE #Others (ReasonDesc NVARCHAR(80),CountEvent INT,ColorCode NVARCHAR(20))
CREATE TABLE #Final (ReasonDesc NVARCHAR(80),CountEvent INT,CountEventPercent FLOAT NULL,ColorCode NVARCHAR(20))

--*************************************************************
-- Main Select.
--*************************************************************
INSERT INTO #AllResults
--Fix for CR81454: We may get multiple records with the same ID, ReasonCode but differnt WOID
--That's why we do: COUNT(DISTINCT ID)
EXEC('SELECT CASE WHEN ReasonDesc IS NULL
                  THEN ''' + @LabelNotDefined + ''' ELSE ReasonDesc
             END AS ReasonDesc,
             COUNT(DISTINCT ID) AS CountEvent,
             ColorCode
            FROM ' + @SourceView +
           ' WHERE ((StartDateTimeUTC >= '''+@StartDateTimeUTC+''' AND StartDateTimeUTC < '''+ @EndDateTimeUTC +''')
              OR (EndDateTimeUTC > '''+@StartDateTimeUTC+''' AND EndDateTimeUTC <= '''+ @EndDateTimeUTC +''')
              OR (StartDateTimeUTC < '''+@StartDateTimeUTC+''' AND EndDateTimeUTC > '''+ @EndDateTimeUTC +'''))
              ' + @WhereClause +'
           GROUP BY  ReasonDesc,ColorCode ')

INSERT  INTO #TopN
EXEC ('SELECT '+ @TopClause +' *  FROM #AllResults ORDER BY '+ @OrderBy +' DESC ')

DELETE #AllResults
  FROM  #TopN
  WHERE #AllResults.ReasonDesc = #TopN.ReasonDesc

IF EXISTS(SELECT * FROM #AllResults)
BEGIN
   INSERT INTO #Others
   SELECT @LabelForOtherReasons AS ReasonDesc, SUM(CountEvent) AS CountEvent, 'Gray' AS ColorCode FROM #AllResults
END

INSERT INTO #Final (ReasonDesc,CountEvent,ColorCode)
EXEC ('SELECT ReasonDesc,CountEvent,ColorCode FROM #TopN ORDER BY '+@OrderBy+' DESC')

INSERT INTO #Final (ReasonDesc,CountEvent,ColorCode)
EXEC('SELECT * FROM #Others')

UPDATE #Final
    SET CountEventPercent = CONVERT(FLOAT,CountEvent)/SumCountEvent
    FROM (SELECT SUM(CountEvent) AS SumCountEvent
             FROM #Final) AS Aggregates

SELECT  ReasonDesc,
        CountEvent,
        CountEventPercent,
        ColorCode
   FROM  #Final
GO

--CREATE PROCEDURE [dbo].[rpt_FACT_OEE_GetTimeFilter]
CREATE PROCEDURE [dbo].[rpt_FACT_OEE_GetTimeFilter]
    @StartDateTimeUTC           DATETIME,
    @EndDateTimeUTC				DATETIME,
    @TimeZoneId					INT,
    @ShiftDesc					NVARCHAR(4000),
    @EntityName					NVARCHAR(4000),
    @ProductID					NVARCHAR(4000),
    @WOID						NVARCHAR(40),
	@ExecuteAgainstRestoreDB	BIT=0
AS
--*************************************************************
-- NAME...:  rpt_FACT_OEE_GetTimeFilter
-- VERSION: 0.1
-- AUTHOR.: Diana Ivanov
--
-- DESCRIPTION: Retrieves the actual start and end time used
-- to filter the data in tpm_stat table
--
-- MODIFICATIONS: -
--
-- NOTES: -
--*************************************************************

--*************************************************************
-- Declare local variable
--*************************************************************
DECLARE	@FilterStartTimeUTC			DATETIME
DECLARE	@FilterEndTimeUTC			DATETIME
DECLARE	@FilterStartTimeDisplay		DATETIME
DECLARE	@FilterEndTimeDisplay		DATETIME

DECLARE @WhereClause NVARCHAR(4000)
DECLARE @ExecQuery   NVARCHAR(4000)
DECLARE @SourceView	   NVARCHAR(100)

IF(@ExecuteAgainstRestoreDB=0) 
	BEGIN
		SET @SourceView = N'rpt_vw_FACT_EfficiencyData'
	END
ELSE
	SET @SourceView = N'rpt_vw_FACT_EfficiencyData_Restore'
--*************************************************************
-- Set local variable
--*************************************************************
EXEC rpt_FACT_Get_Util_WhereClause
N'',--@ReasonGrpDesc
N'',--@ReasonDesc
N'',--@UtilStateDesc
@ShiftDesc,
@EntityName,
N'',--@LossType
@ProductID,
@WOID,
N'',--@UserID
N'',--@Category1
N'',--@Category2
N'',--@Category3
N'',--@Category4
0--@MinEventDuration
,@WhereClause OUT

SET NOCOUNT ON

--*************************************************************
-- Creating Temporary table.
--*************************************************************
--DI: Note
--In the old implementation
--The calculated (local) ShiftStartTime was called EndDateTime
CREATE TABLE #OEETime
(
	CalcTime DateTime NULL
)

DECLARE @MinTime DATETIME
DECLARE @MaxTime DATETIME

SET @ExecQuery = '( SELECT MAX(HourStartUTC)' +
					'  FROM ' + @SourceView + ' WHERE HourStartUTC <= '''+
					+ CONVERT(NVARCHAR,@StartDateTimeUTC,109)+''' ' +
					@WhereClause + ')'

INSERT INTO #OEETime
EXEC (@ExecQuery)

SET @MinTime = (SELECT CalcTime FROM #OEETime)
DELETE FROM #OEETime


IF (@MinTime IS NULL OR DATEDIFF(hh,@MinTime,@StartDateTimeUTC)>0)--1
	BEGIN
		SET @FilterStartTimeUTC = @StartDateTimeUTC
		SET @MinTime = NULL
	END
ELSE
	SET @FilterStartTimeUTC =@MinTime

SET @ExecQuery = '(SELECT MIN(HourStartUTC) ' +
					'  FROM ' + @SourceView + ' WHERE HourStartUTC >= ''' +
					CONVERT(NVARCHAR,@EndDateTimeUTC,109) + '''' + @WhereClause + ')'
INSERT INTO #OEETime
EXEC (@ExecQuery)

SET @MaxTime = (SELECT CalcTime FROM #OEETime)
DELETE FROM #OEETime

IF (@MaxTime IS NULL OR DATEDIFF(hh,@EndDateTimeUTC,@MaxTime)>1)
	BEGIN
		SET @FilterEndTimeUTC = @EndDateTimeUTC
		SET @MaxTime = NULL
	END
ELSE
	SET @FilterEndTimeUTC =@MaxTime

SET @FilterStartTimeDisplay = dbo.UTCToTimeZone(@FilterStartTimeUTC,CONVERT(NVARCHAR,@TimeZoneId))
SET @FilterEndTimeDisplay   = dbo.UTCToTimeZone(@FilterEndTimeUTC,CONVERT(NVARCHAR,@TimeZoneId))

SELECT @FilterStartTimeUTC	AS 'FilterStartTimeUTC'
,@FilterEndTimeUTC			AS 'FilterEndTimeUTC'
,@FilterStartTimeDisplay	AS 'FilterStartTimeDisplay'
,@FilterEndTimeDisplay		AS 'FilterEndTimeDisplay'
,@MinTime					AS 'ClosestLowRangeUTC'
,@MaxTime					AS 'ClosestHighRangeUTC'
GO


--CREATE PROCEDURE [dbo].[rpt_FACT_OEE_Analysis_By_Period]
CREATE PROCEDURE [dbo].[rpt_FACT_OEE_Analysis_By_Period]
    @StartDateTimeUTC           DATETIME,
    @EndDateTimeUTC				DATETIME,
	@TimeZoneId					INT,
	@ShiftDesc					NVARCHAR(4000),
    @EntityName					NVARCHAR(4000),
    @ProductID					NVARCHAR(4000),
    @WOID						NVARCHAR(40),
    @TimeResolution				NVARCHAR(25),
	@ExecuteAgainstRestoreDB	BIT=0
AS
--*************************************************************
-- NAME:  rpt_FACT_OEE_Analysis_By_Period
-- VERSION: 0.1
-- AUTHOR.: Diana Ivanov
--
-- DESCRIPTION: Retrieves efficiency data.
-- NOTES: -
--*************************************************************

--*************************************************************
-- Declare local variable
--*************************************************************

DECLARE @SelectClause	NVARCHAR(4000)
DECLARE @WhereClause	NVARCHAR(4000)
DECLARE @GroupBy		NVARCHAR(4000)
DECLARE @OrderBy		NVARCHAR(50)
DECLARE @Exec			NVARCHAR(4000)

--*************************************************************
-- Set local variable
--*************************************************************
-- Build WHERE Clause
EXEC rpt_FACT_Get_Util_WhereClause
N'',--@ReasonGrpDesc
N'',--@ReasonDesc
N'',--@UtilStateDesc
@ShiftDesc,
@EntityName,
N'',--@LossType
@ProductID,
@WOID,
N'',--@UserID
N'',--@Category1
N'',--@Category2
N'',--@Category3
N'',--@Category4
0--@MinEventDuration
,@WhereClause OUT

SET @SelectClause = ''
SET @GroupBy = ''
SET @OrderBy = ''

--The following expression will try to extract from ShiftStartTimeUTC (with convert style option 111)
--to local date only portion (yy/mm/dd) - CONVERT(DATETIME,'2008-03-08 06:00:00.000',111)
DECLARE @PeriodStart NVARCHAR(200)

SET @PeriodStart = CASE @TimeResolution
WHEN 'Day'
	THEN
		' CONVERT(DATETIME,CONVERT(NVARCHAR,dbo.UTCToTimeZone(ShiftStartTimeUTC,'+ CONVERT(NVARCHAR,@TimeZoneId) +'),111)) '
WHEN 'Shift'
	THEN
		' dbo.UTCToTimeZone(ShiftStartTimeUTC,'+ CONVERT(NVARCHAR(25),@TimeZoneId) +') '
ELSE
		' dbo.UTCToTimeZone(HourStartUTC,'+ CONVERT(NVARCHAR(25),@TimeZoneId) +') '
END
--select @PeriodDay

SET @SelectClause = 'SELECT ' + @PeriodStart +  ' AS PeriodStart, ' +
					CASE @TimeResolution
                         WHEN 'Day'
                          THEN '''N/A'' AS ShiftDesc,
								  EntityName,
								  MAX(dbo.UTCToTimeZone(HourStartUTC,'+ CONVERT(NVARCHAR(25),@TimeZoneId) +')) AS PeriodLastTime,
                                  SUM(IntervalSeconds-Idle) AS ScheduledTime,
                                  SUM(IntervalSeconds-Idle-AvailabilityLosses) AS ProductionTime,
                                  SUM(GoodUnits) AS GoodUnits, SUM(TotalUnits) AS TotalUnits,
                                  SUM(TheoreticalRate * (IntervalSeconds-Idle-AvailabilityLosses)) AS TheoreticalCount '
                        WHEN 'Shift'
                         THEN 'ShiftDesc,
								  EntityName,
								  MAX(dbo.UTCToTimeZone(HourStartUTC,'+ CONVERT(NVARCHAR(25),@TimeZoneId) +')) AS PeriodLastTime,
                                  SUM(IntervalSeconds-Idle) AS ScheduledTime,
                                  SUM(IntervalSeconds-Idle-AvailabilityLosses) AS ProductionTime,
                                  SUM(GoodUnits) AS GoodUnits, SUM(TotalUnits) AS TotalUnits,
                                  SUM(TheoreticalRate * (IntervalSeconds-Idle-AvailabilityLosses)) AS TheoreticalCount '

						ELSE 'ShiftDesc,
								  EntityName,
								  MAX(dbo.UTCToTimeZone(HourStartUTC,'+ CONVERT(NVARCHAR(25),@TimeZoneId) +')) AS PeriodLastTime,
                                  SUM(IntervalSeconds-Idle) AS ScheduledTime,
                                  SUM(IntervalSeconds-Idle-AvailabilityLosses) AS ProductionTime,
                                  SUM(GoodUnits) AS GoodUnits, SUM(TotalUnits) AS TotalUnits,
                                  SUM(TheoreticalRate * (IntervalSeconds-Idle-AvailabilityLosses)) AS TheoreticalCount '

						END

--select @SelectClause

SELECT @GroupBy = CASE @TimeResolution
					 WHEN 'Day'
						THEN 'GROUP BY ' + @PeriodStart + ', EntityName '
                     WHEN 'Shift'
						THEN 'GROUP BY ' + @PeriodStart + ', ShiftID, ShiftDesc, EntityName '
                     ELSE
						'GROUP BY ' + @PeriodStart + ', ShiftID, ShiftDesc, EntityName '
                  END


SET NOCOUNT ON

DECLARE @TimeFilter	 NVARCHAR(200)
SET @TimeFilter = ' HourStartUTC >= '''+CONVERT(NVARCHAR,@StartDateTimeUTC,109)+''' AND HourStartUTC < '''+ CONVERT(NVARCHAR,@EndDateTimeUTC,109) +''''
--SET @TimeFilter = ' ShiftStartTimeUTC >= '''+CONVERT(NVARCHAR,@StartDateTimeUTC,121)+''' AND ShiftStartTimeUTC < '''+ CONVERT(NVARCHAR,@EndDateTimeUTC,121) +''''
--IF @TimeResolution = N'Hour'
--BEGIN
--	SET @TimeFilter = ' HourStartUTC >= '''+ CONVERT(NVARCHAR,DATEADD(hh, DATEPART(hh,@StartDateTimeUTC), CONVERT(DATETIME, CONVERT(NVARCHAR, @StartDateTimeUTC, 1))))  +''''
--	SET @TimeFilter = @TimeFilter + ' AND HourStartUTC < '''+ CONVERT(NVARCHAR,DATEADD(hh, DATEPART(hh,@EndDateTimeUTC), CONVERT(DATETIME, CONVERT(NVARCHAR, @EndDateTimeUTC, 1))))  +''''
--END
--*************************************************************
-- Main Select.
--*************************************************************
--Convert time style 121 produces: yyyy-mm-dd hh:mi:ss.mmm(24h)
DECLARE @SourceView	   NVARCHAR(100)

IF(@ExecuteAgainstRestoreDB=0) 
	BEGIN
		SET @SourceView = N'rpt_vw_FACT_EfficiencyData'
	END
ELSE
	SET @SourceView = N'rpt_vw_FACT_EfficiencyData_Restore'

SET @Exec = @SelectClause +
         ' FROM ' + @SourceView + ' WHERE ' + @TimeFilter + @WhereClause +' '
            + @GroupBy

EXEC (@Exec)
GO

--CREATE PROCEDURE [dbo].[rpt_FACT_OEE_Detail]
CREATE PROCEDURE [dbo].[rpt_FACT_OEE_Detail]
    @StartDateTimeUTC           DATETIME,
    @EndDateTimeUTC				DATETIME,
    @TimeZoneId					INT,
    @ShiftDesc					NVARCHAR(4000),
    @EntityName					NVARCHAR(4000),
    @ProductID					NVARCHAR(4000),
    @WOID						NVARCHAR(40),
    @TimeResolution				NVARCHAR(25)= N'Shift',
	@ExecuteAgainstRestoreDB	BIT=0
AS
--*************************************************************
-- NAME...:  rpt_FACT_OEE_Detail
-- VERSION: 0.1
-- AUTHOR.: Diana Ivanov
--
-- DESCRIPTION: Retrieves efficiency data.
--
-- MODIFICATIONS: -
--
-- NOTES: -
--*************************************************************

--*************************************************************
-- Declare local variable
--*************************************************************
DECLARE @SelectClause  NVARCHAR(4000)
DECLARE @WhereClause NVARCHAR(4000)
--*************************************************************
-- Set local variable
--*************************************************************
EXEC rpt_FACT_Get_Util_WhereClause
N'',--@ReasonGrpDesc
N'',--@ReasonDesc
N'',--@UtilStateDesc
@ShiftDesc,
@EntityName,
N'',--@LossType
@ProductID,
@WOID,
N'',--@UserID
N'',--@Category1
N'',--@Category2
N'',--@Category3
N'',--@Category4
0--@MinEventDuration
,@WhereClause OUT

SET NOCOUNT ON

--*************************************************************
-- Creating Temporary table.
--*************************************************************
--DI: Note
--In the old implementation
--The calculated (local) ShiftStartTime was called EndDateTime
CREATE TABLE #OEEDetailInfo
(
	ShiftDesc			NVARCHAR(80)  NULL,
	EntityName			NVARCHAR(80) NULL,
	ShiftStartTime		DATETIME NULL,
	HourStart			DATETIME NULL,
	ScheduledTime		INT NULL,
	ProductionTime		INT NULL,
	GoodUnits			INT NULL,
	TotalUnits			INT NULL,
	TheoreticalCount	FLOAT NULL,
)

SET @SelectClause =
	  'Select ShiftDesc,
       EntityName,
       dbo.UTCToTimeZone(ShiftStartTimeUTC,'+ CONVERT(NVARCHAR(20),@TimeZoneId) + ') ,
       dbo.UTCToTimeZone(HourStartUTC,'+ CONVERT(NVARCHAR(20),@TimeZoneId) + ') ,
       (IntervalSeconds-Idle) AS ScheduledTime,
       (IntervalSeconds-Idle-AvailabilityLosses) AS ProductionTime,
       GoodUnits,
       TotalUnits,
       TheoreticalRate * (IntervalSeconds-Idle-AvailabilityLosses) AS TheoreticalCount'

DECLARE @TimeFilter	 NVARCHAR(400)
SET @TimeFilter = ' HourStartUTC >= '''+CONVERT(NVARCHAR,@StartDateTimeUTC,109)+''' AND HourStartUTC < '''+ CONVERT(NVARCHAR,@EndDateTimeUTC,109) +''''
--SET @TimeFilter = ' ShiftStartTimeUTC >= '''+CONVERT(NVARCHAR,@StartDateTimeUTC,121)+''' AND ShiftStartTimeUTC < '''+ CONVERT(NVARCHAR,@EndDateTimeUTC,121) +''''
--IF @TimeResolution = N'Hour'
--BEGIN
--	SET @TimeFilter = ' HourStartUTC >= '''+ CONVERT(NVARCHAR,DATEADD(hh, DATEPART(hh,@StartDateTimeUTC), CONVERT(DATETIME, CONVERT(NVARCHAR, @StartDateTimeUTC, 1))))  +''''
--	SET @TimeFilter = @TimeFilter + ' AND HourStartUTC < '''+ CONVERT(NVARCHAR,DATEADD(hh, DATEPART(hh,@EndDateTimeUTC), CONVERT(DATETIME, CONVERT(NVARCHAR, @EndDateTimeUTC, 1))))  +''''
--END
--*************************************************************
-- Main Select.
--*************************************************************
DECLARE @SourceView	   NVARCHAR(100)

IF(@ExecuteAgainstRestoreDB=0) 
	BEGIN
		SET @SourceView = N'rpt_vw_FACT_EfficiencyData'
	END
ELSE
	SET @SourceView = N'rpt_vw_FACT_EfficiencyData_Restore'

INSERT INTO #OEEDetailInfo
EXEC( @SelectClause +
      '  FROM ' + @SourceView + ' WHERE ' + @TimeFilter + @WhereClause)

SELECT * FROM #OEEDetailInfo
GO

--CREATE PROCEDURE [dbo].[rpt_FACT_OEE_Losses]
CREATE PROCEDURE [dbo].[rpt_FACT_OEE_Losses]
    @StartDateTimeUTC           DATETIME,
    @EndDateTimeUTC				DATETIME,
	@TimeZoneId					INT,
	@ShiftDesc					NVARCHAR(4000),
    @EntityName					NVARCHAR(4000),
    @ProductID					NVARCHAR(4000),
    @WOID						NVARCHAR(40),
    @LanguageCode				NCHAR(6),
    @TimeResolution				NVARCHAR(25)= N'Shift',
	@ExecuteAgainstRestoreDB	BIT=0
AS
--*************************************************************
-- NAME...:  rpt_FACT_OEE_Losses
-- VERSION: 0.1
-- AUTHOR.: Diana Ivanov
--
-- DESCRIPTION: Retrieves efficiency losses data.
--
-- MODIFICATIONS: -
--
-- NOTES: -
--*************************************************************

--*************************************************************
-- Declare local variable
--*************************************************************

DECLARE @WhereClause NVARCHAR(4000)
DECLARE @Exec		 NVARCHAR(4000)
DECLARE @SourceView	   NVARCHAR(100)

IF(@ExecuteAgainstRestoreDB=0) 
	BEGIN
		SET @SourceView = N'rpt_vw_FACT_EfficiencyData'
	END
ELSE
	SET @SourceView = N'rpt_vw_FACT_EfficiencyData_Restore'

--*************************************************************
-- Set local variable
--*************************************************************
-- Build WHERE Clause
EXEC rpt_FACT_Get_Util_WhereClause
N'',--@ReasonGrpDesc
N'',--@ReasonDesc
N'',--@UtilStateDesc
@ShiftDesc,
@EntityName,
N'',--@LossType
@ProductID,
@WOID,
N'',--@UserID
N'',--@Category1
N'',--@Category2
N'',--@Category3
N'',--@Category4
0--@MinEventDuration
,@WhereClause OUT

SET NOCOUNT ON

--*************************************************************
-- Creating Temporary tables.
--*************************************************************
CREATE TABLE #OeeData(
	IntervalDuration INT
	,Idle INT
	,AvailabilityLosses INT
	,TotalProductionTime FLOAT
	,GoodProductionTime FLOAT
)

DECLARE @OeeLosses TABLE(
	 ChartIndex			INT IDENTITY
	,OEEFactorName		NVARCHAR(50)
	,TimeCategory		NVARCHAR(50)
	,Duration			FLOAT
)

DECLARE @TimeFilter	 NVARCHAR(400)
SET @TimeFilter = ' HourStartUTC >= '''+CONVERT(NVARCHAR,@StartDateTimeUTC,109)+''' AND HourStartUTC < '''+ CONVERT(NVARCHAR,@EndDateTimeUTC,109) +''''
--SET @TimeFilter = ' ShiftStartTimeUTC >= '''+CONVERT(NVARCHAR,@StartDateTimeUTC,121)+''' AND ShiftStartTimeUTC < '''+ CONVERT(NVARCHAR,@EndDateTimeUTC,121) +''''
--IF @TimeResolution = N'Hour'
--BEGIN
--	SET @TimeFilter = ' HourStartUTC >= '''+ CONVERT(NVARCHAR,DATEADD(hh, DATEPART(hh,@StartDateTimeUTC), CONVERT(DATETIME, CONVERT(NVARCHAR, @StartDateTimeUTC, 1))))  +''''
--	SET @TimeFilter = @TimeFilter + ' AND HourStartUTC < '''+ CONVERT(NVARCHAR,DATEADD(hh, DATEPART(hh,@EndDateTimeUTC), CONVERT(DATETIME, CONVERT(NVARCHAR, @EndDateTimeUTC, 1))))  +''''
--END
--*************************************************************
-- Main Select.
--*************************************************************
-- Retrieve OEE data
SET @Exec = 'INSERT INTO #OeeData
                SELECT SUM(IntervalSeconds)
                      ,SUM(Idle)
                      ,SUM(AvailabilityLosses)
                      ,SUM(CASE WHEN TheoreticalRate = 0.0 THEN 0.0 ELSE TotalUnits/TheoreticalRate END)
                      ,SUM(CASE WHEN TheoreticalRate = 0.0 THEN 0.0 ELSE GoodUnits/TheoreticalRate END)
                FROM ' + @SourceView + ' WHERE ' + @TimeFilter + @WhereClause
EXEC (@Exec)
---------------------------------------------------------------------------------------------------------------
--This whole section is just to get the localized labels for
--OEETimeCategory and OEEFactorName using these two tables:aarsLayoutLocalizedText and aaFACT_ColumnNames
DECLARE @OEEFactor TABLE
      (TextId          INT,
       LocalizedText   NVARCHAR(256),
       ColumnName      NVARCHAR(50))

INSERT INTO @OEEFactor
		SELECT     aarsLayoutLocalizedText.TextId, LocalizedText,ColumnName
		FROM         aarsLayoutLocalizedText
		INNER JOIN aaFACT_ColumnNames ON
		(aarsLayoutLocalizedText.Scope = aaFACT_ColumnNames.Scope AND
		aarsLayoutLocalizedText.TextId = aaFACT_ColumnNames.TextId)
		WHERE     (aarsLayoutLocalizedText.Scope = N'FACT.OEEFactorName')
		AND (LanguageCode = dbo.aarsGetLanguageCode(N'FACT.OEEFactorName',@LanguageCode))

DECLARE @OEETimeCategory TABLE
      (TextId          INT,
       LocalizedText   NVARCHAR(256),
       ColumnName      NVARCHAR(50))

INSERT INTO @OEETimeCategory
		SELECT     aarsLayoutLocalizedText.TextId, LocalizedText,ColumnName
		FROM         aarsLayoutLocalizedText
		INNER JOIN aaFACT_ColumnNames ON
		(aarsLayoutLocalizedText.Scope = aaFACT_ColumnNames.Scope AND
		aarsLayoutLocalizedText.TextId = aaFACT_ColumnNames.TextId)
		WHERE     (aarsLayoutLocalizedText.Scope = N'FACT.OEETimeCategory')
		AND (LanguageCode = dbo.aarsGetLanguageCode(N'FACT.OEETimeCategory',@LanguageCode))

DECLARE @OEEFactorCategory TABLE
(
	FactorLocalizedText		NVARCHAR(256),
	TimeCategoryLocalizedText	NVARCHAR(256),
	FactorColumnName			NVARCHAR(50),
	TimeCategoryColumnName		NVARCHAR(50)
)

INSERT INTO @OEEFactorCategory
select Factor.LocalizedText, Category.LocalizedText, Factor.ColumnName,Category.ColumnName
from @OEEFactor Factor Inner Join @OEETimeCategory Category ON
(Category.TextID > Factor.TextID and Category.TextID<(Factor.TextId+100))
-------------------------------------------------------------------------------------------
-- Build Result Set
INSERT INTO @OeeLosses (OEEFactorName,TimeCategory,Duration)
    SELECT Category.FactorLocalizedText
          ,Category.TimeCategoryLocalizedText
          ,CASE WHEN (IntervalDuration - Idle) < 0 THEN 0 ELSE IntervalDuration - Idle END
    FROM #OeeData, @OEEFactorCategory Category
	WHERE (Category.FactorColumnName = N'System Schedule'
			AND Category.TimeCategoryColumnName = N'Scheduled Time')

INSERT INTO @OeeLosses (OEEFactorName,TimeCategory,Duration)
	SELECT Category.FactorLocalizedText
          ,Category.TimeCategoryLocalizedText
          ,Idle
    FROM #OeeData, @OEEFactorCategory Category
	WHERE (Category.FactorColumnName = N'System Schedule'
			AND Category.TimeCategoryColumnName = N'Idle')

INSERT INTO @OeeLosses (OEEFactorName,TimeCategory,Duration)
    SELECT Category.FactorLocalizedText
          ,Category.TimeCategoryLocalizedText
          ,CASE WHEN (IntervalDuration - Idle - AvailabilityLosses) < 0 THEN 0 ELSE IntervalDuration - Idle - AvailabilityLosses END
    FROM #OeeData, @OEEFactorCategory Category
	WHERE (Category.FactorColumnName = N'Availability'
			AND Category.TimeCategoryColumnName = N'Operating Time')

INSERT INTO @OeeLosses (OEEFactorName,TimeCategory,Duration)
    SELECT Category.FactorLocalizedText
          ,Category.TimeCategoryLocalizedText
          ,AvailabilityLosses
    FROM #OeeData, @OEEFactorCategory Category
	WHERE (Category.FactorColumnName = N'Availability'
			AND Category.TimeCategoryColumnName = N'Downtime')

INSERT INTO @OeeLosses (OEEFactorName,TimeCategory,Duration)
    SELECT Category.FactorLocalizedText
          ,Category.TimeCategoryLocalizedText
          ,TotalProductionTime
    FROM #OeeData, @OEEFactorCategory Category
	WHERE (Category.FactorColumnName = N'Performance'
			AND Category.TimeCategoryColumnName = N'Net Operating Time')

INSERT INTO @OeeLosses (OEEFactorName,TimeCategory,Duration)
    SELECT Category.FactorLocalizedText
          ,Category.TimeCategoryLocalizedText
          ,CASE WHEN (IntervalDuration - Idle - AvailabilityLosses - TotalProductionTime) < 0 THEN 0 ELSE IntervalDuration - Idle - AvailabilityLosses - TotalProductionTime END
    FROM #OeeData, @OEEFactorCategory Category
	WHERE (Category.FactorColumnName = N'Performance'
			AND Category.TimeCategoryColumnName = N'Speed Losses')

INSERT INTO @OeeLosses (OEEFactorName,TimeCategory,Duration)
    SELECT Category.FactorLocalizedText
          ,Category.TimeCategoryLocalizedText
          ,GoodProductionTime
    FROM #OeeData, @OEEFactorCategory Category
	WHERE (Category.FactorColumnName = N'Quality'
			AND Category.TimeCategoryColumnName = N'Fully Productive Time')

INSERT INTO @OeeLosses (OEEFactorName,TimeCategory,Duration)
   SELECT Category.FactorLocalizedText
          ,Category.TimeCategoryLocalizedText
          ,CASE WHEN (TotalProductionTime - GoodProductionTime) < 0 THEN 0 ELSE TotalProductionTime - GoodProductionTime END
    FROM #OeeData, @OEEFactorCategory Category
	WHERE (Category.FactorColumnName = N'Quality'
			AND Category.TimeCategoryColumnName = N'Quality Losses')

-- Return Result Set
SELECT *
--,CONVERT(FLOAT,Duration)/3600.0/24.0 AS DurInDays
FROM @OeeLosses
ORDER BY ChartIndex
GO

--CREATE PROCEDURE [dbo].[rpt_FACT_EventsPareto]
CREATE PROCEDURE [dbo].[rpt_FACT_EventsPareto]
   @StartDateTimeUTC            DATETIME,
   @EndDateTimeUTC              DATETIME,
   @TimeZoneId					INT = -1,
   @ReasonGrpDesc				NVARCHAR(4000),
   @ReasonDesc                  NVARCHAR(4000),
   @UtilStateDesc               NVARCHAR(4000),
   @ShiftDesc					NVARCHAR(4000),
   @EntityName                  NVARCHAR(4000),
   @LossType					NVARCHAR(4000),
   @ProductID                   NVARCHAR(4000),
   @WOID                        NVARCHAR(4000),
   @UserID                      NVARCHAR(4000),
   @Category1                   NVARCHAR(4000)= N'',
   @Category2                   NVARCHAR(4000)= N'',
   @Category3                   NVARCHAR(4000)= N'',
   @Category4                   NVARCHAR(4000)= N'',
   @ParetoByCountOrDuration     NVARCHAR(50),
   @ParetoTopCount				INT,
   @ParetoLowLevelGrouping		NVARCHAR(50),
   @ParetoHighLevelGrouping		NVARCHAR(50),
   @MinEventDuration            INT,
   @LanguageCode				NVARCHAR(6),
   @LabelForOtherReasons		NVARCHAR(80) = N'Others',
   @ExecuteAgainstRestoreDB	BIT=0
AS
--*************************************************************
-- NAME...:  rpt_FACT_EventsPareto
-- VERSION: 0.1
-- AUTHOR.: Diana Ivanov
--
-- DESCRIPTION: Retrieves data for the Pareto Chart of Event
--              Summary report.
-- MODIFICATIONS: -
--
-- NOTES: -
--*************************************************************

--*************************************************************
-- Declare local variables
--*************************************************************

DECLARE @TopClause		NVARCHAR(4000)
DECLARE @WhereClause	NVARCHAR(4000)
DECLARE @OrderBy		NVARCHAR(50)
DECLARE @LabelNotDefined NVARCHAR(50)
DECLARE @SourceView	   NVARCHAR(100)

IF(@ExecuteAgainstRestoreDB=0) 
	BEGIN
		SET @SourceView = N'rpt_vw_FACT_ProductionEvents'
	END
ELSE
	SET @SourceView = N'rpt_vw_FACT_ProductionEvents_Restore'

--*************************************************************
-- Set local variables
--*************************************************************
EXECUTE rpt_FACT_NotDefined
   @LanguageCode
  ,@LabelNotDefined OUTPUT

SET @TopClause = CASE WHEN @ParetoTopCount = 0
                      THEN ' TOP 10 '
                      ELSE ' TOP ' + CONVERT(NVARCHAR, @ParetoTopCount)
                  END

SET @OrderBy = CASE WHEN LEFT(@ParetoByCountOrDuration,5) = 'Count'
                    Then 'CountEvent'
                    Else 'Duration'
                End

EXEC rpt_FACT_Get_Util_WhereClause
@ReasonGrpDesc,
@ReasonDesc,
@UtilStateDesc,
@ShiftDesc,
@EntityName,
@LossType,
@ProductID,
@WOID,
@UserID,
@Category1,
@Category2,
@Category3,
@Category4,
@MinEventDuration,
@WhereClause OUT

SET NOCOUNT ON

--*************************************************************
-- Create Temporary tables.
--*************************************************************
CREATE TABLE #AllResults (CountEvent INT, Duration INT,GroupHigh NVARCHAR(100),GroupLow NVARCHAR(100))
CREATE TABLE #TopN (CountEvent INT,Duration INT,GroupHigh NVARCHAR(100),GroupLow NVARCHAR(100))
CREATE TABLE #Others (CountEvent INT,Duration INT,GroupHigh NVARCHAR(100),GroupLow NVARCHAR(100))
CREATE TABLE #Final (RowOrder INT IDENTITY,CountEvent INT,Duration INT,CountEventPercent FLOAT NULL, DurationPercent FLOAT NULL, GroupHigh NVARCHAR(100),GroupLow NVARCHAR(100))
CREATE TABLE #SumGroupHigh (SUMDurationOrCount INT,GroupHigh NVARCHAR(100))
--*************************************************************
-- Retrieve and organize data.
--*************************************************************
--Fix for CR81454: We may get multiple records with the same ID, ReasonCode but differnt WOID
--That's why we do select from FilterData temp table: DISTINCT ID
INSERT INTO #AllResults
EXEC ( 'SELECT COUNT(FilterData.ID) AS CountEvent,
		SUM(FilterData.DurationSec) as Duration,
		FilterData.' + @ParetoHighLevelGrouping +' ,
        FilterData.'+ @ParetoLowLevelGrouping+'
		FROM
		(SELECT DISTINCT ID,
               (CASE WHEN StartDateTimeUTC >= '''+@StartDateTimeUTC+''' AND EndDateTimeUTC <= '''+ @EndDateTimeUTC +'''
                        THEN DATEDIFF(ss,StartDateTimeUTC,EndDateTimeUTC)
                        WHEN StartDateTimeUTC >= '''+@StartDateTimeUTC+''' AND EndDateTimeUTC > '''+ @EndDateTimeUTC +'''
                        THEN DATEDIFF(ss,StartDateTimeUTC,'''+ @EndDateTimeUTC +''')
                        WHEN StartDateTimeUTC < '''+@StartDateTimeUTC+''' AND EndDateTimeUTC <= '''+ @EndDateTimeUTC +'''
                        THEN DATEDIFF(ss,'''+ @StartDateTimeUTC +''',EndDateTimeUTC)
                        WHEN StartDateTimeUTC < '''+@StartDateTimeUTC+''' AND EndDateTimeUTC > '''+ @EndDateTimeUTC +'''
                        THEN DATEDIFF(ss,'''+ @StartDateTimeUTC +''','''+ @EndDateTimeUTC +''')
                    END ) AS DurationSec  ,
               ' + @ParetoHighLevelGrouping +' ,
               '+ @ParetoLowLevelGrouping+'
           FROM   ' + @SourceView +
           ' WHERE ((StartDateTimeUTC >= '''+@StartDateTimeUTC+''' AND StartDateTimeUTC < '''+ @EndDateTimeUTC +''')
              OR (EndDateTimeUTC > '''+@StartDateTimeUTC+''' AND EndDateTimeUTC <= '''+ @EndDateTimeUTC +''')
              OR (StartDateTimeUTC < '''+@StartDateTimeUTC+''' AND EndDateTimeUTC > '''+ @EndDateTimeUTC +'''))
            ' + @WhereClause +'
			) AS FilterData
            GROUP BY  '+ @ParetoHighLevelGrouping  +' , ' +@ParetoLowLevelGrouping )

IF @ParetoHighLevelGrouping <> N'NoGroup'
BEGIN
   INSERT INTO #SumGroupHigh
   EXEC ('SELECT  '+ @TopClause +'   SUM('+ @OrderBy +') AS  SUMDurationOrCount,GroupHigh   FROM #AllResults GROUP BY  GroupHigh Order by SUM('+ @OrderBy +') desc ')

   INSERT INTO  #TopN
   SELECT AllResults.CountEvent,AllResults.Duration,AllResults.GroupHigh,AllResults.GroupLow
      FROM #AllResults AllResults
         INNER JOIN  #SumGroupHigh SumGroupHigh
            ON AllResults.GroupHigh = SumGroupHigh.GroupHigh
END
ELSE
BEGIN
   INSERT  INTO #TopN
   EXEC ('SELECT  '+ @TopClause +'   *  FROM #AllResults order by  '+ @OrderBy +' desc ')
END

DELETE #AllResults
  FROM  #TopN
  WHERE ISNULL(#AllResults.GroupHigh,'NoGroup')= ISNULL(#TopN.GroupHigh,'NoGroup')
    AND #AllResults.GroupLow = #TopN.GroupLow


IF EXISTS(SELECT * FROM #AllResults)
BEGIN
   INSERT INTO #Others
   SELECT SUM(CountEvent) AS CountEvent,SUM(Duration) AS Duration,NULL AS GroupHigh,  @LabelForOtherReasons AS GroupLow  FROM #AllResults
END

INSERT INTO #Final (CountEvent,Duration,GroupHigh,GroupLow)
EXEC ('SELECT CountEvent,Duration,GroupHigh , GroupLow   FROM #TopN ORDER BY '+@OrderBy+' DESC')

INSERT INTO #Final (CountEvent,Duration,GroupHigh,GroupLow)
EXEC('SELECT * FROM #Others')

UPDATE #Final
    SET CountEventPercent = CONVERT(FLOAT,CountEvent)/SumCountEvent,
        DurationPercent = CONVERT(FLOAT,Duration)/SumDuration
    FROM (SELECT SUM(CountEvent) AS SumCountEvent,
                 SUM(Duration) AS SumDuration
             FROM #Final) AS Aggregates

SELECT  RowOrder,
        CASE @ParetoHighLevelGrouping WHEN 'NoGroup' THEN NULL ELSE ISNULL(GroupHigh,@LabelNotDefined) END AS GroupHigh,
        ISNULL(GroupLow,@LabelNotDefined) AS GroupLow,
        CountEvent,
        Duration,
        CountEventPercent,
        DurationPercent
   FROM  #Final
   ORDER BY CASE WHEN  LEFT(@ParetoByCountOrDuration,5) = 'Count' THEN CountEvent ELSE Duration END ASC
GO

----CREATE PROCEDURE [dbo].[rpt_FACT_EventsDetail]
CREATE PROCEDURE [dbo].[rpt_FACT_EventsDetail]
   @StartDateTimeUTC            DATETIME,
   @EndDateTimeUTC              DATETIME,
   @TimeZoneId					INT = -1,
   @ReasonGrpDesc				NVARCHAR(4000),
   @ReasonDesc                  NVARCHAR(4000),
   @UtilStateDesc               NVARCHAR(4000),
   @ShiftDesc					NVARCHAR(4000),
   @EntityName                  NVARCHAR(4000),
   @LossType					NVARCHAR(4000),
   @ProductID                   NVARCHAR(4000),
   @WOID                        NVARCHAR(4000),
   @UserID                      NVARCHAR(4000),
   @Category1                   NVARCHAR(4000)= N'',
   @Category2                   NVARCHAR(4000)= N'',
   @Category3                   NVARCHAR(4000)= N'',
   @Category4                   NVARCHAR(4000)= N'',
   @MinEventDuration			INT,
   @EventsDetailOrderAsc		NVARCHAR(10),
   @ParetoLowLevelGrouping		NVARCHAR(50),
   @ParetoHighLevelGrouping		NVARCHAR(50),
   @ExecuteAgainstRestoreDB	BIT=0
AS
--*************************************************************
-- NAME...:  rpt_FACT_EventsDetail
-- VERSION: 0.1
-- AUTHOR.: Diana Ivanov
--
-- DESCRIPTION:
--
-- MODIFICATIONS:
--
-- NOTES: -
--*************************************************************

--*************************************************************
-- Declare local variable
--*************************************************************

DECLARE @SelectClause  NVARCHAR(4000)
DECLARE @WhereClause   NVARCHAR(4000)
DECLARE @SourceView	   NVARCHAR(100)

IF(@ExecuteAgainstRestoreDB=0) 
	BEGIN
		SET @SourceView = N'rpt_vw_FACT_ProductionEvents'
	END
ELSE
	BEGIN
		SET @SourceView = N'rpt_vw_FACT_ProductionEvents_Restore'
	END

--*************************************************************
-- Set local variable
--*************************************************************
SET @SelectClause = ''

EXEC rpt_FACT_Get_Util_WhereClause
@ReasonGrpDesc,
@ReasonDesc,
@UtilStateDesc,
@ShiftDesc,
@EntityName,
@LossType,
@ProductID,
@WOID,
@UserID,
@Category1,
@Category2,
@Category3,
@Category4,
@MinEventDuration,
@WhereClause OUT


SET NOCOUNT ON

--*************************************************************
-- Creating Temporary table.
--*************************************************************

CREATE TABLE #EventDetailInfo (
	[StartDateTimeUTC]	DATETIME NULL,
	[EndDateTimeUTC]	DATETIME NULL,
	[Duration]			INT  NULL,
	[ReasonGrpDesc]		NVARCHAR(80) COLLATE DATABASE_DEFAULT NULL,
	[ReasonDesc]		NVARCHAR(80) COLLATE DATABASE_DEFAULT NULL,
	[UtilStateDesc]		NVARCHAR(80) COLLATE DATABASE_DEFAULT NULL,
	[EntityName]		NVARCHAR(80) COLLATE DATABASE_DEFAULT NULL,
	[ShiftDesc]			NVARCHAR(80) COLLATE DATABASE_DEFAULT NULL,
	[ShiftStartDateTimeUTC] DATETIME NULL,
	[LossType]			NVARCHAR(40) COLLATE DATABASE_DEFAULT  NULL,
	[ProductID]			NVARCHAR(40) COLLATE DATABASE_DEFAULT  NULL,
	[WOID]				NVARCHAR(40) COLLATE DATABASE_DEFAULT  NULL,
	[UserID]			NVARCHAR(40) COLLATE DATABASE_DEFAULT  NULL,
	[UserNotes]			NVARCHAR(256) COLLATE DATABASE_DEFAULT  NULL,
	[ColorCode]			NVARCHAR(50) COLLATE DATABASE_DEFAULT NULL,
	[NoGroup]			INT  NULL,
    [Category1]         NVARCHAR(80) COLLATE DATABASE_DEFAULT NULL,
    [Category2]         NVARCHAR(80) COLLATE DATABASE_DEFAULT NULL,
    [Category3]         NVARCHAR(80) COLLATE DATABASE_DEFAULT NULL,
    [Category4]         NVARCHAR(80) COLLATE DATABASE_DEFAULT NULL,
   [ID]					INT  NULL,
   [CountEvent]			INT  NULL,
   [ForGroup]			NCHAR(1) NULL)

CREATE TABLE #EventDetailInfoOut (
   [OrderPriority]			INT IDENTITY(0,1),
	[StartDateTimeUTC]		DATETIME NULL,
	[EndDateTimeUTC]		DATETIME NULL,
	[Duration]				INT  NULL,
	[ReasonGrpDesc]			NVARCHAR(80) COLLATE DATABASE_DEFAULT NULL,
	[ReasonDesc]			NVARCHAR(80) COLLATE DATABASE_DEFAULT NULL,
	[UtilStateDesc]			NVARCHAR(80) COLLATE DATABASE_DEFAULT NULL,
	[EntityName]			NVARCHAR(80) COLLATE DATABASE_DEFAULT NULL,
	[ShiftDesc]				NVARCHAR(80) COLLATE DATABASE_DEFAULT NULL,
	[ShiftStartDateTimeUTC] DATETIME NULL,
	[LossType]				NVARCHAR(40) COLLATE DATABASE_DEFAULT  NULL,
	[ProductID]				NVARCHAR(40) COLLATE DATABASE_DEFAULT  NULL,
	[WOID]					NVARCHAR(40) COLLATE DATABASE_DEFAULT  NULL,
	[UserID]				NVARCHAR(40) COLLATE DATABASE_DEFAULT  NULL,
	[UserNotes]				NVARCHAR(256) COLLATE DATABASE_DEFAULT  NULL,
	[ColorCode]				NVARCHAR(50) COLLATE DATABASE_DEFAULT NULL,
	[NoGroup]				NCHAR(1) NULL,
    [Category1]             NVARCHAR(80) COLLATE DATABASE_DEFAULT NULL,
    [Category2]             NVARCHAR(80) COLLATE DATABASE_DEFAULT NULL,
    [Category3]             NVARCHAR(80) COLLATE DATABASE_DEFAULT NULL,
    [Category4]             NVARCHAR(80) COLLATE DATABASE_DEFAULT NULL,
	[ID]					INT  NULL,
	[CountEvent]			INT  NULL,
	[ForGroup]				NCHAR(1) NULL)

--*************************************************************
-- Main Select.
--*************************************************************
--Fix for CR81454: We may get multiple records with the same ID, ReasonCode but differnt WOID
--Only select the WO if there is a grouping by WO
DECLARE @WO_Column  NVARCHAR(50)
IF @ParetoLowLevelGrouping = N'WOID' OR @ParetoHighLevelGrouping = N'WOID'
	SET @WO_Column = N'WOID'
ELSE
	SET @WO_Column = N''''''

INSERT INTO #EventDetailInfo
EXEC('SELECT 	DISTINCT
				StartDateTimeUTC,
	            EndDateTimeUTC,
	            Duration,
	            ReasonGrpDesc,
	            ReasonDesc,
	            UtilStateDesc,
	            	EntityName,
					ShiftDesc,
					ShiftStartDateTimeUTC,
					LossType,
					ProductID,
					' + @WO_Column + '
					AS WOID,
					UserID,
					UserNotes,
					CONVERT(NVARCHAR(50),ColorCode),
					NoGroup,
                    Category1,
                    Category2,
                    Category3,
                    Category4,
               ID,
               1,
               ''1''
           FROM ' + @SourceView +
           ' WHERE ((StartDateTimeUTC >= '''+@StartDateTimeUTC+''' AND StartDateTimeUTC < '''+ @EndDateTimeUTC +''')
              OR (EndDateTimeUTC > '''+@StartDateTimeUTC+''' AND EndDateTimeUTC <= '''+ @EndDateTimeUTC +''')
              OR (StartDateTimeUTC < '''+@StartDateTimeUTC+''' AND EndDateTimeUTC > '''+ @EndDateTimeUTC +'''))
            ' + @WhereClause +' ')


IF (@EventsDetailOrderAsc = N'')
BEGIN
   INSERT INTO #EventDetailInfoOut
      ([StartDateTimeUTC],[EndDateTimeUTC],[Duration],[ReasonGrpDesc],
       [ReasonDesc],[UtilStateDesc],[EntityName],[ShiftDesc],[ShiftStartDateTimeUTC],
	    [LossType],[ProductID],[WOID],[UserID],[UserNotes],[ColorCode],[NoGroup],[Category1],
       [Category2],[Category3],[Category4],[ID],[CountEvent],[ForGroup])
    SELECT * FROM #EventDetailInfo
   ORDER BY StartDateTimeUTC
END
ELSE
BEGIN
INSERT INTO #EventDetailInfoOut
      ([StartDateTimeUTC],[EndDateTimeUTC],[Duration],[ReasonGrpDesc],
       [ReasonDesc],[UtilStateDesc],[EntityName],[ShiftDesc],[ShiftStartDateTimeUTC],
	    [LossType],[ProductID],[WOID],[UserID],[UserNotes],[ColorCode],[NoGroup],[Category1],
       [Category2],[Category3],[Category4],[ID],[CountEvent],[ForGroup])
    SELECT * FROM #EventDetailInfo
   ORDER BY StartDateTimeUTC Desc
END

SELECT
	 [OrderPriority]
	,dbo.UTCToTimeZone(StartDateTimeUTC,@TimeZoneId)AS [StartDateTime]
	,dbo.UTCToTimeZone(EndDateTimeUTC,@TimeZoneId)AS [EndDateTime]
	,[Duration]
	,[ReasonGrpDesc]
	,[ReasonDesc]
	,[UtilStateDesc]
	,[EntityName]
	,[ShiftDesc]
	,dbo.UTCToTimeZone(ShiftStartDateTimeUTC,@TimeZoneId)AS [ShiftStartDateTime]
	,[LossType]
	,[ProductID]
	,[WOID]
	,[UserID]
	,[UserNotes]
	,[ColorCode]
	,[NoGroup]
    ,[Category1]
    ,[Category2]
    ,[Category3]
    ,[Category4]
	,[ID]
	,[CountEvent]
	,[ForGroup]
FROM #EventDetailInfoOut  ORDER BY StartDateTimeUTC
GO

CREATE FUNCTION [dbo].[MES_GetHierarchicalReasons]
(@ExecuteAgainstRestoreDB	BIT=0)
RETURNS  
@outputReasons	TABLE(reas_grp_id int, reas_grp_desc nvarchar(80) 
						, reas_cd int, reas_desc nvarchar(80)
						, p0_grp_id int, p0_grp_desc nvarchar(80)
						, p1_grp_id int, p1_grp_desc nvarchar(80)
						, p2_grp_id int, p2_grp_desc nvarchar(80)
						, p3_grp_id int, p3_grp_desc nvarchar(80)
						, p4_grp_id int, p4_grp_desc nvarchar(80)
						, p5_grp_id int, p5_grp_desc nvarchar(80)
						, p6_grp_id int, p6_grp_desc nvarchar(80)
						, p7_grp_id int, p7_grp_desc nvarchar(80)
						, p8_grp_id int, p8_grp_desc nvarchar(80)
						, p9_grp_id int, p9_grp_desc nvarchar(80),
						level_num int null)
AS 
BEGIN

DECLARE @initialSelect NVARCHAR(MAX)
SET @initialSelect = N''

DECLARE @reasons	TABLE(reas_grp_id int, reas_grp_desc nvarchar(80), reas_grp_display_seq int
						, reas_cd int, reas_desc nvarchar(80), reas_display_seq int
						, p1_grp_id int, p1_grp_desc nvarchar(80), p1_grp_disp_seq int
						, p2_grp_id int, p2_grp_desc nvarchar(80), p2_grp_disp_seq int
						, p3_grp_id int, p3_grp_desc nvarchar(80), p3_grp_disp_seq int
						, p4_grp_id int, p4_grp_desc nvarchar(80), p4_grp_disp_seq int
						, p5_grp_id int, p5_grp_desc nvarchar(80), p5_grp_disp_seq int
						, p6_grp_id int, p6_grp_desc nvarchar(80), p6_grp_disp_seq int
						, p7_grp_id int, p7_grp_desc nvarchar(80), p7_grp_disp_seq int
						, p8_grp_id int, p8_grp_desc nvarchar(80), p8_grp_disp_seq int
						, p9_grp_id int, p9_grp_desc nvarchar(80), p9_grp_disp_seq int)
IF(@ExecuteAgainstRestoreDB = 0) 
		insert into @reasons
		(reas_grp_id, reas_grp_desc, reas_grp_display_seq
		, reas_cd, reas_desc, reas_display_seq
		, p1_grp_id, p1_grp_desc, p1_grp_disp_seq
		, p2_grp_id, p2_grp_desc, p2_grp_disp_seq
		, p3_grp_id, p3_grp_desc, p3_grp_disp_seq
		, p4_grp_id, p4_grp_desc, p4_grp_disp_seq
		, p5_grp_id, p5_grp_desc, p5_grp_disp_seq
		, p6_grp_id, p6_grp_desc, p6_grp_disp_seq
		, p7_grp_id, p7_grp_desc, p7_grp_disp_seq
		, p8_grp_id, p8_grp_desc, p8_grp_disp_seq
		, p9_grp_id, p9_grp_desc, p9_grp_disp_seq)
		SELECT util_reas_grp.reas_grp_id
			,  util_reas_grp.reas_grp_desc
			,  util_reas_grp.display_seq
			,  util_reas.reas_cd
			,  util_reas.reas_desc
			,  util_reas.display_seq
			,  parent_urg1.reas_grp_id as p1_grp_id, parent_urg1.reas_grp_desc as p1_grp_desc, parent_urg1.display_seq as p1_grp_disp_seq
			,  parent_urg2.reas_grp_id as p2_grp_id, parent_urg2.reas_grp_desc as p2_grp_desc, parent_urg2.display_seq as p2_grp_disp_seq
			,  parent_urg3.reas_grp_id as p3_grp_id, parent_urg3.reas_grp_desc as p3_grp_desc, parent_urg3.display_seq as p3_grp_disp_seq
			,  parent_urg4.reas_grp_id as p4_grp_id, parent_urg4.reas_grp_desc as p4_grp_desc, parent_urg4.display_seq as p4_grp_disp_seq
			,  parent_urg5.reas_grp_id as p5_grp_id, parent_urg5.reas_grp_desc as p5_grp_desc, parent_urg5.display_seq as p5_grp_disp_seq
			,  parent_urg6.reas_grp_id as p6_grp_id, parent_urg6.reas_grp_desc as p6_grp_desc, parent_urg6.display_seq as p6_grp_disp_seq
			,  parent_urg7.reas_grp_id as p7_grp_id, parent_urg7.reas_grp_desc as p7_grp_desc, parent_urg7.display_seq as p7_grp_disp_seq
			,  parent_urg8.reas_grp_id as p8_grp_id, parent_urg8.reas_grp_desc as p8_grp_desc, parent_urg8.display_seq as p8_grp_disp_seq
			,  parent_urg9.reas_grp_id as p9_grp_id, parent_urg9.reas_grp_desc as p9_grp_desc, parent_urg9.display_seq as p9_grp_disp_seq
		FROM MES_UtilReas util_reas
			INNER JOIN MES_UtilReasGrp util_reas_grp ON util_reas_grp.reas_grp_id = util_reas.reas_grp_id
			LEFT OUTER JOIN MES_UtilReasGrp parent_urg1 WITH (NOLOCK) ON util_reas_grp.parent_reas_grp_id = parent_urg1.reas_grp_id
			LEFT OUTER JOIN MES_UtilReasGrp parent_urg2 WITH (NOLOCK) ON parent_urg1.parent_reas_grp_id = parent_urg2.reas_grp_id
			LEFT OUTER JOIN MES_UtilReasGrp parent_urg3 WITH (NOLOCK) ON parent_urg2.parent_reas_grp_id = parent_urg3.reas_grp_id
			LEFT OUTER JOIN MES_UtilReasGrp parent_urg4 WITH (NOLOCK) ON parent_urg3.parent_reas_grp_id = parent_urg4.reas_grp_id
			LEFT OUTER JOIN MES_UtilReasGrp parent_urg5 WITH (NOLOCK) ON parent_urg4.parent_reas_grp_id = parent_urg5.reas_grp_id
			LEFT OUTER JOIN MES_UtilReasGrp parent_urg6 WITH (NOLOCK) ON parent_urg5.parent_reas_grp_id = parent_urg6.reas_grp_id
			LEFT OUTER JOIN MES_UtilReasGrp parent_urg7 WITH (NOLOCK) ON parent_urg6.parent_reas_grp_id = parent_urg7.reas_grp_id
			LEFT OUTER JOIN MES_UtilReasGrp parent_urg8 WITH (NOLOCK) ON parent_urg7.parent_reas_grp_id = parent_urg8.reas_grp_id
			LEFT OUTER JOIN MES_UtilReasGrp parent_urg9 WITH (NOLOCK) ON parent_urg8.parent_reas_grp_id = parent_urg9.reas_grp_id
ELSE
insert into @reasons
		(reas_grp_id, reas_grp_desc, reas_grp_display_seq
		, reas_cd, reas_desc, reas_display_seq
		, p1_grp_id, p1_grp_desc, p1_grp_disp_seq
		, p2_grp_id, p2_grp_desc, p2_grp_disp_seq
		, p3_grp_id, p3_grp_desc, p3_grp_disp_seq
		, p4_grp_id, p4_grp_desc, p4_grp_disp_seq
		, p5_grp_id, p5_grp_desc, p5_grp_disp_seq
		, p6_grp_id, p6_grp_desc, p6_grp_disp_seq
		, p7_grp_id, p7_grp_desc, p7_grp_disp_seq
		, p8_grp_id, p8_grp_desc, p8_grp_disp_seq
		, p9_grp_id, p9_grp_desc, p9_grp_disp_seq)
		SELECT util_reas_grp.reas_grp_id
			,  util_reas_grp.reas_grp_desc
			,  util_reas_grp.display_seq
			,  util_reas.reas_cd
			,  util_reas.reas_desc
			,  util_reas.display_seq
			,  parent_urg1.reas_grp_id as p1_grp_id, parent_urg1.reas_grp_desc as p1_grp_desc, parent_urg1.display_seq as p1_grp_disp_seq
			,  parent_urg2.reas_grp_id as p2_grp_id, parent_urg2.reas_grp_desc as p2_grp_desc, parent_urg2.display_seq as p2_grp_disp_seq
			,  parent_urg3.reas_grp_id as p3_grp_id, parent_urg3.reas_grp_desc as p3_grp_desc, parent_urg3.display_seq as p3_grp_disp_seq
			,  parent_urg4.reas_grp_id as p4_grp_id, parent_urg4.reas_grp_desc as p4_grp_desc, parent_urg4.display_seq as p4_grp_disp_seq
			,  parent_urg5.reas_grp_id as p5_grp_id, parent_urg5.reas_grp_desc as p5_grp_desc, parent_urg5.display_seq as p5_grp_disp_seq
			,  parent_urg6.reas_grp_id as p6_grp_id, parent_urg6.reas_grp_desc as p6_grp_desc, parent_urg6.display_seq as p6_grp_disp_seq
			,  parent_urg7.reas_grp_id as p7_grp_id, parent_urg7.reas_grp_desc as p7_grp_desc, parent_urg7.display_seq as p7_grp_disp_seq
			,  parent_urg8.reas_grp_id as p8_grp_id, parent_urg8.reas_grp_desc as p8_grp_desc, parent_urg8.display_seq as p8_grp_disp_seq
			,  parent_urg9.reas_grp_id as p9_grp_id, parent_urg9.reas_grp_desc as p9_grp_desc, parent_urg9.display_seq as p9_grp_disp_seq
		FROM MES_UtilReas_Restore util_reas
			INNER JOIN MES_UtilReasGrp_Restore util_reas_grp ON util_reas_grp.reas_grp_id = util_reas.reas_grp_id
			LEFT OUTER JOIN MES_UtilReasGrp_Restore parent_urg1 WITH (NOLOCK) ON util_reas_grp.parent_reas_grp_id = parent_urg1.reas_grp_id
			LEFT OUTER JOIN MES_UtilReasGrp_Restore parent_urg2 WITH (NOLOCK) ON parent_urg1.parent_reas_grp_id = parent_urg2.reas_grp_id
			LEFT OUTER JOIN MES_UtilReasGrp_Restore parent_urg3 WITH (NOLOCK) ON parent_urg2.parent_reas_grp_id = parent_urg3.reas_grp_id
			LEFT OUTER JOIN MES_UtilReasGrp_Restore parent_urg4 WITH (NOLOCK) ON parent_urg3.parent_reas_grp_id = parent_urg4.reas_grp_id
			LEFT OUTER JOIN MES_UtilReasGrp_Restore parent_urg5 WITH (NOLOCK) ON parent_urg4.parent_reas_grp_id = parent_urg5.reas_grp_id
			LEFT OUTER JOIN MES_UtilReasGrp_Restore parent_urg6 WITH (NOLOCK) ON parent_urg5.parent_reas_grp_id = parent_urg6.reas_grp_id
			LEFT OUTER JOIN MES_UtilReasGrp_Restore parent_urg7 WITH (NOLOCK) ON parent_urg6.parent_reas_grp_id = parent_urg7.reas_grp_id
			LEFT OUTER JOIN MES_UtilReasGrp_Restore parent_urg8 WITH (NOLOCK) ON parent_urg7.parent_reas_grp_id = parent_urg8.reas_grp_id
			LEFT OUTER JOIN MES_UtilReasGrp_Restore parent_urg9 WITH (NOLOCK) ON parent_urg8.parent_reas_grp_id = parent_urg9.reas_grp_id

	insert into @outputReasons
	(reas_grp_id , reas_grp_desc  
						, reas_cd , reas_desc 
						, p0_grp_id , p0_grp_desc 
						, p1_grp_id , p1_grp_desc 
						, p2_grp_id , p2_grp_desc 
						, p3_grp_id , p3_grp_desc 
						, p4_grp_id , p4_grp_desc 
						, p5_grp_id , p5_grp_desc 
						, p6_grp_id , p6_grp_desc 
						, p7_grp_id , p7_grp_desc 
						, p8_grp_id , p8_grp_desc 
						, p9_grp_id , p9_grp_desc )
						
	SELECT x.reas_grp_id, x.reas_grp_desc, x.reas_cd, x.reas_desc
			, x.l0_grp_id, x.l0_grp_desc
			, x.l1_grp_id, x.l1_grp_desc
			, x.l2_grp_id, x.l2_grp_desc
			, x.l3_grp_id, x.l3_grp_desc
			, x.l4_grp_id, x.l4_grp_desc
			, x.l5_grp_id, x.l5_grp_desc
			, x.l6_grp_id, x.l6_grp_desc
			, x.l7_grp_id, x.l7_grp_desc
			, x.l8_grp_id, x.l8_grp_desc
			, x.l9_grp_id, x.l9_grp_desc
	FROM
	(SELECT reas_grp_id, reas_grp_desc, reas_grp_display_seq, reas_cd, reas_desc, reas_display_seq
			, p9_grp_id as l0_grp_id, p9_grp_desc as l0_grp_desc, p9_grp_disp_seq as l0_grp_disp_seq
			, p8_grp_id as l1_grp_id, p8_grp_desc as l1_grp_desc, p8_grp_disp_seq as l1_grp_disp_seq
			, p7_grp_id as l2_grp_id, p7_grp_desc as l2_grp_desc, p7_grp_disp_seq as l2_grp_disp_seq
			, p6_grp_id as l3_grp_id, p6_grp_desc as l3_grp_desc, p6_grp_disp_seq as l3_grp_disp_seq
			, p5_grp_id as l4_grp_id, p5_grp_desc as l4_grp_desc, p5_grp_disp_seq as l4_grp_disp_seq
			, p4_grp_id as l5_grp_id, p4_grp_desc as l5_grp_desc, p4_grp_disp_seq as l5_grp_disp_seq
			, p3_grp_id as l6_grp_id, p3_grp_desc as l6_grp_desc, p3_grp_disp_seq as l6_grp_disp_seq
			, p2_grp_id as l7_grp_id, p2_grp_desc as l7_grp_desc, p2_grp_disp_seq as l7_grp_disp_seq
			, p1_grp_id as l8_grp_id, p1_grp_desc as l8_grp_desc, p1_grp_disp_seq as l8_grp_disp_seq
			, reas_grp_id as l9_grp_id, reas_grp_desc as l9_grp_desc, reas_grp_display_seq as l9_grp_disp_seq
	FROM @reasons
	WHERE p9_grp_id is not null
	UNION
	SELECT reas_grp_id, reas_grp_desc, reas_grp_display_seq, reas_cd, reas_desc, reas_display_seq
			, p8_grp_id as l0_grp_id, p8_grp_desc as l0_grp_desc, p8_grp_disp_seq as l0_grp_disp_seq
			, p7_grp_id as l1_grp_id, p7_grp_desc as l1_grp_desc, p7_grp_disp_seq as l1_grp_disp_seq
			, p6_grp_id as l2_grp_id, p6_grp_desc as l2_grp_desc, p6_grp_disp_seq as l2_grp_disp_seq
			, p5_grp_id as l3_grp_id, p5_grp_desc as l3_grp_desc, p5_grp_disp_seq as l3_grp_disp_seq
			, p4_grp_id as l4_grp_id, p4_grp_desc as l4_grp_desc, p4_grp_disp_seq as l4_grp_disp_seq
			, p3_grp_id as l5_grp_id, p3_grp_desc as l5_grp_desc, p3_grp_disp_seq as l5_grp_disp_seq
			, p2_grp_id as l6_grp_id, p2_grp_desc as l6_grp_desc, p2_grp_disp_seq as l6_grp_disp_seq
			, p1_grp_id as l7_grp_id, p1_grp_desc as l7_grp_desc, p1_grp_disp_seq as l7_grp_disp_seq
			, reas_grp_id as l8_grp_id, reas_grp_desc as l8_grp_desc, reas_grp_display_seq as l8_grp_disp_seq
			, null as l9_grp_id, null as l9_grp_desc, null as l9_grp_disp_seq
	FROM @reasons
	WHERE p9_grp_id is null and p8_grp_id is not null
	UNION
	SELECT reas_grp_id, reas_grp_desc, reas_grp_display_seq, reas_cd, reas_desc, reas_display_seq
			, p7_grp_id as l0_grp_id, p7_grp_desc as l0_grp_desc, p7_grp_disp_seq as l0_grp_disp_seq
			, p6_grp_id as l1_grp_id, p6_grp_desc as l1_grp_desc, p6_grp_disp_seq as l1_grp_disp_seq
			, p5_grp_id as l2_grp_id, p5_grp_desc as l2_grp_desc, p5_grp_disp_seq as l2_grp_disp_seq
			, p4_grp_id as l3_grp_id, p4_grp_desc as l3_grp_desc, p4_grp_disp_seq as l3_grp_disp_seq
			, p3_grp_id as l4_grp_id, p3_grp_desc as l4_grp_desc, p3_grp_disp_seq as l4_grp_disp_seq
			, p2_grp_id as l5_grp_id, p2_grp_desc as l5_grp_desc, p2_grp_disp_seq as l5_grp_disp_seq
			, p1_grp_id as l6_grp_id, p1_grp_desc as l6_grp_desc, p1_grp_disp_seq as l6_grp_disp_seq
			, reas_grp_id as l7_grp_id, reas_grp_desc as l7_grp_desc, reas_grp_display_seq as l7_grp_disp_seq
			, null as l8_grp_id, null as l8_grp_desc, null as l8_grp_disp_seq
			, null as l9_grp_id, null as l9_grp_desc, null as l9_grp_disp_seq
	FROM @reasons
	WHERE p8_grp_id is null and p7_grp_id is not null
	UNION
	SELECT reas_grp_id, reas_grp_desc, reas_grp_display_seq, reas_cd, reas_desc, reas_display_seq
			, p6_grp_id as l0_grp_id, p6_grp_desc as l0_grp_desc, p6_grp_disp_seq as l0_grp_disp_seq
			, p5_grp_id as l1_grp_id, p5_grp_desc as l1_grp_desc, p5_grp_disp_seq as l1_grp_disp_seq
			, p4_grp_id as l2_grp_id, p4_grp_desc as l2_grp_desc, p4_grp_disp_seq as l2_grp_disp_seq
			, p3_grp_id as l3_grp_id, p3_grp_desc as l3_grp_desc, p3_grp_disp_seq as l3_grp_disp_seq
			, p2_grp_id as l4_grp_id, p2_grp_desc as l4_grp_desc, p2_grp_disp_seq as l4_grp_disp_seq
			, p1_grp_id as l5_grp_id, p1_grp_desc as l5_grp_desc, p1_grp_disp_seq as l5_grp_disp_seq
			, reas_grp_id as l6_grp_id, reas_grp_desc as l6_grp_desc, reas_grp_display_seq as l6_grp_disp_seq
			, null as l7_grp_id, null as l7_grp_desc, null as l7_grp_disp_seq
			, null as l8_grp_id, null as l8_grp_desc, null as l8_grp_disp_seq
			, null as l9_grp_id, null as l9_grp_desc, null as l9_grp_disp_seq
	FROM @reasons
	WHERE p7_grp_id is null and p6_grp_id is not null
	UNION
	SELECT reas_grp_id, reas_grp_desc, reas_grp_display_seq, reas_cd, reas_desc, reas_display_seq
			, p5_grp_id as l0_grp_id, p5_grp_desc as l0_grp_desc, p5_grp_disp_seq as l0_grp_disp_seq
			, p4_grp_id as l1_grp_id, p4_grp_desc as l1_grp_desc, p4_grp_disp_seq as l1_grp_disp_seq
			, p3_grp_id as l2_grp_id, p3_grp_desc as l2_grp_desc, p3_grp_disp_seq as l2_grp_disp_seq
			, p2_grp_id as l3_grp_id, p2_grp_desc as l3_grp_desc, p2_grp_disp_seq as l3_grp_disp_seq
			, p1_grp_id as l4_grp_id, p1_grp_desc as l4_grp_desc, p1_grp_disp_seq as l4_grp_disp_seq
			, reas_grp_id as l5_grp_id, reas_grp_desc as l5_grp_desc, reas_grp_display_seq as l5_grp_disp_seq
			, null as l6_grp_id, null as l6_grp_desc, null as l6_grp_disp_seq
			, null as l7_grp_id, null as l7_grp_desc, null as l7_grp_disp_seq
			, null as l8_grp_id, null as l8_grp_desc, null as l8_grp_disp_seq
			, null as l9_grp_id, null as l9_grp_desc, null as l9_grp_disp_seq
	FROM @reasons
	WHERE p6_grp_id is null and p5_grp_id is not null
	UNION
	SELECT reas_grp_id, reas_grp_desc, reas_grp_display_seq, reas_cd, reas_desc, reas_display_seq
			, p4_grp_id as l0_grp_id, p4_grp_desc as l0_grp_desc, p4_grp_disp_seq as l0_grp_disp_seq
			, p3_grp_id as l1_grp_id, p3_grp_desc as l1_grp_desc, p3_grp_disp_seq as l1_grp_disp_seq
			, p2_grp_id as l2_grp_id, p2_grp_desc as l2_grp_desc, p2_grp_disp_seq as l2_grp_disp_seq
			, p1_grp_id as l3_grp_id, p1_grp_desc as l3_grp_desc, p1_grp_disp_seq as l3_grp_disp_seq
			, reas_grp_id as l4_grp_id, reas_grp_desc as l4_grp_desc, reas_grp_display_seq as l4_grp_disp_seq
			, null as l5_grp_id, null as l5_grp_desc, null as l5_grp_disp_seq
			, null as l6_grp_id, null as l6_grp_desc, null as l6_grp_disp_seq
			, null as l7_grp_id, null as l7_grp_desc, null as l7_grp_disp_seq
			, null as l8_grp_id, null as l8_grp_desc, null as l8_grp_disp_seq
			, null as l9_grp_id, null as l9_grp_desc, null as l9_grp_disp_seq
	FROM @reasons
	WHERE p5_grp_id is null and p4_grp_id is not null
	UNION
	SELECT reas_grp_id, reas_grp_desc, reas_grp_display_seq, reas_cd, reas_desc, reas_display_seq
			, p3_grp_id as l0_grp_id, p3_grp_desc as l0_grp_desc, p3_grp_disp_seq as l0_grp_disp_seq
			, p2_grp_id as l1_grp_id, p2_grp_desc as l1_grp_desc, p2_grp_disp_seq as l1_grp_disp_seq
			, p1_grp_id as l2_grp_id, p1_grp_desc as l2_grp_desc, p1_grp_disp_seq as l2_grp_disp_seq
			, reas_grp_id as l3_grp_id, reas_grp_desc as l3_grp_desc, reas_grp_display_seq as l3_grp_disp_seq
			, null as l4_grp_id, null as l4_grp_desc, null as l4_grp_disp_seq
			, null as l5_grp_id, null as l5_grp_desc, null as l5_grp_disp_seq
			, null as l6_grp_id, null as l6_grp_desc, null as l6_grp_disp_seq
			, null as l7_grp_id, null as l7_grp_desc, null as l7_grp_disp_seq
			, null as l8_grp_id, null as l8_grp_desc, null as l8_grp_disp_seq
			, null as l9_grp_id, null as l9_grp_desc, null as l9_grp_disp_seq
	FROM @reasons
	WHERE p4_grp_id is null and p3_grp_id is not null
	UNION
	SELECT reas_grp_id, reas_grp_desc, reas_grp_display_seq, reas_cd, reas_desc, reas_display_seq
			, p2_grp_id as l0_grp_id, p2_grp_desc as l0_grp_desc, p2_grp_disp_seq as l0_grp_disp_seq
			, p1_grp_id as l1_grp_id, p1_grp_desc as l1_grp_desc, p1_grp_disp_seq as l1_grp_disp_seq
			, reas_grp_id as l2_grp_id, reas_grp_desc as l2_grp_desc, reas_grp_display_seq as l2_grp_disp_seq
			, null as l3_grp_id, null as l3_grp_desc, null as l3_grp_disp_seq
			, null as l4_grp_id, null as l4_grp_desc, null as l4_grp_disp_seq
			, null as l5_grp_id, null as l5_grp_desc, null as l5_grp_disp_seq
			, null as l6_grp_id, null as l6_grp_desc, null as l6_grp_disp_seq
			, null as l7_grp_id, null as l7_grp_desc, null as l7_grp_disp_seq
			, null as l8_grp_id, null as l8_grp_desc, null as l8_grp_disp_seq
			, null as l9_grp_id, null as l9_grp_desc, null as l9_grp_disp_seq
	FROM @reasons
	WHERE p3_grp_id is null and p2_grp_id is not null
	UNION
	SELECT reas_grp_id, reas_grp_desc, reas_grp_display_seq, reas_cd, reas_desc, reas_display_seq
			, p1_grp_id as l0_grp_id, p1_grp_desc as l0_grp_desc, p1_grp_disp_seq as l0_grp_disp_seq
			, reas_grp_id as l1_grp_id, reas_grp_desc as l1_grp_desc, reas_grp_display_seq as l1_grp_disp_seq
			, null as l2_grp_id, null as l2_grp_desc, null as l2_grp_disp_seq
			, null as l3_grp_id, null as l3_grp_desc, null as l3_grp_disp_seq
			, null as l4_grp_id, null as l4_grp_desc, null as l4_grp_disp_seq
			, null as l5_grp_id, null as l5_grp_desc, null as l5_grp_disp_seq
			, null as l6_grp_id, null as l6_grp_desc, null as l6_grp_disp_seq
			, null as l7_grp_id, null as l7_grp_desc, null as l7_grp_disp_seq
			, null as l8_grp_id, null as l8_grp_desc, null as l8_grp_disp_seq
			, null as l9_grp_id, null as l9_grp_desc, null as l9_grp_disp_seq
	FROM @reasons
	WHERE p2_grp_id is null and p1_grp_id is not null
	UNION
	SELECT reas_grp_id, reas_grp_desc, reas_grp_display_seq, reas_cd, reas_desc, reas_display_seq
			, reas_grp_id as l0_grp_id, reas_grp_desc as l0_grp_desc, reas_grp_display_seq as l0_grp_disp_seq
			, null as l1_grp_id, null as l1_grp_desc, null as l1_grp_disp_seq
			, null as l2_grp_id, null as l2_grp_desc, null as l2_grp_disp_seq
			, null as l3_grp_id, null as l3_grp_desc, null as l3_grp_disp_seq
			, null as l4_grp_id, null as l4_grp_desc, null as l4_grp_disp_seq
			, null as l5_grp_id, null as l5_grp_desc, null as l5_grp_disp_seq
			, null as l6_grp_id, null as l6_grp_desc, null as l6_grp_disp_seq
			, null as l7_grp_id, null as l7_grp_desc, null as l7_grp_disp_seq
			, null as l8_grp_id, null as l8_grp_desc, null as l8_grp_disp_seq
			, null as l9_grp_id, null as l9_grp_desc, null as l9_grp_disp_seq
	FROM @reasons
	WHERE p1_grp_id is null) x
	ORDER BY x.l0_grp_disp_seq, x.l1_grp_disp_seq, x.l2_grp_disp_seq, x.l3_grp_disp_seq, x.l4_grp_disp_seq, x.l5_grp_disp_seq,
			 x.l6_grp_disp_seq, x.l7_grp_disp_seq, x.l8_grp_disp_seq, x.reas_grp_display_seq, x.reas_display_seq

	Update @outputReasons set level_num = 0
	where (p1_grp_id IS NULL) 

	Update @outputReasons set level_num = 1
	where (p1_grp_id IS NOT NULL) 

	Update @outputReasons set level_num = 2
	where (p2_grp_id IS NOT NULL) 

	Update @outputReasons set level_num = 3
	where (p3_grp_id IS NOT NULL) 

	Update @outputReasons set level_num = 4
	where (p4_grp_id IS NOT NULL) 

	Update @outputReasons set level_num = 5
	where (p5_grp_id IS NOT NULL) 

	Update @outputReasons set level_num = 6
	where (p6_grp_id IS NOT NULL) 

	Update @outputReasons set level_num = 7
	where (p7_grp_id IS NOT NULL) 

	Update @outputReasons set level_num = 8
	where (p8_grp_id IS NOT NULL) 
	
	Update @outputReasons set level_num = 9
	where (p9_grp_id IS NOT NULL) 

RETURN
END
GO

----CREATE PROCEDURE [dbo].[rpt_FACT_EventsDetail_MLReasGrp]
CREATE PROCEDURE [dbo].[rpt_FACT_EventsDetail_MLReasGrp]
   @StartDateTimeUTC            DATETIME,
   @EndDateTimeUTC              DATETIME,
   @TimeZoneId					INT = -1,
   @ReasonGrpDesc				NVARCHAR(4000),
   @ReasonDesc                  NVARCHAR(4000),
   @UtilStateDesc               NVARCHAR(4000),
   @ShiftDesc					NVARCHAR(4000),
   @EntityName                  NVARCHAR(4000),
   @OEECategory					NVARCHAR(4000),
   @ProductID                   NVARCHAR(4000),
   @WOID                        NVARCHAR(4000),
   @UserID                      NVARCHAR(4000),
   @Category1                   NVARCHAR(4000)= N'',
   @Category2                   NVARCHAR(4000)= N'',
   @Category3                   NVARCHAR(4000)= N'',
   @Category4                   NVARCHAR(4000)= N'',
   @MinEventDuration			INT,
   @EventsDetailOrderAsc		NVARCHAR(10),
   @ExecuteAgainstRestoreDB	BIT=0
AS
--*************************************************************
-- NAME...:  rpt_FACT_EventsDetail_MLReasGrp
-- VERSION: 0.1
-- AUTHOR.: Diana Ivanov
--
-- DESCRIPTION:
--
-- MODIFICATIONS:
--
-- NOTES: -
--*************************************************************

--*************************************************************
-- Declare local variable
--*************************************************************

DECLARE @SelectClause  NVARCHAR(4000)
DECLARE @WhereClause   NVARCHAR(4000)
DECLARE @SourceView	   NVARCHAR(100)

IF(@ExecuteAgainstRestoreDB=0) 
	BEGIN
		SET @SourceView = N'rpt_vw_FACT_ProductionEvents'
	END
ELSE
	BEGIN
		SET @SourceView = N'rpt_vw_FACT_ProductionEvents_Restore'
	END

--*************************************************************
-- Set local variable
--*************************************************************
SET @SelectClause = ''

EXEC rpt_FACT_Get_Util_WhereClause
@ReasonGrpDesc,
@ReasonDesc,
@UtilStateDesc,
@ShiftDesc,
@EntityName,
@OEECategory,
@ProductID,
@WOID,
@UserID,
@Category1,
@Category2,
@Category3,
@Category4,
@MinEventDuration,
@WhereClause OUT


SET NOCOUNT ON

--*************************************************************
-- Creating Temporary table.
--*************************************************************

CREATE TABLE #EventDetailInfo (
	[StartDateTimeUTC]	DATETIME NULL,
	[EndDateTimeUTC]	DATETIME NULL,
	[Duration]			INT  NULL,
	[ReasonGrpDesc]		NVARCHAR(80) COLLATE DATABASE_DEFAULT NULL,
	[ReasonDesc]		NVARCHAR(80) COLLATE DATABASE_DEFAULT NULL,
	[UtilStateDesc]		NVARCHAR(80) COLLATE DATABASE_DEFAULT NULL,
	[EntityName]		NVARCHAR(80) COLLATE DATABASE_DEFAULT NULL,
	[ShiftDesc]			NVARCHAR(80) COLLATE DATABASE_DEFAULT NULL,
	[ShiftStartDateTimeUTC] DATETIME NULL,
	[LossType]			NVARCHAR(40) COLLATE DATABASE_DEFAULT  NULL,
	[ProductID]			NVARCHAR(40) COLLATE DATABASE_DEFAULT  NULL,
	[WOID]				NVARCHAR(40) COLLATE DATABASE_DEFAULT  NULL,
	[UserID]			NVARCHAR(40) COLLATE DATABASE_DEFAULT  NULL,
	[UserNotes]			NVARCHAR(256) COLLATE DATABASE_DEFAULT  NULL,
	[ColorCode]			NVARCHAR(50) COLLATE DATABASE_DEFAULT NULL,
	[NoGroup]			INT  NULL,
   [ID]					INT  NULL,
   [CountEvent]			INT  NULL,
   [ReasonCd]           INT,
   [ReasonGrpId]		INT,
   [ForGroup]			NCHAR(1) NULL)

CREATE TABLE #EventDetailInfoOut (
   [OrderPriority]			INT IDENTITY(0,1),
	[StartDateTimeUTC]		DATETIME NULL,
	[EndDateTimeUTC]		DATETIME NULL,
	[Duration]				INT  NULL,
	[ReasonGrpDesc]			NVARCHAR(80) COLLATE DATABASE_DEFAULT NULL,
	[ReasonDesc]			NVARCHAR(80) COLLATE DATABASE_DEFAULT NULL,
	[UtilStateDesc]			NVARCHAR(80) COLLATE DATABASE_DEFAULT NULL,
	[EntityName]			NVARCHAR(80) COLLATE DATABASE_DEFAULT NULL,
	[ShiftDesc]				NVARCHAR(80) COLLATE DATABASE_DEFAULT NULL,
	[ShiftStartDateTimeUTC] DATETIME NULL,
	[LossType]				NVARCHAR(40) COLLATE DATABASE_DEFAULT  NULL,
	[ProductID]				NVARCHAR(40) COLLATE DATABASE_DEFAULT  NULL,
	[WOID]					NVARCHAR(40) COLLATE DATABASE_DEFAULT  NULL,
	[UserID]				NVARCHAR(40) COLLATE DATABASE_DEFAULT  NULL,
	[UserNotes]				NVARCHAR(256) COLLATE DATABASE_DEFAULT  NULL,
	[ColorCode]				NVARCHAR(50) COLLATE DATABASE_DEFAULT NULL,
	[NoGroup]				NCHAR(1) NULL,
	[ID]					INT  NULL,
	[CountEvent]			INT  NULL,
	[ReasonCd]				INT,
    [ReasonGrpId]			INT,
	[ForGroup]				NCHAR(1) NULL)

--*************************************************************
-- Main Select.
--*************************************************************
--Fix for CR81454: We may get multiple records with the same ID, ReasonCode but differnt WOID
--Only select the WO if there is a grouping by WO
DECLARE @WO_Column  NVARCHAR(50)
SET @WO_Column = N''''''

INSERT INTO #EventDetailInfo
EXEC('SELECT 	DISTINCT
				StartDateTimeUTC,
	            EndDateTimeUTC,
	            Duration,
	            ReasonGrpDesc,
	            ReasonDesc,
	            UtilStateDesc,
	            	EntityName,
					ShiftDesc,
					ShiftStartDateTimeUTC,
					LossType,
					ProductID,
					' + @WO_Column + '
					AS WOID,
					UserID,
					UserNotes,
					CONVERT(NVARCHAR(50),ColorCode),
					NoGroup,
               ID,
               1,
			   ReasonCd,
			   ReasonGrpId,
               ''1''
           FROM ' + @SourceView +
           ' WHERE ((StartDateTimeUTC >= '''+@StartDateTimeUTC+''' AND StartDateTimeUTC < '''+ @EndDateTimeUTC +''')
              OR (EndDateTimeUTC > '''+@StartDateTimeUTC+''' AND EndDateTimeUTC <= '''+ @EndDateTimeUTC +''')
              OR (StartDateTimeUTC < '''+@StartDateTimeUTC+''' AND EndDateTimeUTC > '''+ @EndDateTimeUTC +'''))
            ' + @WhereClause +' ')


IF (@EventsDetailOrderAsc = N'')
BEGIN
   INSERT INTO #EventDetailInfoOut
      ([StartDateTimeUTC],[EndDateTimeUTC],[Duration],[ReasonGrpDesc],
       [ReasonDesc],[UtilStateDesc],[EntityName],[ShiftDesc],[ShiftStartDateTimeUTC],
	    [LossType],[ProductID],[WOID],[UserID],[UserNotes],[ColorCode],[NoGroup],[ID],
       [CountEvent],[ReasonCd],[ReasonGrpId],[ForGroup])
    SELECT * FROM #EventDetailInfo
   ORDER BY StartDateTimeUTC
END
ELSE
BEGIN
INSERT INTO #EventDetailInfoOut
      ([StartDateTimeUTC],[EndDateTimeUTC],[Duration],[ReasonGrpDesc],
       [ReasonDesc],[UtilStateDesc],[EntityName],[ShiftDesc],[ShiftStartDateTimeUTC],
	    [LossType],[ProductID],[WOID],[UserID],[UserNotes],[ColorCode],[NoGroup],[ID],
       [CountEvent],[ReasonCd],[ReasonGrpId],[ForGroup])
    SELECT * FROM #EventDetailInfo
   ORDER BY StartDateTimeUTC Desc
END

SELECT
	reas.level_num, reas.reas_cd, reas.reas_desc,reas.reas_grp_id,
	reas.p0_grp_desc, reas.p0_grp_id,
	reas.p1_grp_desc, reas.p1_grp_id,
	reas.p2_grp_desc, reas.p2_grp_id,
	reas.p3_grp_desc, reas.p3_grp_id,
	reas.p4_grp_desc, reas.p4_grp_id,
	reas.p5_grp_desc, reas.p5_grp_id,
	reas.p6_grp_desc, reas.p6_grp_id,
	reas.p7_grp_desc, reas.p7_grp_id,
	reas.p8_grp_desc, reas.p8_grp_id,
	reas.p9_grp_desc, reas.p9_grp_id,
	 [OrderPriority]
	,dbo.UTCToTimeZone(StartDateTimeUTC,@TimeZoneId)AS [StartDateTime]
	,dbo.UTCToTimeZone(EndDateTimeUTC,@TimeZoneId)AS [EndDateTime]
	,[Duration]
	,[ReasonGrpDesc]
	,[ReasonDesc]
	,[UtilStateDesc]
	,[EntityName]
	,[ShiftDesc]
	,dbo.UTCToTimeZone(ShiftStartDateTimeUTC,@TimeZoneId)AS [ShiftStartDateTime]
	,[LossType]
	,[ProductID]
	,[WOID]
	,[UserID]
	,[UserNotes]
	,[ColorCode]
	,[NoGroup]
	,[ID]
	,[CountEvent]
	,[ForGroup]
FROM #EventDetailInfoOut events
	inner join (select * from MES_GetHierarchicalReasons(@ExecuteAgainstRestoreDB)) reas on
			events.ReasonCd = reas.reas_cd and
				events.ReasonGrpId = reas.reas_grp_id
--ORDER BY StartDateTimeUTC
GO

--CREATE PROCEDURE [dbo].[rpt_FACT_EventsDurationPieChart]
CREATE PROCEDURE [dbo].[rpt_FACT_EventsDurationPieChart]
    @StartDateTimeUTC           DATETIME ,
    @EndDateTimeUTC             DATETIME ,
	@TimeZoneId					INT = -1,
	@ReasonGrpDesc				NVARCHAR(4000),
    @ReasonDesc					NVARCHAR(4000),
    @UtilStateDesc              NVARCHAR(4000),
    @ShiftDesc					NVARCHAR(4000),
    @EntityName                 NVARCHAR(4000),
    @LossType					NVARCHAR(4000),
    @ProductID					NVARCHAR(4000),
    @WOID						NVARCHAR(4000),
    @UserID						NVARCHAR(4000),
    @Category1                  NVARCHAR(4000)= N'',
    @Category2                  NVARCHAR(4000)= N'',
    @Category3                  NVARCHAR(4000)= N'',
    @Category4                  NVARCHAR(4000)= N'',
    @MinEventDuration			INT,
	@LanguageCode				NVARCHAR(6),
	@LabelForOtherReasons		NVARCHAR(80) = N'Others',
	@ExecuteAgainstRestoreDB	BIT=0
AS
--*************************************************************
-- NAME...:  rpt_FACT_EventsDurationPieChart
-- VERSION: 0.1
-- AUTHOR.: Diana Ivanov
--
-- DESCRIPTION:
--
-- MODIFICATIONS: -
--
-- NOTES: -
--*************************************************************

--*************************************************************
-- Declare local variables
--*************************************************************
DECLARE @TopClause NVARCHAR(4000)
DECLARE @WhereClause NVARCHAR(4000)
DECLARE @OrderBy NVARCHAR(50)
DECLARE @LabelNotDefined NVARCHAR(50)
DECLARE @SourceView NVARCHAR(100)

IF(@ExecuteAgainstRestoreDB=0) 
	BEGIN
		SET @SourceView = N'rpt_vw_FACT_ProductionEvents'
	END
ELSE
	BEGIN
		SET @SourceView = N'rpt_vw_FACT_ProductionEvents_Restore'
	END

--*************************************************************
-- Set local variables
--*************************************************************
SET @TopClause = 'TOP 10'
SET @OrderBy = 'Duration'

EXECUTE rpt_FACT_NotDefined
   @LanguageCode
  ,@LabelNotDefined OUTPUT

EXEC rpt_FACT_Get_Util_WhereClause
@ReasonGrpDesc,
@ReasonDesc,
@UtilStateDesc,
@ShiftDesc,
@EntityName,
@LossType,
@ProductID,
@WOID,
@UserID,
@Category1,
@Category2,
@Category3,
@Category4,
@MinEventDuration,
@WhereClause OUT

SET NOCOUNT ON

--*************************************************************
-- Create Temporary tables.
--*************************************************************
CREATE TABLE #AllResults (ReasonDesc NVARCHAR(80),Duration INT,ColorCode NVARCHAR(20))
CREATE TABLE #TopN (ReasonDesc NVARCHAR(80),Duration INT,ColorCode NVARCHAR(20))
CREATE TABLE #Others (ReasonDesc NVARCHAR(80),Duration INT,ColorCode NVARCHAR(20))
CREATE TABLE #Final (ReasonDesc NVARCHAR(80),Duration INT,DurationPercent FLOAT NULL,ColorCode NVARCHAR(20))

--*************************************************************
-- Main Select.
--*************************************************************
--Fix for CR81454: We may get multiple records with the same ID, ReasonCode but differnt WOID
--That's why we do select from FilterData temp table: DISTINCT ID
INSERT INTO #AllResults
EXEC('	SELECT FilterData.ReasonDesc, SUM(FilterData.Duration), FilterData.ColorCode
		FROM
		(SELECT DISTINCT ID,
		    (CASE WHEN ReasonDesc IS NULL
                  THEN ''' + @LabelNotDefined + '''
                  ELSE ReasonDesc
             END) AS ReasonDesc,
             (CASE		WHEN StartDateTimeUTC >= '''+@StartDateTimeUTC+''' AND EndDateTimeUTC <= '''+ @EndDateTimeUTC +'''
                        THEN DATEDIFF(ss,StartDateTimeUTC,EndDateTimeUTC)
                        WHEN StartDateTimeUTC >= '''+@StartDateTimeUTC+''' AND EndDateTimeUTC > '''+ @EndDateTimeUTC +'''
                        THEN DATEDIFF(ss,StartDateTimeUTC,'''+ @EndDateTimeUTC +''')
                        WHEN StartDateTimeUTC < '''+@StartDateTimeUTC+''' AND EndDateTimeUTC <= '''+ @EndDateTimeUTC +'''
                        THEN DATEDIFF(ss,'''+ @StartDateTimeUTC +''',EndDateTimeUTC)
                        WHEN StartDateTimeUTC < '''+@StartDateTimeUTC+''' AND EndDateTimeUTC > '''+ @EndDateTimeUTC +'''
                        THEN DATEDIFF(ss,'''+ @StartDateTimeUTC +''','''+ @EndDateTimeUTC +''')
                    END ) AS Duration  ,
             ColorCode
           FROM ' + @SourceView +
           ' WHERE ((StartDateTimeUTC >= '''+@StartDateTimeUTC+''' AND StartDateTimeUTC < '''+ @EndDateTimeUTC +''')
              OR (EndDateTimeUTC > '''+@StartDateTimeUTC+''' AND EndDateTimeUTC <= '''+ @EndDateTimeUTC +''')
              OR (StartDateTimeUTC < '''+@StartDateTimeUTC+''' AND EndDateTimeUTC > '''+ @EndDateTimeUTC +'''))
                ' + @WhereClause +') AS FilterData
           GROUP BY  FilterData.ReasonDesc,FilterData.ColorCode ')

INSERT  INTO #TopN
EXEC ('SELECT '+ @TopClause +' *  FROM #AllResults ORDER BY '+ @OrderBy +' DESC ')

DELETE #AllResults
  FROM  #TopN
  WHERE #AllResults.ReasonDesc = #TopN.ReasonDesc

IF EXISTS(SELECT * FROM #AllResults)
BEGIN
   INSERT INTO #Others
   SELECT @LabelForOtherReasons AS ReasonDesc, SUM(Duration) AS Duration, 'Gray' AS ColorCode FROM #AllResults
END

INSERT INTO #Final (ReasonDesc,Duration,ColorCode)
EXEC ('SELECT ReasonDesc,Duration,ColorCode FROM #TopN ORDER BY '+@OrderBy+' DESC')

INSERT INTO #Final (ReasonDesc,Duration,ColorCode)
EXEC('SELECT * FROM #Others')

UPDATE #Final
    SET DurationPercent = CONVERT(FLOAT,Duration)/SumDuration
    FROM (SELECT SUM(Duration) AS SumDuration
             FROM #Final) AS Aggregates

SELECT  ReasonDesc,
        Duration,
        DurationPercent,
        ColorCode
FROM  #Final
GO

--CREATE PROCEDURE [dbo].[rpt_FACT_EventsChrono]
CREATE PROCEDURE [dbo].[rpt_FACT_EventsChrono]
    @StartDateTimeUTC           DATETIME ,
    @EndDateTimeUTC             DATETIME ,
	@TimeZoneId					INT = -1,
	@ReasonGrpDesc				NVARCHAR(4000),
    @ReasonDesc					NVARCHAR(4000),
    @UtilStateDesc              NVARCHAR(4000),
    @ShiftDesc					NVARCHAR(4000),
    @EntityName                 NVARCHAR(4000),
    @LossType					NVARCHAR(4000),
    @ProductID					NVARCHAR(4000),
    @WOID						NVARCHAR(4000),
    @UserID						NVARCHAR(4000),
    @Category1                  NVARCHAR(4000)= N'',
    @Category2                  NVARCHAR(4000)= N'',
    @Category3                  NVARCHAR(4000)= N'',
    @Category4                  NVARCHAR(4000)= N'',
    @MinEventDuration		    INT,
	@LanguageCode				NVARCHAR(6),
	@RunningEventName           NVARCHAR(80) = N'No Data',
	@ExecuteAgainstRestoreDB	BIT=0
AS
--*************************************************************
-- NAME...:  rpt_FACT_EventsChrono
-- VERSION: 0.1
-- AUTHOR.: Diana Ivanov
--
-- DESCRIPTION:
-- MODIFICATIONS:
-- 20-JUN-2007 Bo Graven Nielsen (Wonderware Scandinavia)
--             Modified to display runtime between downtimes
-- 29-JUN-2007 C.M. Pouyez (Wonderware)
--             Made procedure generic for both cases where
--             Running events exist or not.
---- NOTES: -
--*************************************************************

--*************************************************************
-- Declare local variable
--*************************************************************

DECLARE @TopClause NVARCHAR(4000)
DECLARE @WhereClause NVARCHAR(4000)
DECLARE @OrderBy NVARCHAR(50)
DECLARE @LocalEntity NVARCHAR(50)
DECLARE @UptimeEnd DATETIME
DECLARE @WhereClauseSystem NVARCHAR(4000)
DECLARE @LabelNotDefined NVARCHAR(50)
DECLARE @SourceView NVARCHAR(100)

IF(@ExecuteAgainstRestoreDB=0) 
	BEGIN
		SET @SourceView = N'rpt_vw_FACT_ProductionEvents'
	END
ELSE
	BEGIN
		SET @SourceView = N'rpt_vw_FACT_ProductionEvents_Restore'
	END

--*************************************************************
-- Set local variable
--*************************************************************
EXECUTE rpt_FACT_NotDefined
   @LanguageCode
  ,@LabelNotDefined OUTPUT

SET @TopClause = ''

exec rpt_FACT_Get_Util_WhereClause
@ReasonGrpDesc,
@ReasonDesc,
@UtilStateDesc,
@ShiftDesc,
@EntityName,
@LossType,
@ProductID,
@WOID,
@UserID,
@Category1,
@Category2,
@Category3,
@Category4,
@MinEventDuration,
@WhereClause OUT

SET NOCOUNT ON

--*************************************************************
-- Creating Temporary tables.
--*************************************************************
--Create temporary tables to hold results
CREATE TABLE #PeriodEvents(
	StartDateTime DATETIME,
	EndDateTime DATETIME,
	EntityName NVARCHAR(80),
	ReasonDesc NVARCHAR(80),
	ColorCode NVARCHAR(128),
	UtilStateDesc NVARCHAR(80)
)

CREATE TABLE #EventStart(ID INT IDENTITY(1,1), EntityName NVARCHAR(80),EventStart DATETIME)
CREATE TABLE #EventEnd(ID INT IDENTITY(1,1), EntityName NVARCHAR(80), EventEnd DATETIME)

-- Get list of events for period of interest.  Events crossing the period boundaries
-- have their start or end time modified to be the period start or end time.
--Fix for CR81454: We may get multiple records with the same ID, ReasonCode but differnt WOID
--That's why we do: COUNT(DISTINCT ID)
EXEC ('INSERT INTO #PeriodEvents
       SELECT  DISTINCT
			   (CASE WHEN StartDateTimeUTC < ''' + @StartDateTimeUTC + '''
                    THEN '''+ @StartDateTimeUTC +'''
                    ELSE StartDateTimeUTC END) AS StartDateTime,
               (CASE WHEN EndDateTimeUTC > ''' + @EndDateTimeUTC + '''
                    THEN '''+ @EndDateTimeUTC +'''
                    ELSE EndDateTimeUTC END) AS EndDateTime,
               EntityName,
               (CASE WHEN ReasonDesc IS NULL OR ReasonDesc = ''''
                  THEN ''' + @LabelNotDefined + '''
                  ELSE ReasonDesc
               END) AS ReasonDesc,
               (CASE WHEN ColorCode IS NULL
                    THEN ''Black''
               ELSE ColorCode
               END) AS ColorCode,
			   UtilStateDesc
           FROM   ' + @SourceView +
           ' WHERE ((StartDateTimeUTC >= '''+@StartDateTimeUTC+''' AND StartDateTimeUTC < '''+ @EndDateTimeUTC +''')
OR (EndDateTimeUTC > '''+@StartDateTimeUTC+''' AND EndDateTimeUTC <= '''+ @EndDateTimeUTC +''')
OR (StartDateTimeUTC < '''+@StartDateTimeUTC+''' AND EndDateTimeUTC > '''+ @EndDateTimeUTC +'''))
              '+ @WhereClause + ' ')

-- Create Cursor on system names
DECLARE SystemCursor CURSOR FOR
   SELECT DISTINCT EntityName
       FROM #PeriodEvents
OPEN SystemCursor

-- Get first system Name
FETCH NEXT FROM SystemCursor INTO @LocalEntity

-- Loop on all system names
WHILE @@FETCH_STATUS = 0
BEGIN
    -- Period Start Time and all event start and end times become an event start time
    INSERT INTO #EventStart
       SELECT @LocalEntity AS EntityName
             ,@StartDateTimeUTC AS EventStart
       UNION ALL
       SELECT EntityName
             ,StartDateTime
           FROM #PeriodEvents
           WHERE EntityName = @LocalEntity
       UNION ALL
       SELECT EntityName
             ,EndDateTime
           FROM #PeriodEvents
           WHERE EntityName = @LocalEntity
       ORDER BY EventStart

    -- Period End Time and all event start and end times become an event end time
   INSERT INTO #EventEnd
       SELECT @LocalEntity AS EntityName
             ,@EndDateTimeUTC AS EventEnd
       UNION ALL
       SELECT EntityName
             ,StartDateTime
           FROM #PeriodEvents
           WHERE EntityName = @LocalEntity
       UNION ALL
       SELECT EntityName
             ,EndDateTime
           FROM #PeriodEvents
           WHERE EntityName = @LocalEntity
       ORDER BY EventEnd

    -- Get next system name
    FETCH NEXT FROM SystemCursor INTO @LocalEntity
END

-- Close and delete cursor
CLOSE SystemCursor
DEALLOCATE SystemCursor

--*************************************************************
-- Return result set
--*************************************************************

-- Join event start and end times and get information for all "real"
-- events.  All other events are considered running events.
SELECT  dbo.UTCToTimeZone(ES.EventStart,@TimeZoneId) AS StartDateTime
        ,ES.EntityName
        ,ISNULL(ReasonDesc,@RunningEventName) AS ReasonDesc
        ,DateDiff(ss,ES.EventStart,EE.EventEnd) AS Duration
		,ColorCode
		,PE.UtilStateDesc
    FROM #EventStart ES
        INNER JOIN #EventEnd EE
            ON ES.ID = EE.ID
                AND ES.EventStart <> EE.EventEnd
        LEFT JOIN #PeriodEvents PE
            ON ES.EntityName = PE.EntityName
                AND ES.EventStart = PE.StartDateTime
    ORDER BY ES.EntityName ASC,StartDateTime
GO


CREATE FUNCTION [dbo].[MES_SplitStr]
(
      @valueList [nvarchar](max), 
      @delimitter [nvarchar](2)
)
RETURNS  
@input TABLE 
(
      EventGlobId int primary key
) 
AS 
BEGIN
declare @temp nvarchar(max);
declare @delimitterPos int;
set @delimitterPos = 1;

while(@valueList<>N'' and @delimitterPos<=len(@valueList))
BEGIN
if(substring(@valueList,@delimitterPos,1)= @delimitter)
begin
set @temp = substring(@valueList,1,@delimitterPos-1);

insert into @input (EventGlobId) values (cast(@temp as int))
set @valueList = substring(@valueList,@delimitterPos+1,len(@valueList) - @delimitterPos);
set @delimitterPos = 1;
END
else
set @delimitterPos = @delimitterPos+1;
end
if (@valueList<> N'')
begin
insert into @input (EventGlobId) values (cast(@valueList as int))
end

RETURN
END
GO

CREATE PROC [dbo].[MES_GetGenealogyIdGenealogy]
	/*
	Comma separated guids
	*/
	@ProducedEventGlobIdList nvarchar(max)
as
begin
	declare @input table
	(
		EventGlobId int primary key
	);

	insert into @input (
		EventGlobId)
	select distinct
		EventGlobId
	from dbo.MES_SplitStr(@ProducedEventGlobIdList, N',');

	create table #all
	(
		ProducedResourceActualKey bigint,
		ConsumedResourceActualKey bigint,
		EventLinkId nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentConsumedResourceActualKey bigint,
		Level int,
		ConsumedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentConsumedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS
	);

	create index ix_tempAll
	on #all(
	    ProducedResourceActualKey);
	
	create index ix_tempAll2
	on #all(
	    ConsumedResourceActualKey);
	    
	create index ix_tempAll3
	on #all(
	    ParentConsumedResourceActualKey);
 
	create table #next
	(
		ProducedResourceActualKey bigint,
		ConsumedResourceActualKey bigint,
		EventLinkId nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentConsumedResourceActualKey bigint,
		Level int,
		ConsumedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentConsumedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS
	);
 
	create table #prev
	(
		ProducedResourceActualKey bigint,
		ConsumedResourceActualKey bigint,
		EventLinkId nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentConsumedResourceActualKey bigint,
		Level int,
		ConsumedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentConsumedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS
	);

	create index ix_tempPrev
	on #prev(
	    ConsumedResourceActualKey,
	    Level)
    include(
        ConsumedEventPath);

	insert into #all (
		ProducedResourceActualKey,
		ConsumedResourceActualKey,
		ParentConsumedResourceActualKey,
		EventLinkId,
		Level,
		ConsumedEventPath,
		ParentConsumedEventPath) 
	select
		p.EventGlobId, --p.ResourceActualKey,
		c.EventGlobId, --c.ResourceActualKey,
		0,
		c.EventLinkId,
		0, -- level
		cast(p.EventGlobId as nvarchar(max)) + N'/' + cast(c.EventGlobId as nvarchar(max)),
		--cast(p.ResourceActualKey as nvarchar(max)) + N'/' + cast(c.ResourceActualKey as nvarchar(max)),
		cast(null as nvarchar(max))
	from @input i
	inner join dbo.MES_ResourceActualInternal p
		on i.EventGlobId = p.EventGlobId
		and p.EventType = N'Material Produced Actual'
		and p.GenealogyId != N''
	inner join dbo.MES_ResourceActualInternal c
		on c.GenealogyId = p.GenealogyId
		and c.EventType = N'Material Consumed Actual';

	insert into #prev select * from #all;

	while @@rowcount > 0
	begin
		insert into #next (
			ProducedResourceActualKey,
			ConsumedResourceActualKey,
			ParentConsumedResourceActualKey,
			EventLinkId,
			Level,
			ConsumedEventPath,
			ParentConsumedEventPath)
		select distinct
			cte.ProducedResourceActualKey,
			consumed.EventGlobId, --consumed.ResourceActualKey,
			cte.ConsumedResourceActualKey,
			consumed.EventLinkId,
			cte.Level + 1,
			cte.ConsumedEventPath + N'/' + cast(consumed.EventGlobId as nvarchar(max)),
			--cte.ConsumedEventPath + N'/' + cast(consumed.ResourceActualKey as nvarchar(max)),
			cte.ConsumedEventPath
		from #prev cte
		inner join dbo.MES_ResourceActualInternal produced
			on produced.EventId = cte.EventLinkId
			and produced.EventType = N'Material Produced Actual'
			and cte.EventLinkId != N''
			and cte.Level < 99 -- Limits to 99 levels
		inner join dbo.MES_ResourceActualInternal consumed
			on consumed.GenealogyId = produced.GenealogyId
			and consumed.EventType = N'Material Consumed Actual'
			-- this prevents infinite recursion
			and charindex(cast(consumed.EventGlobId as nvarchar(max)), cte.ConsumedEventPath) = 0
			--and charindex(cast(consumed.ResourceActualKey as nvarchar(max)), cte.ConsumedEventPath) = 0

		insert into #all select * from #next;
		delete from #prev;
		insert #prev select * from #next;

		delete from #next;
	end;

	select
        produced.EventGlobId as ProducedEventGlobId,
        produced.EventDateUTC as ProducedEventFileTimeUtc,
        produced.Lot as ProducedLot,
        produced.MaterialId as ProducedMaterialId,
        produced.SerialNumber as ProducedSerialNumberList,

        produced.EventDateUTC as ProducedEventDate,
        produced.Location as ProducedLocation,
        produced.Sublot as ProducedSublot,
        produced.SegmentResponseId as ProducedSegmentResponseId,
        produced.Quantity as ProducedQuantity,
        produced.QuantityUnitOfMeasure as ProducedQuantityUnitOfMeasure,
        produced.GenealogyId as ProducedGenealogyId,
        produced.EventName as ProducedEventName,
        produced.EventType as ProducedEventType,
        produced.ProcessSegmentId as ProducedProcessSegmentId,
        produced.ProductionRequestId as ProducedProductionRequestId,
        produced.SegmentRequirementId as ProducedSegmentRequirementId,
        produced.SubsegmentId as ProducedSubsegmentId,

        consumed.EventGlobId as ConsumedEventGlobId,
        a.ConsumedEventPath,
        consumed.EventDateUTC as ConsumedEventFileTimeUtc,
        consumed.MaterialId as ConsumedMaterialId,
        consumed.EventDateUTC as ConsumedEventDate,
        consumed.Location as ConsumedLocation,
        consumed.Lot as ConsumedLot,
        consumed.Sublot as ConsumedSublot,
        consumed.SerialNumber as ConsumedSerialNumberList,
        consumed.SegmentResponseId as ConsumedSegmentResponseId,
        consumed.Quantity as ConsumedQuantity,
        consumed.QuantityUnitOfMeasure as ConsumedQuantityUnitOfMeasure,
        consumed.GenealogyId as ConsumedGenealogyId,
        consumed.EventName as ConsumedEventName,
        consumed.EventType as ConsumedEventType,
        consumed.ProcessSegmentId as ConsumedProcessSegmentId,
        consumed.ProductionRequestId as ConsumedProductionRequestId,
        consumed.SegmentRequirementId as ConsumedSegmentRequirementId,
        consumed.SubsegmentId as ConsumedSubsegmentId,
        a.Level,
        parentConsumed.EventGlobId as ParentConsumedEventGlobId,
        a.ParentConsumedEventPath
	from #all a
	left join dbo.MES_ResourceActualInternal produced
		on a.ProducedResourceActualKey = produced.EventGlobId
		--on a.ProducedResourceActualKey = produced.ResourceActualKey
	left join dbo.MES_ResourceActualInternal consumed
		on a.ConsumedResourceActualKey = consumed.EventGlobId
		--on a.ConsumedResourceActualKey = consumed.ResourceActualKey
	left join dbo.MES_ResourceActualInternal parentConsumed
		on a.ParentConsumedResourceActualKey = parentConsumed.EventGlobId;
		--on a.ParentConsumedResourceActualKey = parentConsumed.ResourceActualKey;
END
GO

CREATE PROC [dbo].[MES_GetGenealogyIdGenealogy_Restore]
	/*
	Comma separated guids
	*/
	@ProducedEventGlobIdList nvarchar(max)
as
begin
	declare @input table
	(
		EventGlobId int primary key
	);

	insert into @input (
		EventGlobId)
	select distinct
		EventGlobId
	from dbo.MES_SplitStr(@ProducedEventGlobIdList, N',');

	create table #all
	(
		ProducedResourceActualKey bigint,
		ConsumedResourceActualKey bigint,
		EventLinkId nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentConsumedResourceActualKey bigint,
		Level int,
		ConsumedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentConsumedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS
	);

	create index ix_tempAll
	on #all(
	    ProducedResourceActualKey);
	
	create index ix_tempAll2
	on #all(
	    ConsumedResourceActualKey);
	    
	create index ix_tempAll3
	on #all(
	    ParentConsumedResourceActualKey);
 
	create table #next
	(
		ProducedResourceActualKey bigint,
		ConsumedResourceActualKey bigint,
		EventLinkId nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentConsumedResourceActualKey bigint,
		Level int,
		ConsumedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentConsumedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS
	);
 
	create table #prev
	(
		ProducedResourceActualKey bigint,
		ConsumedResourceActualKey bigint,
		EventLinkId nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentConsumedResourceActualKey bigint,
		Level int,
		ConsumedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentConsumedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS
	);

	create index ix_tempPrev
	on #prev(
	    ConsumedResourceActualKey,
	    Level)
    include(
        ConsumedEventPath);

	insert into #all (
		ProducedResourceActualKey,
		ConsumedResourceActualKey,
		ParentConsumedResourceActualKey,
		EventLinkId,
		Level,
		ConsumedEventPath,
		ParentConsumedEventPath) 
	select
		p.EventGlobId, --p.ResourceActualKey,
		c.EventGlobId, --c.ResourceActualKey,
		0,
		c.EventLinkId,
		0, -- level
		cast(p.EventGlobId as nvarchar(max)) + N'/' + cast(c.EventGlobId as nvarchar(max)),
		--cast(p.ResourceActualKey as nvarchar(max)) + N'/' + cast(c.ResourceActualKey as nvarchar(max)),
		cast(null as nvarchar(max))
	from @input i
	inner join dbo.MES_ResourceActualInternal_Restore p
		on i.EventGlobId = p.EventGlobId
		and p.EventType = N'Material Produced Actual'
		and p.GenealogyId != N''
	inner join dbo.MES_ResourceActualInternal_Restore c
		on c.GenealogyId = p.GenealogyId
		and c.EventType = N'Material Consumed Actual';

	insert into #prev select * from #all;

	while @@rowcount > 0
	begin
		insert into #next (
			ProducedResourceActualKey,
			ConsumedResourceActualKey,
			ParentConsumedResourceActualKey,
			EventLinkId,
			Level,
			ConsumedEventPath,
			ParentConsumedEventPath)
		select distinct
			cte.ProducedResourceActualKey,
			consumed.EventGlobId, --consumed.ResourceActualKey,
			cte.ConsumedResourceActualKey,
			consumed.EventLinkId,
			cte.Level + 1,
			cte.ConsumedEventPath + N'/' + cast(consumed.EventGlobId as nvarchar(max)),
			--cte.ConsumedEventPath + N'/' + cast(consumed.ResourceActualKey as nvarchar(max)),
			cte.ConsumedEventPath
		from #prev cte
		inner join dbo.MES_ResourceActualInternal_Restore produced
			on produced.EventId = cte.EventLinkId
			and produced.EventType = N'Material Produced Actual'
			and cte.EventLinkId != N''
			and cte.Level < 99 -- Limits to 99 levels
		inner join dbo.MES_ResourceActualInternal_Restore consumed
			on consumed.GenealogyId = produced.GenealogyId
			and consumed.EventType = N'Material Consumed Actual'
			-- this prevents infinite recursion
			and charindex(cast(consumed.EventGlobId as nvarchar(max)), cte.ConsumedEventPath) = 0
			--and charindex(cast(consumed.ResourceActualKey as nvarchar(max)), cte.ConsumedEventPath) = 0

		insert into #all select * from #next;
		delete from #prev;
		insert #prev select * from #next;

		delete from #next;
	end;

	select
        produced.EventGlobId as ProducedEventGlobId,
        produced.EventDateUTC as ProducedEventFileTimeUtc,
        produced.Lot as ProducedLot,
        produced.MaterialId as ProducedMaterialId,
        produced.SerialNumber as ProducedSerialNumberList,

        produced.EventDateUTC as ProducedEventDate,
        produced.Location as ProducedLocation,
        produced.Sublot as ProducedSublot,
        produced.SegmentResponseId as ProducedSegmentResponseId,
        produced.Quantity as ProducedQuantity,
        produced.QuantityUnitOfMeasure as ProducedQuantityUnitOfMeasure,
        produced.GenealogyId as ProducedGenealogyId,
        produced.EventName as ProducedEventName,
        produced.EventType as ProducedEventType,
        produced.ProcessSegmentId as ProducedProcessSegmentId,
        produced.ProductionRequestId as ProducedProductionRequestId,
        produced.SegmentRequirementId as ProducedSegmentRequirementId,
        produced.SubsegmentId as ProducedSubsegmentId,

        consumed.EventGlobId as ConsumedEventGlobId,
        a.ConsumedEventPath,
        consumed.EventDateUTC as ConsumedEventFileTimeUtc,
        consumed.MaterialId as ConsumedMaterialId,
        consumed.EventDateUTC as ConsumedEventDate,
        consumed.Location as ConsumedLocation,
        consumed.Lot as ConsumedLot,
        consumed.Sublot as ConsumedSublot,
        consumed.SerialNumber as ConsumedSerialNumberList,
        consumed.SegmentResponseId as ConsumedSegmentResponseId,
        consumed.Quantity as ConsumedQuantity,
        consumed.QuantityUnitOfMeasure as ConsumedQuantityUnitOfMeasure,
        consumed.GenealogyId as ConsumedGenealogyId,
        consumed.EventName as ConsumedEventName,
        consumed.EventType as ConsumedEventType,
        consumed.ProcessSegmentId as ConsumedProcessSegmentId,
        consumed.ProductionRequestId as ConsumedProductionRequestId,
        consumed.SegmentRequirementId as ConsumedSegmentRequirementId,
        consumed.SubsegmentId as ConsumedSubsegmentId,
        a.Level,
        parentConsumed.EventGlobId as ParentConsumedEventGlobId,
        a.ParentConsumedEventPath
	from #all a
	left join dbo.MES_ResourceActualInternal_Restore produced
		on a.ProducedResourceActualKey = produced.EventGlobId
		--on a.ProducedResourceActualKey = produced.ResourceActualKey
	left join dbo.MES_ResourceActualInternal_Restore consumed
		on a.ConsumedResourceActualKey = consumed.EventGlobId
		--on a.ConsumedResourceActualKey = consumed.ResourceActualKey
	left join dbo.MES_ResourceActualInternal_Restore parentConsumed
		on a.ParentConsumedResourceActualKey = parentConsumed.EventGlobId;
		--on a.ParentConsumedResourceActualKey = parentConsumed.ResourceActualKey;
END
GO

CREATE PROC [dbo].[MES_GetLotGenealogy]
	/*
	Comma separated guids
	*/
	@ProducedEventGlobIdList nvarchar(max)
as
begin
	declare @input table
	(
		EventGlobId int primary key
	);

	insert into @input (
		EventGlobId)
	select distinct
		EventGlobId
	from dbo.MES_SplitStr(@ProducedEventGlobIdList, N',');

	create table #all
	(
		ProducedResourceActualKey bigint,
		ConsumedResourceActualKey bigint,
		ConsumedLot nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentConsumedResourceActualKey bigint,
		Level int,
		ConsumedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentConsumedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS
	);

	create index ix_tempAll
	on #all(
	    ProducedResourceActualKey);
	
	create index ix_tempAll2
	on #all(
	    ConsumedResourceActualKey);
	    
	create index ix_tempAll3
	on #all(
	    ParentConsumedResourceActualKey);
 
	create table #next
	(
		ProducedResourceActualKey bigint,
		ConsumedResourceActualKey bigint,
		ConsumedLot nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentConsumedResourceActualKey bigint,
		Level int,
		ConsumedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentConsumedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS
	);
 
	create table #prev
	(
		ProducedResourceActualKey bigint,
		ConsumedResourceActualKey bigint,
		ConsumedLot nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentConsumedResourceActualKey bigint,
		Level int,
		ConsumedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentConsumedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS
	);

	create index ix_tempPrev
	on #prev(
	    ConsumedResourceActualKey,
	    Level)
    include(
        ConsumedEventPath);

	insert into #all (
		ProducedResourceActualKey,
		ConsumedResourceActualKey,
		ConsumedLot,
		ParentConsumedResourceActualKey,
		Level,
		ConsumedEventPath,
		ParentConsumedEventPath) 
	select
		p.EventGlobId, --p.ResourceActualKey,
		c.EventGlobId, --c.ResourceActualKey,
		c.Lot,
		0,
		0, -- level
		cast(p.EventGlobId as nvarchar(max)) + N'/' + cast(c.EventGlobId as nvarchar(max)),
		--cast(p.ResourceActualKey as nvarchar(max)) + N'/' + cast(c.ResourceActualKey as nvarchar(max)),
		cast(null as nvarchar(max))
	from @input i
	inner join dbo.MES_ResourceActualInternal p
		on i.EventGlobId = p.EventGlobId
		and p.SegmentResponseId != N''
		and p.EventType = N'Material Produced Actual'
	inner join dbo.MES_ResourceActualInternal c
		on c.SegmentResponseId = p.SegmentResponseId
		--on c.SegmentResponseGlobId = p.SegmentResponseGlobId
		and c.EventType = N'Material Consumed Actual';

	insert into #prev select * from #all;

	while @@rowcount > 0
	begin

		insert into #next (
			ProducedResourceActualKey,
			ConsumedResourceActualKey,
			ConsumedLot,
			ParentConsumedResourceActualKey,
			Level,
			ConsumedEventPath,
			ParentConsumedEventPath)
		select distinct
			cte.ProducedResourceActualKey,
			consumed.EventGlobId,
			consumed.Lot,
			cte.ConsumedResourceActualKey,
			cte.Level + 1,
			cte.ConsumedEventPath + N'/' + cast(consumed.EventGlobId as nvarchar(max)),
			cte.ConsumedEventPath
		from #prev cte
		inner join dbo.MES_ResourceActualInternal produced
			on produced.Lot = cte.ConsumedLot
			and produced.EventType = N'Material Produced Actual'
			and cte.ConsumedLot != N''
			and produced.SegmentResponseId != N''
			and cte.Level < 99 -- Limits to 99 levels
		inner join dbo.MES_ResourceActualInternal consumed
			on consumed.SegmentResponseId = produced.SegmentResponseId
			and consumed.EventType = N'Material Consumed Actual'
			-- this prevents infinite recursion
			and charindex(cast(consumed.EventGlobId as nvarchar(max)),cte.ConsumedEventPath) = 0

		insert into #all select * from #next;
		delete from #prev;
		insert #prev select * from #next;

		delete from #next;
	end;

	select
        produced.EventGlobId as ProducedEventGlobId,
        produced.EventDateUTC as ProducedEventFileTimeUtc,
        produced.Lot as ProducedLot,
        produced.MaterialId as ProducedMaterialId,
        produced.SerialNumber as ProducedSerialNumberList,

        produced.EventDateUTC as ProducedEventDate,
        produced.Location as ProducedLocation,
        produced.Sublot as ProducedSublot,
        produced.SegmentResponseId as ProducedSegmentResponseId,
        produced.Quantity as ProducedQuantity,
        produced.QuantityUnitOfMeasure as ProducedQuantityUnitOfMeasure,
        produced.GenealogyId as ProducedGenealogyId,
        produced.EventName as ProducedEventName,
        produced.EventType as ProducedEventType,
        produced.ProcessSegmentId as ProducedProcessSegmentId,
        produced.ProductionRequestId as ProducedProductionRequestId,
        produced.SegmentRequirementId as ProducedSegmentRequirementId,
        produced.SubsegmentId as ProducedSubsegmentId,

        consumed.EventGlobId as ConsumedEventGlobId,
        a.ConsumedEventPath,
        consumed.EventDateUTC as ConsumedEventFileTimeUtc,
        consumed.MaterialId as ConsumedMaterialId,
        consumed.EventDateUTC as ConsumedEventDate,
        consumed.Location as ConsumedLocation,
        consumed.Lot as ConsumedLot,
        consumed.Sublot as ConsumedSublot,
        consumed.SerialNumber as ConsumedSerialNumberList,
        consumed.SegmentResponseId as ConsumedSegmentResponseId,
        consumed.Quantity as ConsumedQuantity,
        consumed.QuantityUnitOfMeasure as ConsumedQuantityUnitOfMeasure,
        consumed.GenealogyId as ConsumedGenealogyId,
        consumed.EventName as ConsumedEventName,
        consumed.EventType as ConsumedEventType,
        consumed.ProcessSegmentId as ConsumedProcessSegmentId,
        consumed.ProductionRequestId as ConsumedProductionRequestId,
        consumed.SegmentRequirementId as ConsumedSegmentRequirementId,
        consumed.SubsegmentId as ConsumedSubsegmentId,
        a.Level,
        parentConsumed.EventGlobId as ParentConsumedEventGlobId,
        a.ParentConsumedEventPath
	from #all a
	left join dbo.MES_ResourceActualInternal produced
		on a.ProducedResourceActualKey = produced.EventGlobId
	left join dbo.MES_ResourceActualInternal consumed
		on a.ConsumedResourceActualKey = consumed.EventGlobId
	left join dbo.MES_ResourceActualInternal parentConsumed
		on a.ParentConsumedResourceActualKey = parentConsumed.EventGlobId;
END
GO

CREATE PROC [dbo].[MES_GetLotGenealogy_Restore]
	/*
	Comma separated guids
	*/
	@ProducedEventGlobIdList nvarchar(max)
as
begin
	declare @input table
	(
		EventGlobId int primary key
	);

	insert into @input (
		EventGlobId)
	select distinct
		EventGlobId
	from dbo.MES_SplitStr(@ProducedEventGlobIdList, N',');

	create table #all
	(
		ProducedResourceActualKey bigint,
		ConsumedResourceActualKey bigint,
		ConsumedLot nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentConsumedResourceActualKey bigint,
		Level int,
		ConsumedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentConsumedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS
	);

	create index ix_tempAll
	on #all(
	    ProducedResourceActualKey);
	
	create index ix_tempAll2
	on #all(
	    ConsumedResourceActualKey);
	    
	create index ix_tempAll3
	on #all(
	    ParentConsumedResourceActualKey);
 
	create table #next
	(
		ProducedResourceActualKey bigint,
		ConsumedResourceActualKey bigint,
		ConsumedLot nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentConsumedResourceActualKey bigint,
		Level int,
		ConsumedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentConsumedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS
	);
 
	create table #prev
	(
		ProducedResourceActualKey bigint,
		ConsumedResourceActualKey bigint,
		ConsumedLot nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentConsumedResourceActualKey bigint,
		Level int,
		ConsumedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentConsumedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS
	);

	create index ix_tempPrev
	on #prev(
	    ConsumedResourceActualKey,
	    Level)
    include(
        ConsumedEventPath);

	insert into #all (
		ProducedResourceActualKey,
		ConsumedResourceActualKey,
		ConsumedLot,
		ParentConsumedResourceActualKey,
		Level,
		ConsumedEventPath,
		ParentConsumedEventPath) 
	select
		p.EventGlobId, --p.ResourceActualKey,
		c.EventGlobId, --c.ResourceActualKey,
		c.Lot,
		0,
		0, -- level
		cast(p.EventGlobId as nvarchar(max)) + N'/' + cast(c.EventGlobId as nvarchar(max)),
		--cast(p.ResourceActualKey as nvarchar(max)) + N'/' + cast(c.ResourceActualKey as nvarchar(max)),
		cast(null as nvarchar(max))
	from @input i
	inner join dbo.MES_ResourceActualInternal_Restore p
		on i.EventGlobId = p.EventGlobId
		and p.SegmentResponseId != N''
		and p.EventType = N'Material Produced Actual'
	inner join dbo.MES_ResourceActualInternal_Restore c
		on c.SegmentResponseId = p.SegmentResponseId
		--on c.SegmentResponseGlobId = p.SegmentResponseGlobId
		and c.EventType = N'Material Consumed Actual';

	insert into #prev select * from #all;

	while @@rowcount > 0
	begin

		insert into #next (
			ProducedResourceActualKey,
			ConsumedResourceActualKey,
			ConsumedLot,
			ParentConsumedResourceActualKey,
			Level,
			ConsumedEventPath,
			ParentConsumedEventPath)
		select distinct
			cte.ProducedResourceActualKey,
			consumed.EventGlobId,
			consumed.Lot,
			cte.ConsumedResourceActualKey,
			cte.Level + 1,
			cte.ConsumedEventPath + N'/' + cast(consumed.EventGlobId as nvarchar(max)),
			cte.ConsumedEventPath
		from #prev cte
		inner join dbo.MES_ResourceActualInternal_Restore produced
			on produced.Lot = cte.ConsumedLot
			and produced.EventType = N'Material Produced Actual'
			and cte.ConsumedLot != N''
			and produced.SegmentResponseId != N''
			and cte.Level < 99 -- Limits to 99 levels
		inner join dbo.MES_ResourceActualInternal_Restore consumed
			on consumed.SegmentResponseId = produced.SegmentResponseId
			and consumed.EventType = N'Material Consumed Actual'
			-- this prevents infinite recursion
			and charindex(cast(consumed.EventGlobId as nvarchar(max)),cte.ConsumedEventPath) = 0

		insert into #all select * from #next;
		delete from #prev;
		insert #prev select * from #next;

		delete from #next;
	end;

	select
        produced.EventGlobId as ProducedEventGlobId,
        produced.EventDateUTC as ProducedEventFileTimeUtc,
        produced.Lot as ProducedLot,
        produced.MaterialId as ProducedMaterialId,
        produced.SerialNumber as ProducedSerialNumberList,

        produced.EventDateUTC as ProducedEventDate,
        produced.Location as ProducedLocation,
        produced.Sublot as ProducedSublot,
        produced.SegmentResponseId as ProducedSegmentResponseId,
        produced.Quantity as ProducedQuantity,
        produced.QuantityUnitOfMeasure as ProducedQuantityUnitOfMeasure,
        produced.GenealogyId as ProducedGenealogyId,
        produced.EventName as ProducedEventName,
        produced.EventType as ProducedEventType,
        produced.ProcessSegmentId as ProducedProcessSegmentId,
        produced.ProductionRequestId as ProducedProductionRequestId,
        produced.SegmentRequirementId as ProducedSegmentRequirementId,
        produced.SubsegmentId as ProducedSubsegmentId,

        consumed.EventGlobId as ConsumedEventGlobId,
        a.ConsumedEventPath,
        consumed.EventDateUTC as ConsumedEventFileTimeUtc,
        consumed.MaterialId as ConsumedMaterialId,
        consumed.EventDateUTC as ConsumedEventDate,
        consumed.Location as ConsumedLocation,
        consumed.Lot as ConsumedLot,
        consumed.Sublot as ConsumedSublot,
        consumed.SerialNumber as ConsumedSerialNumberList,
        consumed.SegmentResponseId as ConsumedSegmentResponseId,
        consumed.Quantity as ConsumedQuantity,
        consumed.QuantityUnitOfMeasure as ConsumedQuantityUnitOfMeasure,
        consumed.GenealogyId as ConsumedGenealogyId,
        consumed.EventName as ConsumedEventName,
        consumed.EventType as ConsumedEventType,
        consumed.ProcessSegmentId as ConsumedProcessSegmentId,
        consumed.ProductionRequestId as ConsumedProductionRequestId,
        consumed.SegmentRequirementId as ConsumedSegmentRequirementId,
        consumed.SubsegmentId as ConsumedSubsegmentId,
        a.Level,
        parentConsumed.EventGlobId as ParentConsumedEventGlobId,
        a.ParentConsumedEventPath
	from #all a
	left join dbo.MES_ResourceActualInternal_Restore produced
		on a.ProducedResourceActualKey = produced.EventGlobId
	left join dbo.MES_ResourceActualInternal_Restore consumed
		on a.ConsumedResourceActualKey = consumed.EventGlobId
	left join dbo.MES_ResourceActualInternal_Restore parentConsumed
		on a.ParentConsumedResourceActualKey = parentConsumed.EventGlobId;
END
GO

CREATE PROC [dbo].[MES_GetGenealogy]
	/*
	Comma separated guids
	*/
	@ProducedEventGlobIdList nvarchar(max),

	/*
	Lot, SerialNumber, GenealogyId, MaterialId
	*/
	@GenealogyMethod nvarchar(max),
	/*
	TimeZoneId
	*/
	@TimeZoneId int,
	/*
	ExecuteAgainstRestoreDB - 0 or 1
	*/
	@ExecuteAgainstRestoreDB	BIT=0
AS
BEGIN

declare @genealogyData table(
		ProducedEventGlobId int null,
		ProducedEventFileTimeUtc datetime null,
        ProducedLot nvarchar(40) null,
        ProducedMaterialId nvarchar(40) null,
        ProducedSerialNumberList nvarchar(80) null,

        ProducedEventDate datetime null,
        ProducedLocation nvarchar(80) null,
        ProducedSublot nvarchar(40) null,
        ProducedSegmentResponseId nvarchar(80) null,
        ProducedQuantity  int null,
        ProducedQuantityUnitOfMeasure nvarchar(80) null,
        ProducedGenealogyId nvarchar(254) null,
        ProducedEventName nvarchar(80) null,
        ProducedEventType nvarchar(40) null,
        ProducedProcessSegmentId nvarchar(40) null,
        ProducedProductionRequestId nvarchar(40) null,
        ProducedSegmentRequirementId nvarchar(80) null,
        ProducedSubsegmentId nvarchar(80) null,

        ConsumedEventGlobId int null,
		ConsumedEventPath nvarchar(max) null,
        ConsumedEventFileTimeUtc datetime null,
        ConsumedMaterialId nvarchar(40) null,
		ConsumedEventDate datetime null,
        ConsumedLocation nvarchar(80) null,
        ConsumedLot nvarchar(40) null,
        ConsumedSublot nvarchar(40) null,
        ConsumedSerialNumberList nvarchar(80) null,
        ConsumedSegmentResponseId nvarchar(80) null,
        ConsumedQuantity int null,
        ConsumedQuantityUnitOfMeasure nvarchar(80) null,
        ConsumedGenealogyId nvarchar(254)null,
        ConsumedEventName nvarchar(80) null,
        ConsumedEventType nvarchar(40) null,
        ConsumedProcessSegmentId nvarchar(40) null,
        ConsumedProductionRequestId nvarchar(40) null,
        ConsumedSegmentRequirementId nvarchar(80) null,
        ConsumedSubsegmentId nvarchar(80) null,
        Level int null,
        ParentConsumedEventGlobId int null,
        ParentConsumedEventPath nvarchar(max) null)

     --Create the actual query for the SP
--    DECLARE	@SrvName AS NVARCHAR(50)
--	DECLARE	@SrvCat AS NVARCHAR(50)
	DECLARE	@StrQuery AS NVARCHAR(max)
	DECLARE	@SpName AS NVARCHAR(50)
--	DECLARE	@RoId AS NVARCHAR(50)

	if(@GenealogyMethod = N'GenealogyId')
		SET @SpName = ' dbo.MES_GetGenealogyIdGenealogy'
	else
		SET @SpName = ' dbo.MES_GetLotGenealogy'

	IF(@ExecuteAgainstRestoreDB>0) 
	BEGIN
		SET @SpName = @SpName + N'_Restore'
	END

	SET @StrQuery = @SpName + ' N'''+ @ProducedEventGlobIdList + ''''
 
    insert into @genealogyData
	EXECUTE (@StrQuery)

	--Now add the null row required by the reports to display the 
	--Hierarchical table

	declare @producedEventGlobIds table(
	    ProducedEventGlobId int primary key);

    insert into @producedEventGlobIds(
	    ProducedEventGlobId)
    select distinct
	    EventGlobId
    from dbo.MES_SplitStr(@ProducedEventGlobIdList, N',');

    insert into @genealogyData
    select distinct
	    null as ProducedEventGlobId,
	    null as ProducedEventFileTimeUtc,
	    null as ProducedLot,
	    null as ProducedMaterialId,
	    null as ProducedSerialNumberList,

	    null as ProducedEventDate,
	    null as ProducedLocation,
	    null as ProducedSublot,
	    null as ProducedSegmentResponseId,
	    null as ProducedQuantity,
	    null as ProducedQuantityUnitOfMeasure,
	    null as ProducedGenealogyId,
	    null as ProducedEventName,
	    null as ProducedEventType,
	    null as ProducedProcessSegmentId,
	    null as ProducedProductionRequestId,
	    null as ProducedSegmentRequirementId,
	    null as ProducedSubsegmentId,

	    genData.ProducedEventGlobId as ConsumedEventGlobId,
	    genData.ProducedEventGlobId as ConsumedEventPath,
	    genData.ProducedEventFileTimeUtc as ConsumedEventFileTimeUtc,
	    genData.ProducedMaterialId as ConsumedMaterialId,
	    genData.ProducedEventDate as ConsumedEventDate,
	    genData.ProducedLocation as ConsumedLocation,
	    genData.ProducedLot as ConsumedLot,
	    genData.ProducedSublot as ConsumedSublot,
	    genData.ProducedSerialNumberList as ConsumedSerialNumberList,
	    genData.ProducedSegmentResponseId as ConsumedSegmentResponseId,
	    genData.ProducedQuantity as ConsumedQuantity,
	    genData.ProducedQuantityUnitOfMeasure as ConsumedQuantityUnitOfMeasure,
	    genData.ProducedGenealogyId as ConsumedGenealogyId,
	    genData.ProducedEventName as ConsumedEventName,
	    genData.ProducedEventType as ConsumedEventType,
	    genData.ProducedProcessSegmentId as ConsumedProcessSegmentId,
	    genData.ProducedProductionRequestId as ConsumedProductionRequestId,
	    genData.ProducedSegmentRequirementId as ConsumedSegmentRequirementId,
	    genData.ProducedSubsegmentId as ConsumedSubsegmentId,
	    -1 as Level,
	    null as ParentConsumedEventGlobId,
	    null as ParentConsumedEventPath
    from @genealogyData as genData
    inner join @producedEventGlobIds produced
	    on produced.ProducedEventGlobId = genData.ProducedEventGlobId
    where genData.Level = 0;

    update genData
    set
	    genData.ParentConsumedEventGlobId = genData.ProducedEventGlobId,
	    genData.ParentConsumedEventPath = cast(genData.ProducedEventGlobId as nvarchar(max))
    from @genealogyData genData
    inner join @producedEventGlobIds produced
	    on genData.ProducedEventGlobId = produced.ProducedEventGlobId
    where genData.Level = 0;

	declare @actualTimeZoneId int;

    -- Need to determine if the parameter values came from the ArchestrA
    -- Reports parameter page or the standard Microsoft page
    -- For the logic below to work correctly, the report should include
    -- an integer parameter "TimeZoneId" with a default value of "-1"

    if ( @TimeZoneId = -1 )
	-- The ArchestrA Reports parameter page will never supply a value of "-1".
	-- Assume the time is in "server local" time rather than UTC
	    set @actualTimeZoneId = -100;
    else
    begin
	    -- This was set by the Parameter page and will be expressed in UTC
        set @actualTimeZoneId = @TimeZoneId;
    end;

	update @genealogyData 
	set 
		ProducedEventDate = dbo.UtcToTimeZone(ProducedEventFileTimeUtc,@actualTimeZoneId),
		ConsumedEventDate = dbo.UtcToTimeZone(ConsumedEventFileTimeUtc,@actualTimeZoneId)

	select * from @genealogyData
END
GO

CREATE PROC [dbo].[MES_GetReverseGenealogyIdGenealogy]
	/*
	Comma separated guids
	*/
	@ConsumedEventGlobIdList nvarchar(max)
as
begin
	declare @input table
	(
		EventGlobId int primary key
	);

	insert into @input (
		EventGlobId)
	select distinct
		EventGlobId
	from dbo.MES_SplitStr(@ConsumedEventGlobIdList, N',');

	create table #all
	(
		ConsumedResourceActualKey bigint,
		ProducedResourceActualKey bigint,
		EventId nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentProducedResourceActualKey bigint,
		Level int,
		ProducedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentProducedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS
	);

	create index ix_tempAll
	on #all(
	    ConsumedResourceActualKey);

	create index ix_tempAll2
	on #all(
	    ProducedResourceActualKey);

	create index ix_tempAll3
	on #all(
	    ParentProducedResourceActualKey);

	create table #next
	(
		ConsumedResourceActualKey bigint,
		ProducedResourceActualKey bigint,
		EventId nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentProducedResourceActualKey bigint,
		Level int,
		ProducedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentProducedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS
	);

	create table #prev
	(
		ConsumedResourceActualKey bigint,
		ProducedResourceActualKey bigint,
		EventId nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentProducedResourceActualKey bigint,
		Level int,
		ProducedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentProducedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS
	);

	create index ix_tempPrev
	on #prev(
	    ProducedResourceActualKey,
	    Level)
    include(
        ProducedEventPath);

	insert into #all (
		ConsumedResourceActualKey,
		ProducedResourceActualKey,
		ParentProducedResourceActualKey,
		EventId,
		Level,
		ProducedEventPath,
		ParentProducedEventPath)
	select
		c.EventGlobId, --c.ResourceActualKey,
		p.EventGlobId, --p.ResourceActualKey,
		0,
		p.EventId,
		0, -- level
		cast(c.EventGlobId as nvarchar(max)) + N'/' + cast(p.EventGlobId as nvarchar(max)),
		--cast(c.ResourceActualKey as nvarchar(max)) + N'/' + cast(p.ResourceActualKey as nvarchar(max)),
		cast(null as nvarchar(max))
	from @input i
    inner join dbo.MES_ResourceActualInternal c
		on i.EventGlobId = c.EventGlobId
		and c.EventType = N'Material Consumed Actual'
		and c.GenealogyId != N''
	inner join dbo.MES_ResourceActualInternal p
		on p.GenealogyId = c.GenealogyId
		and p.EventType = N'Material Produced Actual';

	insert into #prev select * from #all;

	while @@rowcount > 0
	begin
		insert into #next (
			ConsumedResourceActualKey,
			ProducedResourceActualKey,
			ParentProducedResourceActualKey,
			EventId,
			Level,
			ProducedEventPath,
			ParentProducedEventPath)
		select distinct
			cte.ConsumedResourceActualKey,
			produced.EventGlobId,
			cte.ProducedResourceActualKey,
			produced.EventId,
			cte.Level + 1,
			cte.ProducedEventPath + N'/' + cast(produced.EventGlobId as nvarchar(max)),
			cte.ProducedEventPath
		from #prev cte
		inner join dbo.MES_ResourceActualInternal consumed
			on consumed.EventLinkId = cte.EventId
			and consumed.EventType = N'Material Consumed Actual'
			and cte.EventId != N''
			and consumed.GenealogyId != N''
			and cte.Level < 99 -- Limits to 99 levels
		inner join dbo.MES_ResourceActualInternal produced
			on produced.GenealogyId = consumed.GenealogyId
			and produced.EventType = N'Material Produced Actual'
			and charindex(cast(produced.EventGlobId as nvarchar(max)), cte.ProducedEventPath) = 0

		insert into #all select * from #next;
		delete from #prev;
		insert #prev select * from #next;

		delete from #next;
	end;

	select
        consumed.EventGlobId as ConsumedEventGlobId,
        consumed.EventDateUtc as ConsumedEventFileTimeUtc,
        consumed.Lot as ConsumedLot,
        consumed.MaterialId as ConsumedMaterialId,
        consumed.SerialNumber as ConsumedSerialNumberList,

        consumed.EventDateUtc as ConsumedEventDate,
        consumed.Location as ConsumedLocation,
        consumed.Sublot as ConsumedSublot,
        consumed.SegmentResponseId as ConsumedSegmentResponseId,
        consumed.Quantity as ConsumedQuantity,
        consumed.QuantityUnitOfMeasure as ConsumedQuantityUnitOfMeasure,
        consumed.GenealogyId as ConsumedGenealogyId,
        consumed.EventName as ConsumedEventName,
        consumed.EventType as ConsumedEventType,
        consumed.ProcessSegmentId as ConsumedProcessSegmentId,
        consumed.ProductionRequestId as ConsumedProductionRequestId,
        consumed.SegmentRequirementId as ConsumedSegmentRequirementId,
        consumed.SubsegmentId as ConsumedSubsegmentId,

        produced.EventGlobId as ProducedEventGlobId,
        a.ProducedEventPath,
        produced.EventDateUtc as ProducedEventFileTimeUtc,
        produced.MaterialId as ProducedMaterialId,
        produced.EventDateUtc as ProducedEventDate,
        produced.Location as ProducedLocation,
        produced.Lot as ProducedLot,
        produced.Sublot as ProducedSublot,
        produced.SerialNumber as ProducedSerialNumberList,
        produced.SegmentResponseId as ProducedSegmentResponseId,
        produced.Quantity as ProducedQuantity,
        produced.QuantityUnitOfMeasure as ProducedQuantityUnitOfMeasure,
        produced.GenealogyId as ProducedGenealogyId,
        produced.EventName as ProducedEventName,
        produced.EventType as ProducedEventType,
        produced.ProcessSegmentId as ProducedProcessSegmentId,
        produced.ProductionRequestId as ProducedProductionRequestId,
        produced.SegmentRequirementId as ProducedSegmentRequirementId,
        produced.SubsegmentId as ProducedSubsegmentId,
        a.Level,
        parentProduced.EventGlobId as ParentProducedEventGlobId,
        a.ParentProducedEventPath
	from #all a
	left join dbo.MES_ResourceActualInternal consumed
		on a.ConsumedResourceActualKey = consumed.EventGlobId
	left join dbo.MES_ResourceActualInternal produced
		on a.ProducedResourceActualKey = produced.EventGlobId
	left join dbo.MES_ResourceActualInternal parentProduced
		on a.ParentProducedResourceActualKey = parentProduced.EventGlobId;
END
GO

CREATE PROC [dbo].[MES_GetReverseGenealogyIdGenealogy_Restore]
	/*
	Comma separated guids
	*/
	@ConsumedEventGlobIdList nvarchar(max)
as
begin
	declare @input table
	(
		EventGlobId int primary key
	);

	insert into @input (
		EventGlobId)
	select distinct
		EventGlobId
	from dbo.MES_SplitStr(@ConsumedEventGlobIdList, N',');

	create table #all
	(
		ConsumedResourceActualKey bigint,
		ProducedResourceActualKey bigint,
		EventId nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentProducedResourceActualKey bigint,
		Level int,
		ProducedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentProducedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS
	);

	create index ix_tempAll
	on #all(
	    ConsumedResourceActualKey);

	create index ix_tempAll2
	on #all(
	    ProducedResourceActualKey);

	create index ix_tempAll3
	on #all(
	    ParentProducedResourceActualKey);

	create table #next
	(
		ConsumedResourceActualKey bigint,
		ProducedResourceActualKey bigint,
		EventId nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentProducedResourceActualKey bigint,
		Level int,
		ProducedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentProducedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS
	);

	create table #prev
	(
		ConsumedResourceActualKey bigint,
		ProducedResourceActualKey bigint,
		EventId nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentProducedResourceActualKey bigint,
		Level int,
		ProducedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentProducedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS
	);

	create index ix_tempPrev
	on #prev(
	    ProducedResourceActualKey,
	    Level)
    include(
        ProducedEventPath);

	insert into #all (
		ConsumedResourceActualKey,
		ProducedResourceActualKey,
		ParentProducedResourceActualKey,
		EventId,
		Level,
		ProducedEventPath,
		ParentProducedEventPath)
	select
		c.EventGlobId, --c.ResourceActualKey,
		p.EventGlobId, --p.ResourceActualKey,
		0,
		p.EventId,
		0, -- level
		cast(c.EventGlobId as nvarchar(max)) + N'/' + cast(p.EventGlobId as nvarchar(max)),
		--cast(c.ResourceActualKey as nvarchar(max)) + N'/' + cast(p.ResourceActualKey as nvarchar(max)),
		cast(null as nvarchar(max))
	from @input i
    inner join dbo.MES_ResourceActualInternal_Restore c
		on i.EventGlobId = c.EventGlobId
		and c.EventType = N'Material Consumed Actual'
		and c.GenealogyId != N''
	inner join dbo.MES_ResourceActualInternal_Restore p
		on p.GenealogyId = c.GenealogyId
		and p.EventType = N'Material Produced Actual';

	insert into #prev select * from #all;

	while @@rowcount > 0
	begin
		insert into #next (
			ConsumedResourceActualKey,
			ProducedResourceActualKey,
			ParentProducedResourceActualKey,
			EventId,
			Level,
			ProducedEventPath,
			ParentProducedEventPath)
		select distinct
			cte.ConsumedResourceActualKey,
			produced.EventGlobId,
			cte.ProducedResourceActualKey,
			produced.EventId,
			cte.Level + 1,
			cte.ProducedEventPath + N'/' + cast(produced.EventGlobId as nvarchar(max)),
			cte.ProducedEventPath
		from #prev cte
		inner join dbo.MES_ResourceActualInternal_Restore consumed
			on consumed.EventLinkId = cte.EventId
			and consumed.EventType = N'Material Consumed Actual'
			and cte.EventId != N''
			and consumed.GenealogyId != N''
			and cte.Level < 99 -- Limits to 99 levels
		inner join dbo.MES_ResourceActualInternal_Restore produced
			on produced.GenealogyId = consumed.GenealogyId
			and produced.EventType = N'Material Produced Actual'
			and charindex(cast(produced.EventGlobId as nvarchar(max)), cte.ProducedEventPath) = 0

		insert into #all select * from #next;
		delete from #prev;
		insert #prev select * from #next;

		delete from #next;
	end;

	select
        consumed.EventGlobId as ConsumedEventGlobId,
        consumed.EventDateUtc as ConsumedEventFileTimeUtc,
        consumed.Lot as ConsumedLot,
        consumed.MaterialId as ConsumedMaterialId,
        consumed.SerialNumber as ConsumedSerialNumberList,

        consumed.EventDateUtc as ConsumedEventDate,
        consumed.Location as ConsumedLocation,
        consumed.Sublot as ConsumedSublot,
        consumed.SegmentResponseId as ConsumedSegmentResponseId,
        consumed.Quantity as ConsumedQuantity,
        consumed.QuantityUnitOfMeasure as ConsumedQuantityUnitOfMeasure,
        consumed.GenealogyId as ConsumedGenealogyId,
        consumed.EventName as ConsumedEventName,
        consumed.EventType as ConsumedEventType,
        consumed.ProcessSegmentId as ConsumedProcessSegmentId,
        consumed.ProductionRequestId as ConsumedProductionRequestId,
        consumed.SegmentRequirementId as ConsumedSegmentRequirementId,
        consumed.SubsegmentId as ConsumedSubsegmentId,

        produced.EventGlobId as ProducedEventGlobId,
        a.ProducedEventPath,
        produced.EventDateUtc as ProducedEventFileTimeUtc,
        produced.MaterialId as ProducedMaterialId,
        produced.EventDateUtc as ProducedEventDate,
        produced.Location as ProducedLocation,
        produced.Lot as ProducedLot,
        produced.Sublot as ProducedSublot,
        produced.SerialNumber as ProducedSerialNumberList,
        produced.SegmentResponseId as ProducedSegmentResponseId,
        produced.Quantity as ProducedQuantity,
        produced.QuantityUnitOfMeasure as ProducedQuantityUnitOfMeasure,
        produced.GenealogyId as ProducedGenealogyId,
        produced.EventName as ProducedEventName,
        produced.EventType as ProducedEventType,
        produced.ProcessSegmentId as ProducedProcessSegmentId,
        produced.ProductionRequestId as ProducedProductionRequestId,
        produced.SegmentRequirementId as ProducedSegmentRequirementId,
        produced.SubsegmentId as ProducedSubsegmentId,
        a.Level,
        parentProduced.EventGlobId as ParentProducedEventGlobId,
        a.ParentProducedEventPath
	from #all a
	left join dbo.MES_ResourceActualInternal_Restore consumed
		on a.ConsumedResourceActualKey = consumed.EventGlobId
	left join dbo.MES_ResourceActualInternal_Restore produced
		on a.ProducedResourceActualKey = produced.EventGlobId
	left join dbo.MES_ResourceActualInternal_Restore parentProduced
		on a.ParentProducedResourceActualKey = parentProduced.EventGlobId;
END
GO

CREATE PROC [dbo].[MES_GetReverseLotGenealogy]
	/*
	Comma separated guids
	*/
	@ConsumedEventGlobIdList nvarchar(max)
as
begin
	declare @input table
	(
		EventGlobId int primary key
	);

	insert into @input (
		EventGlobId)
	select distinct
		EventGlobId
	from dbo.MES_SplitStr(@ConsumedEventGlobIdList, N',');

	create table #all
	(
		ConsumedResourceActualKey bigint,
		ProducedResourceActualKey bigint,
		ProducedLot nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentProducedResourceActualKey bigint,
		Level int,
		ProducedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentProducedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS
	);

	create index ix_tempAll
	on #all(
	    ConsumedResourceActualKey);

	create index ix_tempAll2
	on #all(
	    ProducedResourceActualKey);

	create index ix_tempAll3
	on #all(
	    ParentProducedResourceActualKey);

	create table #next
	(
		ConsumedResourceActualKey bigint,
		ProducedResourceActualKey bigint,
		ProducedLot nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentProducedResourceActualKey bigint,
		Level int,
		ProducedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentProducedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS
	);

	create table #prev
	(
		ConsumedResourceActualKey bigint,
		ProducedResourceActualKey bigint,
		ProducedLot nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentProducedResourceActualKey bigint,
		Level int,
		ProducedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentProducedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS
	);

	create index ix_tempPrev
	on #prev(
	    ProducedResourceActualKey,
	    Level)
    include(
        ProducedEventPath);

	insert into #all (
		ConsumedResourceActualKey,
		ProducedResourceActualKey,
		ProducedLot,
		ParentProducedResourceActualKey,
		Level,
		ProducedEventPath,
		ParentProducedEventPath)
	select
		c.EventGlobId, --c.ResourceActualKey,
		p.EventGlobId, --p.ResourceActualKey,
		p.Lot,
		0,
		0, -- level
		cast(c.EventGlobId as nvarchar(max)) + N'/' + cast(p.EventGlobId as nvarchar(max)),
		--cast(c.ResourceActualKey as nvarchar(max)) + N'/' + cast(p.ResourceActualKey as nvarchar(max)),
		cast(null as nvarchar(max))
	from @input i
    inner join dbo.MES_ResourceActualInternal c
        on i.EventGlobId = c.EventGlobId
		and c.SegmentResponseId != N''
		and c.EventType = N'Material Consumed Actual'
	inner join dbo.MES_ResourceActualInternal p
		on p.SegmentResponseId = c.SegmentResponseId
		and p.EventType = N'Material Produced Actual';

	insert into #prev select * from #all;

	while @@rowcount > 0
	begin

		insert into #next (
			ConsumedResourceActualKey,
			ProducedResourceActualKey,
			ProducedLot,
			ParentProducedResourceActualKey,
			Level,
			ProducedEventPath,
			ParentProducedEventPath)
		select distinct
			cte.ConsumedResourceActualKey,
			produced.EventGlobId,
			produced.Lot,
			cte.ProducedResourceActualKey,
			cte.Level + 1,
			cte.ProducedEventPath + N'/' + cast(produced.EventGlobId as nvarchar(max)),
			cte.ProducedEventPath
		from #prev cte
		inner join dbo.MES_ResourceActualInternal consumed
			on consumed.Lot = cte.ProducedLot
			and consumed.EventType = N'Material Consumed Actual'
			and cte.ProducedLot != N''
			and consumed.SegmentResponseId != N''
			and cte.Level < 99 -- Limits to 99 levels
		inner join dbo.MES_ResourceActualInternal produced
			on produced.SegmentResponseId = consumed.SegmentResponseId
			and produced.EventType = N'Material Produced Actual'
			-- this prevents infinite recursion
			and charindex(cast(produced.EventGlobId as nvarchar(max)),cte.ProducedEventPath) = 0

		insert into #all select * from #next;
		delete from #prev;
		insert #prev select * from #next;

		delete from #next;
	end;

    select
        consumed.EventGlobId as ConsumedEventGlobId,
        consumed.EventDateUTC as ConsumedEventFileTimeUtc,
        consumed.Lot as ConsumedLot,
        consumed.MaterialId as ConsumedMaterialId,
        consumed.SerialNumber as ConsumedSerialNumberList,

        consumed.EventDateUTC as ConsumedEventDate,
        consumed.Location as ConsumedLocation,
        consumed.Sublot as ConsumedSublot,
        consumed.SegmentResponseId as ConsumedSegmentResponseId,
        consumed.Quantity as ConsumedQuantity,
        consumed.QuantityUnitOfMeasure as ConsumedQuantityUnitOfMeasure,
        consumed.GenealogyId as ConsumedGenealogyId,
        consumed.EventName as ConsumedEventName,
        consumed.EventType as ConsumedEventType,
        consumed.ProcessSegmentId as ConsumedProcessSegmentId,
        consumed.ProductionRequestId as ConsumedProductionRequestId,
        consumed.SegmentRequirementId as ConsumedSegmentRequirementId,
        consumed.SubsegmentId as ConsumedSubsegmentId,

        produced.EventGlobId as ProducedEventGlobId,
        a.ProducedEventPath,
        produced.EventDateUTC as ProducedEventFileTimeUtc,
        produced.MaterialId as ProducedMaterialId,
        produced.EventDateUTC as ProducedEventDate,
        produced.Location as ProducedLocation,
        produced.Lot as ProducedLot,
        produced.Sublot as ProducedSublot,
        produced.SerialNumber as ProducedSerialNumberList,
        produced.SegmentResponseId as ProducedSegmentResponseId,
        produced.Quantity as ProducedQuantity,
        produced.QuantityUnitOfMeasure as ProducedQuantityUnitOfMeasure,
        produced.GenealogyId as ProducedGenealogyId,
        produced.EventName as ProducedEventName,
        produced.EventType as ProducedEventType,
        produced.ProcessSegmentId as ProducedProcessSegmentId,
        produced.ProductionRequestId as ProducedProductionRequestId,
        produced.SegmentRequirementId as ProducedSegmentRequirementId,
        produced.SubsegmentId as ProducedSubsegmentId,
        a.Level,
        parentProduced.EventGlobId as ParentProducedEventGlobId,
        a.ParentProducedEventPath
	from #all a
	left join dbo.MES_ResourceActualInternal consumed
		on a.ConsumedResourceActualKey = consumed.EventGlobId
	left join dbo.MES_ResourceActualInternal produced
		on a.ProducedResourceActualKey = produced.EventGlobId
	left join dbo.MES_ResourceActualInternal parentProduced
		on a.ParentProducedResourceActualKey = parentProduced.EventGlobId;
END
GO

CREATE PROC [dbo].[MES_GetReverseLotGenealogy_Restore]
	/*
	Comma separated guids
	*/
	@ConsumedEventGlobIdList nvarchar(max)
as
begin
	declare @input table
	(
		EventGlobId int primary key
	);

	insert into @input (
		EventGlobId)
	select distinct
		EventGlobId
	from dbo.MES_SplitStr(@ConsumedEventGlobIdList, N',');

	create table #all
	(
		ConsumedResourceActualKey bigint,
		ProducedResourceActualKey bigint,
		ProducedLot nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentProducedResourceActualKey bigint,
		Level int,
		ProducedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentProducedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS
	);

	create index ix_tempAll
	on #all(
	    ConsumedResourceActualKey);

	create index ix_tempAll2
	on #all(
	    ProducedResourceActualKey);

	create index ix_tempAll3
	on #all(
	    ParentProducedResourceActualKey);

	create table #next
	(
		ConsumedResourceActualKey bigint,
		ProducedResourceActualKey bigint,
		ProducedLot nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentProducedResourceActualKey bigint,
		Level int,
		ProducedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentProducedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS
	);

	create table #prev
	(
		ConsumedResourceActualKey bigint,
		ProducedResourceActualKey bigint,
		ProducedLot nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentProducedResourceActualKey bigint,
		Level int,
		ProducedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS,
		ParentProducedEventPath nvarchar(max) collate SQL_Latin1_General_CP1_CI_AS
	);

	create index ix_tempPrev
	on #prev(
	    ProducedResourceActualKey,
	    Level)
    include(
        ProducedEventPath);

	insert into #all (
		ConsumedResourceActualKey,
		ProducedResourceActualKey,
		ProducedLot,
		ParentProducedResourceActualKey,
		Level,
		ProducedEventPath,
		ParentProducedEventPath)
	select
		c.EventGlobId, --c.ResourceActualKey,
		p.EventGlobId, --p.ResourceActualKey,
		p.Lot,
		0,
		0, -- level
		cast(c.EventGlobId as nvarchar(max)) + N'/' + cast(p.EventGlobId as nvarchar(max)),
		--cast(c.ResourceActualKey as nvarchar(max)) + N'/' + cast(p.ResourceActualKey as nvarchar(max)),
		cast(null as nvarchar(max))
	from @input i
    inner join dbo.MES_ResourceActualInternal_Restore c
        on i.EventGlobId = c.EventGlobId
		and c.SegmentResponseId != N''
		and c.EventType = N'Material Consumed Actual'
	inner join dbo.MES_ResourceActualInternal_Restore p
		on p.SegmentResponseId = c.SegmentResponseId
		and p.EventType = N'Material Produced Actual';

	insert into #prev select * from #all;

	while @@rowcount > 0
	begin

		insert into #next (
			ConsumedResourceActualKey,
			ProducedResourceActualKey,
			ProducedLot,
			ParentProducedResourceActualKey,
			Level,
			ProducedEventPath,
			ParentProducedEventPath)
		select distinct
			cte.ConsumedResourceActualKey,
			produced.EventGlobId,
			produced.Lot,
			cte.ProducedResourceActualKey,
			cte.Level + 1,
			cte.ProducedEventPath + N'/' + cast(produced.EventGlobId as nvarchar(max)),
			cte.ProducedEventPath
		from #prev cte
		inner join dbo.MES_ResourceActualInternal_Restore consumed
			on consumed.Lot = cte.ProducedLot
			and consumed.EventType = N'Material Consumed Actual'
			and cte.ProducedLot != N''
			and consumed.SegmentResponseId != N''
			and cte.Level < 99 -- Limits to 99 levels
		inner join dbo.MES_ResourceActualInternal_Restore produced
			on produced.SegmentResponseId = consumed.SegmentResponseId
			and produced.EventType = N'Material Produced Actual'
			-- this prevents infinite recursion
			and charindex(cast(produced.EventGlobId as nvarchar(max)),cte.ProducedEventPath) = 0

		insert into #all select * from #next;
		delete from #prev;
		insert #prev select * from #next;

		delete from #next;
	end;

    select
        consumed.EventGlobId as ConsumedEventGlobId,
        consumed.EventDateUTC as ConsumedEventFileTimeUtc,
        consumed.Lot as ConsumedLot,
        consumed.MaterialId as ConsumedMaterialId,
        consumed.SerialNumber as ConsumedSerialNumberList,

        consumed.EventDateUTC as ConsumedEventDate,
        consumed.Location as ConsumedLocation,
        consumed.Sublot as ConsumedSublot,
        consumed.SegmentResponseId as ConsumedSegmentResponseId,
        consumed.Quantity as ConsumedQuantity,
        consumed.QuantityUnitOfMeasure as ConsumedQuantityUnitOfMeasure,
        consumed.GenealogyId as ConsumedGenealogyId,
        consumed.EventName as ConsumedEventName,
        consumed.EventType as ConsumedEventType,
        consumed.ProcessSegmentId as ConsumedProcessSegmentId,
        consumed.ProductionRequestId as ConsumedProductionRequestId,
        consumed.SegmentRequirementId as ConsumedSegmentRequirementId,
        consumed.SubsegmentId as ConsumedSubsegmentId,

        produced.EventGlobId as ProducedEventGlobId,
        a.ProducedEventPath,
        produced.EventDateUTC as ProducedEventFileTimeUtc,
        produced.MaterialId as ProducedMaterialId,
        produced.EventDateUTC as ProducedEventDate,
        produced.Location as ProducedLocation,
        produced.Lot as ProducedLot,
        produced.Sublot as ProducedSublot,
        produced.SerialNumber as ProducedSerialNumberList,
        produced.SegmentResponseId as ProducedSegmentResponseId,
        produced.Quantity as ProducedQuantity,
        produced.QuantityUnitOfMeasure as ProducedQuantityUnitOfMeasure,
        produced.GenealogyId as ProducedGenealogyId,
        produced.EventName as ProducedEventName,
        produced.EventType as ProducedEventType,
        produced.ProcessSegmentId as ProducedProcessSegmentId,
        produced.ProductionRequestId as ProducedProductionRequestId,
        produced.SegmentRequirementId as ProducedSegmentRequirementId,
        produced.SubsegmentId as ProducedSubsegmentId,
        a.Level,
        parentProduced.EventGlobId as ParentProducedEventGlobId,
        a.ParentProducedEventPath
	from #all a
	left join dbo.MES_ResourceActualInternal_Restore consumed
		on a.ConsumedResourceActualKey = consumed.EventGlobId
	left join dbo.MES_ResourceActualInternal_Restore produced
		on a.ProducedResourceActualKey = produced.EventGlobId
	left join dbo.MES_ResourceActualInternal_Restore parentProduced
		on a.ParentProducedResourceActualKey = parentProduced.EventGlobId;
END
GO

CREATE PROC [dbo].[MES_GetReverseGenealogy]
	/*
      Comma separated guids
      */
      @ConsumedEventGlobIdList nvarchar(max),

      /*
      Lot, SerialNumber, GenealogyId, MaterialId
      */
      @GenealogyMethod nvarchar(max),
	  /*
	  TimeZoneId
	  */
	  @TimeZoneId int,
	  /*
	  ExecuteAgainstRestoreDB - 0 or 1
	  */
	  @ExecuteAgainstRestoreDB	BIT=0

AS
BEGIN

	set nocount on;

    declare @reverseGenealogyData table(
        ConsumedEventGlobId int null,
        ConsumedEventFileTimeUtc datetime null,
        ConsumedLot  nvarchar(40) null,
        ConsumedMaterialId nvarchar(40) null,
        ConsumedSerialNumberList nvarchar(80) null,

	    ConsumedEventDate datetime null,
	    ConsumedLocation nvarchar(80) null,
	    ConsumedSublot nvarchar(40) null,
	    ConsumedSegmentResponseId nvarchar(80) null,
	    ConsumedQuantity int null,
	    ConsumedQuantityUnitOfMeasure nvarchar(80) null,
	    ConsumedGenealogyId nvarchar(254) null,
	    ConsumedEventName nvarchar(100) null,
	    ConsumedEventType nvarchar(40) null,
	    ConsumedProcessSegmentId nvarchar(40) null,
	    ConsumedProductionRequestId nvarchar(40) null,
	    ConsumedSegmentRequirementId nvarchar(80) null,
	    ConsumedSubsegmentId nvarchar(80) null,

	    ProducedEventGlobId int null,
	    ProducedEventPath nvarchar(max) null,
	    ProducedEventFileTimeUtc datetime null,
	    ProducedMaterialId nvarchar(40) null,
	    ProducedEventDate datetime null,
	    ProducedLocation nvarchar(80) null,
	    ProducedLot nvarchar(40) null,
	    ProducedSublot nvarchar(40) null,
	    ProducedSerialNumberList nvarchar(80) null,
	    ProducedSegmentResponseId nvarchar(80) null,
	    ProducedQuantity int null,
	    ProducedQuantityUnitOfMeasure nvarchar(80) null,
	    ProducedGenealogyId nvarchar(254) null,
	    ProducedEventName nvarchar(80) null,
	    ProducedEventType nvarchar(40) null,
	    ProducedProcessSegmentId nvarchar(40) null,
	    ProducedProductionRequestId nvarchar(40) null,
	    ProducedSegmentRequirementId nvarchar(80) null,
	    ProducedSubsegmentId nvarchar(80) null,
	    Level int null,

	    ParentProducedEventGlobId int null,
	    ParentProducedEventPath nvarchar(max) null);

	    --Create the actual query for the SP
	    DECLARE	@StrQuery AS NVARCHAR(max)
		DECLARE	@SpName AS NVARCHAR(50)
		
		if(@GenealogyMethod = N'GenealogyId')
			SET @SpName = ' dbo.MES_GetReverseGenealogyIdGenealogy'
		else
			SET @SpName = ' dbo.MES_GetReverseLotGenealogy'
		
		IF(@ExecuteAgainstRestoreDB>0) 
		BEGIN
			SET @SpName = @SpName + N'_Restore'
		END
		
		SET @StrQuery = @SpName + ' N'''+ @ConsumedEventGlobIdList + ''''
		------------------------------

		insert into @reverseGenealogyData
		EXEC (@StrQuery)
		--Now add the null row required by the reports to display the 
		--Hierarchical table
		declare @consumedEventGlobIds table(
	    ConsumedEventGlobId int primary key);

		insert into @consumedEventGlobIds(
			ConsumedEventGlobId)
		select distinct
			EventGlobId
		from dbo.MES_SplitStr(@ConsumedEventGlobIdList, N',');

		insert into @reverseGenealogyData
		select distinct
			null as ConsumedEventGlobId,
			null as ConsumedEventFileTimeUtc,
			null as ConsumedLot,
			null as ConsumedMaterialId,
			null as ConsumedSerialNumberList,

			null as ConsumedEventDate,
			null as ConsumedLocation,
			null as ConsumedSublot,
			null as ConsumedSegmentResponseId,
			null as ConsumedQuantity,
			null as ConsumedQuantityUnitOfMeasure,
			null as ConsumedGenealogyId,
			null as ConsumedEventName,
			null as ConsumedEventType,
			null as ConsumedProcessSegmentId,
			null as ConsumedProductionRequestId,
			null as ConsumedSegmentRequirementId,
			null as ConsumedSubsegmentId,

			revGenData.ConsumedEventGlobId as ProducedEventGlobId,
			revGenData.ConsumedEventGlobId as ProducedEventPath,
			revGenData.ConsumedEventFileTimeUtc as ProducedEventFileTimeUtc,
			revGenData.ConsumedMaterialId as ProducedMaterialId,
			revGenData.ConsumedEventDate as ProducedEventDate,
			revGenData.ConsumedLocation as ProducedLocation,
			revGenData.ConsumedLot as ProducedLot,
			revGenData.ConsumedSublot as ProducedSublot,
			revGenData.ConsumedSerialNumberList as ProducedSerialNumberList,
			revGenData.ConsumedSegmentResponseId as ProducedSegmentResponseId,
			revGenData.ConsumedQuantity as ProducedQuantity,
			revGenData.ConsumedQuantityUnitOfMeasure as ProducedQuantityUnitOfMeasure,
			revGenData.ConsumedGenealogyId as ProducedGenealogyId,
			revGenData.ConsumedEventName as ProducedEventName,
			revGenData.ConsumedEventType as ProducedEventType,
			revGenData.ConsumedProcessSegmentId as ProducedProcessSegmentId,
			revGenData.ConsumedProductionRequestId as ProducedProductionRequestId,
			revGenData.ConsumedSegmentRequirementId as ProducedSegmentRequirementId,
			revGenData.ConsumedSubsegmentId as ProducedSubsegmentId,
			-1 as Level,

			null as ParentProducedEventGlobId,
			null as ParentProducedEventPath
		from @reverseGenealogyData as revGenData
		inner join @consumedEventGlobIds tmp
			on tmp.ConsumedEventGlobId = revGenData.ConsumedEventGlobId
		where revGenData.Level = 0;

		update revGenData
		set
			revGenData.ParentProducedEventGlobId = revGenData.ConsumedEventGlobId,
			revGenData.ParentProducedEventPath = cast(revGenData.ConsumedEventGlobId as nvarchar(max))
		from @reverseGenealogyData revGenData
		inner join @consumedEventGlobIds consumed
			on revGenData.ConsumedEventGlobId = consumed.ConsumedEventGlobId
		where revGenData.Level = 0;

		-----------------------------------------
		declare @actualTimeZoneId int;

		-- Need to determine if the parameter values came from the ArchestrA
		-- Reports parameter page or the standard Microsoft page
		-- For the logic below to work correctly, the report should include
		-- an integer parameter "TimeZoneId" with a default value of "-1"

		if ( @TimeZoneId = -1 )
		-- The ArchestrA Reports parameter page will never supply a value of "-1".
		-- Assume the time is in "server local" time rather than UTC
			set @actualTimeZoneId = -100;
		else
		begin
			-- This was set by the Parameter page and will be expressed in UTC
			set @actualTimeZoneId = @TimeZoneId;
		end;

		update @reverseGenealogyData 
		set 
			ProducedEventDate = dbo.UtcToTimeZone(ProducedEventFileTimeUtc,@actualTimeZoneId),
			ConsumedEventDate = dbo.UtcToTimeZone(ConsumedEventFileTimeUtc,@actualTimeZoneId)

		select * from @reverseGenealogyData
END
GO

--MES_GetEPAValueByIndex
CREATE PROCEDURE [dbo].[MES_GetEPAValueByIndex] @rowId int = -1,
@ExecuteAgainstRestoreDB	BIT=0

as
BEGIN

	SET NOCOUNT ON

DECLARE
	@grpId as NVARCHAR(10)

DECLARE @viewSuffix NVARCHAR(20)
IF (@ExecuteAgainstRestoreDB=0)
	SET @viewSuffix= N''
ELSE
	SET @viewSuffix= N'_Restore'

CREATE TABLE #tblInsert
(value1 NVARCHAR(40),
grp_id INT,
Value_Name NVARCHAR(40),
Row_id INT,
Value_Type NVARCHAR(40))

IF (@ExecuteAgainstRestoreDB=0)
	DECLARE grpId_cursor CURSOR FOR SELECT grp_id FROM MES_DataLogValue
ELSE
	DECLARE grpId_cursor CURSOR FOR SELECT grp_id FROM MES_DataLogValue_Restore

OPEN grpId_cursor
	FETCH NEXT FROM grpId_cursor INTO @grpId

WHILE @@FETCH_STATUS = 0
BEGIN

DECLARE @ind as NVARCHAR(5)
DECLARE @ValueName as NVARCHAR(50)
DECLARE @ValueType as NVARCHAR(5)
DECLARE @ColName as NVARCHAR(10)
DECLARE @strSelect NVARCHAR(150)

IF (@ExecuteAgainstRestoreDB=0)
	SELECT @ind = cast(value_index as NVARCHAR), @ValueName = value_name, @ValueType = CAST(value_type as NVARCHAR) FROM MES_DataLogValue
	WHERE grp_id = @grpId
ELSE
	SELECT @ind = cast(value_index as NVARCHAR), @ValueName = value_name, @ValueType = CAST(value_type as NVARCHAR) FROM MES_DataLogValue_Restore
	WHERE grp_id = @grpId

SET @ColName = 'Value'+@ind
SET @strSelect = 'SELECT '+@ColName+',grp_id,'''+@ValueName+''' AS Value_Name,Row_id,'''+@ValueType+''' AS Value_type FROM MES_DataLog48' + @viewSuffix+ ' WHERE grp_id ='+@grpId   --+''' AND Row_Id='+ CAST(@RowId as NVARCHAR)

INSERT INTO #tblInsert (value1,grp_id,Value_Name,Row_id,Value_type) EXEC(@strSelect)

FETCH NEXT FROM grpId_cursor INTO @grpId

END

CLOSE grpId_cursor
DEALLOCATE grpId_cursor

DECLARE @whereCondition NVARCHAR(50)
DECLARE @strSelected NVARCHAR(500)

IF @RowId != -1
BEGIN
 SET @whereCondition = ' je.Row_Id='+ CAST(@rowId as NVARCHAR) + 'AND '
END
ELSE
 SET @whereCondition = ''

SET @strSelected = 'select distinct value_name as AttrName, '
SET @strSelected = @strSelected + 'CASE Value_Type '
SET @strSelected = @strSelected + 'WHEN ''0'' THEN ''string'' '
SET @strSelected = @strSelected + 'WHEN ''1'' THEN ''number'' '
SET @strSelected = @strSelected + 'WHEN ''2'' THEN ''logical'' '
SET @strSelected = @strSelected + 'WHEN ''3'' THEN ''datetime'' '
SET @strSelected = @strSelected + 'ELSE '''' '
SET @strSelected = @strSelected + 'END as [Type], '
SET @strSelected = @strSelected + 'Value_Type, '
SET @strSelected = @strSelected + 'tblTemp.Value1 AS [AttrValue],tblTemp.grp_id,tblTemp.Row_id AS [data log 48 Row Id],je.Row_ID AS [Job Event Row Id] from #tblInsert '
SET @strSelected = @strSelected + 'tblTemp,MES_JobEventEpa' + @viewSuffix + ' je '
SET @strSelected = @strSelected + 'where '+@whereCondition+' je.value6 = tblTemp.row_id order by tblTemp.Row_id '

EXEC(@strSelected)

DROP TABLE #tblInsert
END
GO

CREATE TABLE [dbo].[ProductionAttributeName](
	[Name] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[UILabel] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_ProductionAttributeName] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

--Populate ProductionAttributeName table
DECLARE @docHandle int
declare @xmlDocument nvarchar(max) 
set @xmlDocument = N'<ROOT>
<ProductionAttributeName Name="Comment" UILabel="Comment"/>
<ProductionAttributeName Name="ProductionScheduleId" UILabel="Production Schedule ID"/>
<ProductionAttributeName Name="ProcessSegmentId" UILabel="Process Segment ID"/>
<ProductionAttributeName Name="ProductionRequestId" UILabel="Production Request ID"/>
<ProductionAttributeName Name="SegmentRequirementId" UILabel="Segment Requirement ID"/>
<ProductionAttributeName Name="SegmentResponseId" UILabel="Segment Response ID"/>
<ProductionAttributeName Name="Quantity" UILabel="Quantity"/>
<ProductionAttributeName Name="QuantityUnitOfMeasure" UILabel="Unit Of Measure"/>
<ProductionAttributeName Name="MaterialType" UILabel="Material Type"/>
<ProductionAttributeName Name="EquipmentId" UILabel="Equipment ID"/>
<ProductionAttributeName Name="Location" UILabel="Location"/>
<ProductionAttributeName Name="MaterialId" UILabel="Material ID"/>
<ProductionAttributeName Name="PersonnelList" UILabel="Personnel List"/>
<ProductionAttributeName Name="Lot" UILabel="Lot"/>
<ProductionAttributeName Name="Sublot" UILabel="Sublot"/>
<ProductionAttributeName Name="SerialNumberList" UILabel="Serial Number List"/>
<ProductionAttributeName Name="SubsegmentId" UILabel="Subsegment ID"/>EventId
<ProductionAttributeName Name="EventId" UILabel="Event ID"/>
<ProductionAttributeName Name="EventLinkId" UILabel="Event Link ID"/>
<ProductionAttributeName Name="GenealogyId" UILabel="Genealogy ID"/>
</ROOT>'
EXEC sp_xml_preparedocument @docHandle OUTPUT, @xmlDocument
-- Use OPENXML to provide rowset consisting of data.
INSERT ProductionAttributeName 
SELECT * 
FROM OPENXML(@docHandle, N'/ROOT/ProductionAttributeName') 
  WITH ProductionAttributeName
GO
--Add entries to the localization table for EventDetails Report
use aaReports
Insert into dbo.aarsLayoutLocalizedText
(Scope,TextId, LanguageCode,LocalizedText,Description)
Select N'PEM.EventDetails Report' as Scope,TextId,LanguageCode, LocalizedText, Description from 
dbo.aarsLayoutLocalizedText where Scope='ReportTemplate'
GO

--Modifiy text of TextId = 0
--use aaReports
update dbo.aarsLayoutLocalizedText
set LocalizedText = N'Event Details'
where Scope = N'PEM.EventDetails Report' and TextId = 0

-- Query to add rows for PEM.EventsReport Report from report template 
--use aaReports
Insert into dbo.aarsLayoutLocalizedText
(Scope,TextId, LanguageCode,LocalizedText,Description)
Select N'PEM.EventsReport Report' as Scope,TextId,LanguageCode, LocalizedText, Description from dbo.aarsLayoutLocalizedText where Scope='ReportTemplate'
GO
--Modifiy text of TextId = 0
--use aaReports
update dbo.aarsLayoutLocalizedText
set LocalizedText = N'Events Report'
where Scope = N'PEM.EventsReport Report' and TextId = 0
GO

-- Query to add rows for PEM.GenealogyReport Report from report template 
--use aaReports
Insert into dbo.aarsLayoutLocalizedText
(Scope,TextId, LanguageCode,LocalizedText,Description)
Select N'PEM.GenealogyReport Report' as Scope,TextId,LanguageCode, LocalizedText, Description from dbo.aarsLayoutLocalizedText where Scope='ReportTemplate'
GO

--Modifiy text of TextId = 0
use aaReports
update dbo.aarsLayoutLocalizedText
set LocalizedText = N'Genealogy Report'
where Scope = N'PEM.GenealogyReport Report' and TextId = 0
GO

-- Query to add rows for PEM.Genealogy Detail Report from report template 
--use aaReports
Insert into dbo.aarsLayoutLocalizedText
(Scope,TextId, LanguageCode,LocalizedText,Description)
Select N'PEM.Genealogy Detail Report' as Scope,TextId,LanguageCode, LocalizedText, Description from dbo.aarsLayoutLocalizedText where Scope='ReportTemplate'
GO

--Modifiy text of TextId = 0
--use aaReports
update dbo.aarsLayoutLocalizedText
set LocalizedText = N'Genealogy Detail Report'
where Scope = N'PEM.Genealogy Detail Report' and TextId = 0
GO

-- Query to add rows for PEM.ProductionReport Report from report template 
--use aaReports
Insert into dbo.aarsLayoutLocalizedText
(Scope,TextId, LanguageCode,LocalizedText,Description)
Select N'PEM.ProductionReport Report' as Scope,TextId,LanguageCode, LocalizedText, Description from dbo.aarsLayoutLocalizedText where Scope='ReportTemplate'
GO
--Modifiy text of TextId = 0
--use aaReports
update dbo.aarsLayoutLocalizedText
set LocalizedText = N'Production Report'
where Scope = N'PEM.ProductionReport Report' and TextId = 0
GO

--Add new custom entries in aarsLayoutLocalizedText table
DECLARE @docHandle int
declare @xmlDocument nvarchar(max) 
set @xmlDocument = N'<ROOT>
<aarsLayoutLocalizedText Scope="PEM.EventDetails Report" TextId="1000" LanguageCode="en-us" LocalizedText="Production Attribute Name"/>
<aarsLayoutLocalizedText Scope="PEM.EventDetails Report" TextId="1001" LanguageCode="en-us" LocalizedText="Attribute Value"/>
<aarsLayoutLocalizedText Scope="PEM.EventDetails Report" TextId="1002" LanguageCode="en-us" LocalizedText="At"/>
<aarsLayoutLocalizedText Scope="PEM.EventDetails Report" TextId="1003" LanguageCode="en-us" LocalizedText="Extended Production Attribute Name"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1000" LanguageCode="en-us" LocalizedText="Start Time"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1001" LanguageCode="en-us" LocalizedText="End Time"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1002" LanguageCode="en-us" LocalizedText="Event Name"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1003" LanguageCode="en-us" LocalizedText="Event Time"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1004" LanguageCode="en-us" LocalizedText="Event Type"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1005" LanguageCode="en-us" LocalizedText="Lot"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1006" LanguageCode="en-us" LocalizedText="Location"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1007" LanguageCode="en-us" LocalizedText="Production Request ID"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1008" LanguageCode="en-us" LocalizedText="Process Segment ID"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1009" LanguageCode="en-us" LocalizedText="Segment Response ID"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1010" LanguageCode="en-us" LocalizedText="Quantity"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1011" LanguageCode="en-us" LocalizedText="Unit of Measure"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1012" LanguageCode="en-us" LocalizedText="Group By"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1013" LanguageCode="en-us" LocalizedText="Event Names"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1014" LanguageCode="en-us" LocalizedText="Event Types"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1015" LanguageCode="en-us" LocalizedText="Locations"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1016" LanguageCode="en-us" LocalizedText="Lots"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1017" LanguageCode="en-us" LocalizedText="Sublots"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1018" LanguageCode="en-us" LocalizedText="Materials"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1019" LanguageCode="en-us" LocalizedText="Process Segments"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1020" LanguageCode="en-us" LocalizedText="Production Requests"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1021" LanguageCode="en-us" LocalizedText="Segment Requirements"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1022" LanguageCode="en-us" LocalizedText="Segment Responses"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1023" LanguageCode="en-us" LocalizedText="Serial Numbers"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1024" LanguageCode="en-us" LocalizedText="Subsegments"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1025" LanguageCode="en-us" LocalizedText="Outlining"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1026" LanguageCode="en-us" LocalizedText="From"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1027" LanguageCode="en-us" LocalizedText="Time Zone"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1028" LanguageCode="en-us" LocalizedText="Event Count by Event Type"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1029" LanguageCode="en-us" LocalizedText="Event Count"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1030" LanguageCode="en-us" LocalizedText="Material ID"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1031" LanguageCode="en-us" LocalizedText="Sublot"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1032" LanguageCode="en-us" LocalizedText="Serial Number"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1033" LanguageCode="en-us" LocalizedText="Subsegment ID"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1034" LanguageCode="en-us" LocalizedText="Expanded"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1035" LanguageCode="en-us" LocalizedText="Collapsed"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1036" LanguageCode="en-us" LocalizedText="On"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1037" LanguageCode="en-us" LocalizedText="Off"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1038" LanguageCode="en-us" LocalizedText="Expanded"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1039" LanguageCode="en-us" LocalizedText="Collapsed"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1040" LanguageCode="en-us" LocalizedText="Report Summary"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1041" LanguageCode="en-us" LocalizedText="To"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1042" LanguageCode="en-us" LocalizedText="Events Summary"/>
<aarsLayoutLocalizedText Scope="PEM.EventsReport Report" TextId="1043" LanguageCode="en-us" LocalizedText="Table of Events"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1000" LanguageCode="en-us" LocalizedText="From"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1001" LanguageCode="en-us" LocalizedText="Time Zone"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1002" LanguageCode="en-us" LocalizedText="Group By"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1003" LanguageCode="en-us" LocalizedText="Genealogy Method"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1004" LanguageCode="en-us" LocalizedText="Lots"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1005" LanguageCode="en-us" LocalizedText="Serial Numbers"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1006" LanguageCode="en-us" LocalizedText="Materials"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1007" LanguageCode="en-us" LocalizedText="Genealogy IDs"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1008" LanguageCode="en-us" LocalizedText="Process Segments"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1009" LanguageCode="en-us" LocalizedText="Segment Responses"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1010" LanguageCode="en-us" LocalizedText="Production Requests"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1011" LanguageCode="en-us" LocalizedText="Production Schedules"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1012" LanguageCode="en-us" LocalizedText="Segment Requirements"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1013" LanguageCode="en-us" LocalizedText="Material Type"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1014" LanguageCode="en-us" LocalizedText="Locations"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1015" LanguageCode="en-us" LocalizedText="Subsegments"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1016" LanguageCode="en-us" LocalizedText="Personnel"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1017" LanguageCode="en-us" LocalizedText="Outlining"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1018" LanguageCode="en-us" LocalizedText="At"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1019" LanguageCode="en-us" LocalizedText="Expanded"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1020" LanguageCode="en-us" LocalizedText="Collapsed"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1021" LanguageCode="en-us" LocalizedText="Location"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1022" LanguageCode="en-us" LocalizedText="Lot"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1023" LanguageCode="en-us" LocalizedText="Serial Number"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1024" LanguageCode="en-us" LocalizedText="Material"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1025" LanguageCode="en-us" LocalizedText="Genealogy ID"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1026" LanguageCode="en-us" LocalizedText="On"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1027" LanguageCode="en-us" LocalizedText="Off"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1028" LanguageCode="en-us" LocalizedText="Process Segment"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1029" LanguageCode="en-us" LocalizedText="Segment Response"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1030" LanguageCode="en-us" LocalizedText="Production Request"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1031" LanguageCode="en-us" LocalizedText="Production Schedule"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1032" LanguageCode="en-us" LocalizedText="Segment Requirement"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1033" LanguageCode="en-us" LocalizedText="Genealogy Expanded Report"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1034" LanguageCode="en-us" LocalizedText="This feature may take a long time if you have more than"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1035" LanguageCode="en-us" LocalizedText="selected"/>
<aarsLayoutLocalizedText Scope="PEM.GenealogyReport Report" TextId="1036" LanguageCode="en-us" LocalizedText="To"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1000" LanguageCode="en-us" LocalizedText="Material Consumed"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1001" LanguageCode="en-us" LocalizedText="Event Date"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1002" LanguageCode="en-us" LocalizedText="Location"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1003" LanguageCode="en-us" LocalizedText="Lot"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1004" LanguageCode="en-us" LocalizedText="Sublot"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1005" LanguageCode="en-us" LocalizedText="Serial Numbers"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1006" LanguageCode="en-us" LocalizedText="Segment Response"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1007" LanguageCode="en-us" LocalizedText="Quantity"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1008" LanguageCode="en-us" LocalizedText="Unit of Measure"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1009" LanguageCode="en-us" LocalizedText="Genealogy ID"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1010" LanguageCode="en-us" LocalizedText="Serial Number"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1011" LanguageCode="en-us" LocalizedText="Material"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1012" LanguageCode="en-us" LocalizedText="True"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1013" LanguageCode="en-us" LocalizedText="False"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1014" LanguageCode="en-us" LocalizedText="Material Produced"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1015" LanguageCode="en-us" LocalizedText="Group By"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1016" LanguageCode="en-us" LocalizedText="Genealogy Method"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1017" LanguageCode="en-us" LocalizedText="Lots"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1018" LanguageCode="en-us" LocalizedText="Serial Numbers"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1019" LanguageCode="en-us" LocalizedText="Materials"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1020" LanguageCode="en-us" LocalizedText="Genealogy IDs"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1021" LanguageCode="en-us" LocalizedText="Process Segments"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1022" LanguageCode="en-us" LocalizedText="Segment Responses"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1023" LanguageCode="en-us" LocalizedText="Production Requests"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1024" LanguageCode="en-us" LocalizedText="Production Schedules"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1025" LanguageCode="en-us" LocalizedText="Segment Requirements"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1026" LanguageCode="en-us" LocalizedText="Material Type"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1027" LanguageCode="en-us" LocalizedText="Locations"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1028" LanguageCode="en-us" LocalizedText="Subsegments"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1029" LanguageCode="en-us" LocalizedText="Personnel"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1030" LanguageCode="en-us" LocalizedText="Genealogy Table"/>
<aarsLayoutLocalizedText Scope="PEM.Genealogy Detail Report" TextId="1031" LanguageCode="en-us" LocalizedText="Reverse Genealogy Table"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1000" LanguageCode="en-us" LocalizedText="Start Time"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1001" LanguageCode="en-us" LocalizedText="End Time"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1002" LanguageCode="en-us" LocalizedText="Event Name"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1003" LanguageCode="en-us" LocalizedText="Event Time"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1004" LanguageCode="en-us" LocalizedText="Event Type"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1005" LanguageCode="en-us" LocalizedText="LotID"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1006" LanguageCode="en-us" LocalizedText="Location"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1007" LanguageCode="en-us" LocalizedText="Production Request ID"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1008" LanguageCode="en-us" LocalizedText="Process Segment ID"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1009" LanguageCode="en-us" LocalizedText="Segment Response ID"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1010" LanguageCode="en-us" LocalizedText="Quantity"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1011" LanguageCode="en-us" LocalizedText="Unit of Measure"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1012" LanguageCode="en-us" LocalizedText="Group By"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1013" LanguageCode="en-us" LocalizedText="Event Names"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1014" LanguageCode="en-us" LocalizedText="Event Types"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1015" LanguageCode="en-us" LocalizedText="Locations"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1016" LanguageCode="en-us" LocalizedText="Lots"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1017" LanguageCode="en-us" LocalizedText="Sublots"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1018" LanguageCode="en-us" LocalizedText="Materials"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1019" LanguageCode="en-us" LocalizedText="Process Segments"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1020" LanguageCode="en-us" LocalizedText="Production Requests"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1021" LanguageCode="en-us" LocalizedText="Segment Requirements"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1022" LanguageCode="en-us" LocalizedText="Segment Responses"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1023" LanguageCode="en-us" LocalizedText="Serial Numbers"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1024" LanguageCode="en-us" LocalizedText="Process Segments"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1025" LanguageCode="en-us" LocalizedText="Outlining"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1026" LanguageCode="en-us" LocalizedText="From"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1027" LanguageCode="en-us" LocalizedText="Time Zone"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1028" LanguageCode="en-us" LocalizedText="Event Type"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1029" LanguageCode="en-us" LocalizedText="Total Quantity"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1030" LanguageCode="en-us" LocalizedText="Date/Location"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1031" LanguageCode="en-us" LocalizedText="Date/Material"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1032" LanguageCode="en-us" LocalizedText="Date/Process Segment"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1033" LanguageCode="en-us" LocalizedText="Material/Date"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1034" LanguageCode="en-us" LocalizedText="Material/Location"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1035" LanguageCode="en-us" LocalizedText="Material/Process Segment"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1036" LanguageCode="en-us" LocalizedText="Location/Date"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1037" LanguageCode="en-us" LocalizedText="Location/Material"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1038" LanguageCode="en-us" LocalizedText="Production Request/Material"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1039" LanguageCode="en-us" LocalizedText="Segment Response/Material"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1040" LanguageCode="en-us" LocalizedText="Date"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1041" LanguageCode="en-us" LocalizedText="Material"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1042" LanguageCode="en-us" LocalizedText="Location"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1043" LanguageCode="en-us" LocalizedText="Process Segment"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1044" LanguageCode="en-us" LocalizedText="Production Request"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1045" LanguageCode="en-us" LocalizedText="Segment Response"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1046" LanguageCode="en-us" LocalizedText="Total Produced Material by Type"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1047" LanguageCode="en-us" LocalizedText="Quantity Produced by"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1048" LanguageCode="en-us" LocalizedText="Start Date"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1049" LanguageCode="en-us" LocalizedText="End Date"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1050" LanguageCode="en-us" LocalizedText="Material Id"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1051" LanguageCode="en-us" LocalizedText="Material Type"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1052" LanguageCode="en-us" LocalizedText="Event Date"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1053" LanguageCode="en-us" LocalizedText="Unit Of"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1054" LanguageCode="en-us" LocalizedText="Measure"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1055" LanguageCode="en-us" LocalizedText="Total number of"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1056" LanguageCode="en-us" LocalizedText="events"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1057" LanguageCode="en-us" LocalizedText="Hour"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1058" LanguageCode="en-us" LocalizedText="Day"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1059" LanguageCode="en-us" LocalizedText="Week"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1060" LanguageCode="en-us" LocalizedText="Month"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1061" LanguageCode="en-us" LocalizedText="Year"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1062" LanguageCode="en-us" LocalizedText="Date/Time Increment"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1063" LanguageCode="en-us" LocalizedText="Expanded"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1064" LanguageCode="en-us" LocalizedText="Collapsed"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1065" LanguageCode="en-us" LocalizedText="Material Production Tree and Tables"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1066" LanguageCode="en-us" LocalizedText="On"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1067" LanguageCode="en-us" LocalizedText="Off"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1068" LanguageCode="en-us" LocalizedText="Report Summary"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1069" LanguageCode="en-us" LocalizedText="Total produced"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1070" LanguageCode="en-us" LocalizedText="Production Summary"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1071" LanguageCode="en-us" LocalizedText="To"/>
<aarsLayoutLocalizedText Scope="PEM.ProductionReport Report" TextId="1072" LanguageCode="en-us" LocalizedText="Subsegments"/>
</ROOT>'
EXEC sp_xml_preparedocument @docHandle OUTPUT, @xmlDocument
-- Use OPENXML to provide rowset consisting of data.
INSERT aarsLayoutLocalizedText
SELECT * 
FROM OPENXML(@docHandle, N'/ROOT/aarsLayoutLocalizedText') 
  WITH aarsLayoutLocalizedText
GO

CREATE PROCEDURE dbo.MES_RedirectViews 
@SharedDataSourceType nvarchar(50) = N'aaMES40',
@SourceDatabase nvarchar(50) = N'MESDB',
@RestoreViews BIT = 0,
@OracleUser AS NVARCHAR(50) = N''

AS
BEGIN

DECLARE	@ProviderType AS NVARCHAR(20)
DECLARE	@StrQuery AS NVARCHAR(max)
DECLARE	@StrViewPrefix AS NVARCHAR(max)
DECLARE @StrViewSuffix AS NVARCHAR(20)

IF(@RestoreViews=0) 
	SET @StrViewSuffix = N''
ELSE
	SET @StrViewSuffix = N'_Restore'

select @ProviderType = provider from sys.servers where name=@SharedDataSourceType

IF( @ProviderType = N'SQLNCLI' OR @ProviderType = N'SQLNCLI10' OR @providerType = N'SQLNCLI11') 
	SET @StrViewPrefix = @SharedDataSourceType + '.' + @SourceDatabase + '.dbo.'
ELSE
	SET @StrViewPrefix = @SharedDataSourceType + '..' + @OracleUser + '.'

--Drop Views First
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.FACTProductionData' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.FACTProductionData' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.FACTGenealogyData' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.FACTGenealogyData' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.FACTOEEData' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.FACTOEEData' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.FACTDowntimeData' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.FACTDowntimeData' + @StrViewSuffix)

--Migrated PEM Reports clean up
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.MES_EventName' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.MES_EventName' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.MES_EventType' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.MES_EventType' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.MES_Location' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.MES_Location' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.MES_Lot' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.MES_Lot' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.MES_Sublot' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.MES_Sublot' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.MES_Material' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.MES_Material' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.MES_ProcessSegment' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.MES_ProcessSegment' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.MES_ProductionRequest' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.MES_ProductionRequest' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.MES_SegmentRequirement' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.MES_SegmentRequirement' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.MES_Subsegment' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.MES_Subsegment' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.MES_SerialNumber' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.MES_SerialNumber' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.MES_ProductionSchedule' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.MES_ProductionSchedule' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.MES_MaterialType' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.MES_MaterialType' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.MES_Personnel' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.MES_Personnel' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.MES_GenealogyId' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.MES_GenealogyId' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.MES_SegmentResponse' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.MES_SegmentResponse' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.MES_ResourceActual' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.MES_ResourceActual' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.MES_MaterialConsumedActual' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.MES_MaterialConsumedActual' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.MES_MaterialProducedActual' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.MES_MaterialProducedActual' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.MES_ResourceActualInternal' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.MES_ResourceActualInternal' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.rpt_vw_FACT_EfficiencyData' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.rpt_vw_FACT_EfficiencyData' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.rpt_vw_FACT_ProductionEvents' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.rpt_vw_FACT_ProductionEvents' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.rpt_vw_FACT_Shift' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.rpt_vw_FACT_Shift' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.rpt_vw_FACT_User' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.rpt_vw_FACT_User' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.rpt_vw_FACT_UtilState' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.rpt_vw_FACT_UtilState' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.rpt_vw_FACT_UtilReasonGrp' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.rpt_vw_FACT_UtilReasonGrp' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.rpt_vw_FACT_UtilReason' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.rpt_vw_FACT_UtilReason' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.rpt_vw_FACT_Product' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.rpt_vw_FACT_Product' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.rpt_vw_FACT_Entity' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.rpt_vw_FACT_Entity' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.rpt_vw_FACT_Entity_For_OEE' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.rpt_vw_FACT_Entity_For_OEE' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.rpt_vw_FACT_Category1' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.rpt_vw_FACT_Category1' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.rpt_vw_FACT_Category2' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.rpt_vw_FACT_Category2' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.rpt_vw_FACT_Category3' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.rpt_vw_FACT_Category3' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.rpt_vw_FACT_Category4' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.rpt_vw_FACT_Category4' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.MES_Item' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.MES_Item' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.MES_WO' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.MES_WO' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.MES_DataLogValue' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.MES_DataLogValue' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.MES_DataLog48' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.MES_DataLog48' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.MES_JobEventEpa' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.MES_JobEventEpa' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.MES_UtilReas' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.MES_UtilReas' + @StrViewSuffix)

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'dbo.MES_UtilReasGrp' + @StrViewSuffix))
EXEC (N'DROP VIEW ' + N'dbo.MES_UtilReasGrp' + @StrViewSuffix)

--Create Views Now
SET @StrQuery = 'CREATE VIEW dbo.FACTProductionData' + @StrViewSuffix + N'  AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_PRODUCTION_DATA'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.FACTGenealogyData' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_GENEALOGY_DATA'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.FACTOEEData' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_OEE_DATA'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.FACTDowntimeData' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_DOWNTIME_DATA'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.rpt_vw_FACT_ProductionEvents' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_PROD_EVENTS'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.rpt_vw_FACT_EfficiencyData' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_EFFICIENCY_DATA'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.rpt_vw_FACT_Shift' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
'VW_SHIFT'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.rpt_vw_FACT_User' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_USER'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.rpt_vw_FACT_UtilState' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_UTIL_STATE'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.rpt_vw_FACT_UtilReasonGrp' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_UTIL_REASON_GROUP'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.rpt_vw_FACT_UtilReason' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_UTIL_REAS'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.rpt_vw_FACT_Product' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_PRODUCT'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.rpt_vw_FACT_Entity' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_ENT_FOR_UTIL'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.rpt_vw_FACT_Entity_For_OEE' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_ENT_FOR_OEE'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.rpt_vw_FACT_Category1' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_CATEGORY1'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.rpt_vw_FACT_Category2' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_CATEGORY2'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.rpt_vw_FACT_Category3' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_CATEGORY3'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.rpt_vw_FACT_Category4' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_CATEGORY4'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.MES_EventName' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_EVENTNAME'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.MES_EventType' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_EVENTTYPE'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.MES_Lot' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_LOT'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.MES_Sublot' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_SUBLOT'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.MES_Location' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_LOCATION'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.MES_Material' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_MATERIAL'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.MES_ProcessSegment' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_PROCESSSEGMENT'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.MES_ProductionRequest' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_PRODUCTIONREQUEST'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.MES_SegmentRequirement' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_SEGMENTREQUIREMENT'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.MES_Subsegment' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_SUBSEGMENT'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.MES_SerialNumber' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_SERIALNUMBER'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.MES_ProductionSchedule' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_PRODUCTIONSCHEDULE'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.MES_MaterialType' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_MATERIALTYPE'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.MES_Personnel' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_PERSONNEL'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.MES_GenealogyId' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_GENEALOGYID'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.MES_SegmentResponse' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_SEGMENTRESPONSE'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.MES_ResourceActual' + @StrViewSuffix + N' AS SELECT '
IF( @ProviderType = N'SQLNCLI' OR @ProviderType = N'SQLNCLI10' OR @providerType = N'SQLNCLI11')
	SET @StrQuery = @StrQuery + ' * FROM '
ELSE
	SET @StrQuery = @StrQuery +
	'[MATERIALID]' +
      ',[MATERIALTYPE]' +
      ',[EVENTNAME]' +
      ',[EVENTTYPE]' +
      ',[LOT]' +
      ',[LOCATION]' +
      ',[SEGMENTREQUIREMENTID]' +
      ',[PRODUCTIONREQUESTID]' +
      ',[PROCESSSEGMENTID]' +
      ',[SEGMENTRESPONSEID]' +
      ',CAST(QUANTITY AS FLOAT) AS QUANTITY' +
      ',[QUANTITYUNITOFMEASURE]' +
      ',[SUBLOT]' +
      ',[EVENTDATEUTC]' +
      ',[SUBSEGMENTID]' +
      ',[PERSONNEL]' +
      ',[SERIALNUMBER]' +
      ',CAST(EVENTGLOBID AS INT) AS EVENTGLOBID' +
      ',[GENEALOGYID]' +
      ',[PRODUCTIONSCHEDULEID] FROM ' 
SET @StrQuery = @StrQuery + @StrViewPrefix + 'VW_RESOURCEACTUAL'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.MES_MaterialConsumedActual' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_MATERIALCONSUMEDACTUAL'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.MES_MaterialProducedActual' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_MATERIALPRODUCEDACTUAL'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.MES_ResourceActualInternal' + @StrViewSuffix + N' AS SELECT '
IF( @ProviderType = N'SQLNCLI' OR @ProviderType = N'SQLNCLI10' OR @providerType = N'SQLNCLI11')
	SET @StrQuery = @StrQuery + ' * FROM '
ELSE
	SET @StrQuery = @StrQuery +
	' [MATERIALID] ' +
      ',[MATERIALTYPE] ' +
      ',[EVENTNAME] ' +
      ',[EVENTTYPE] ' +
      ',[LOT] ' +
      ',[LOCATION] ' +
      ',[SEGMENTREQUIREMENTID] ' +
      ',[PRODUCTIONREQUESTID] ' +
      ',[PROCESSSEGMENTID] ' +
      ',[SEGMENTRESPONSEID] ' +
      ',CAST(QUANTITY AS FLOAT) AS QUANTITY ' +
      ',[QUANTITYUNITOFMEASURE] ' +
      ',[SUBLOT] ' +
      ',[EVENTDATEUTC] ' +
      ',[SUBSEGMENTID] ' +
      ',[PERSONNEL] ' +
      ',[SERIALNUMBER] ' +
      ',CAST(EVENTGLOBID AS INT) AS EVENTGLOBID ' +
      ',[EVENTID] ' +
      ',[EVENTLINKID] ' +
      ',[GENEALOGYID] FROM ' 
SET @StrQuery = @StrQuery + @StrViewPrefix + 'VW_RESOURCEACTUALINTERNAL'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.MES_Item' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_ITEM'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.MES_WO' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_WO'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.MES_DataLog48' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_DATALOG48'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.MES_DataLogValue' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_DATALOGVALUE'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.MES_JobEventEpa' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_JOBEVENTEPA'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.MES_UtilReas' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_UTILREAS'
EXEC (@StrQuery)

SET @StrQuery = 'CREATE VIEW dbo.MES_UtilReasGrp' + @StrViewSuffix + N' AS SELECT * FROM ' + @StrViewPrefix + 
 'VW_UTILREASGRP'
EXEC (@StrQuery)

END
GO

--MES QM Report 07/23/2012

-- Create views for reports

----------------------------------------- Views for Quality Summary Report ---------------------------------------------------
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_QM_Equipment]'))
DROP VIEW [dbo].[vw_QM_Equipment]
GO

CREATE VIEW [dbo].[vw_QM_Equipment]
AS

SELECT REPLACE(ISNULL(s.ent_name, '\') + '\' + e.ent_name, '\\', '') AS 'Equipment',
	   e.ent_Id AS 'EquipmentValue'
FROM %SourcePrefix%.dbo.ent e WITH(NOLOCK) LEFT OUTER JOIN %SourcePrefix%.dbo.ent s WITH(NOLOCK) on e.site = s.ent_id
WHERE e.can_capture_qm_data = 1

GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_QM_Category]'))
DROP VIEW [dbo].[vw_QM_Category]
GO

CREATE VIEW [dbo].[vw_QM_Category]
AS

SELECT category_name,
		category_id
FROM %SourcePrefix%.dbo.category WITH(NOLOCK)

GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_QM_Product]'))
DROP VIEW [dbo].[vw_QM_Product]
GO

CREATE VIEW [dbo].[vw_QM_Product]
AS

SELECT item_id as item_desc,
		item_id
FROM %SourcePrefix%.dbo.item WITH(NOLOCK)

GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_QM_Shift]'))
DROP VIEW [dbo].[vw_QM_Shift]
GO

CREATE VIEW [dbo].[vw_QM_Shift]
AS

SELECT shift_desc,
	   shift_id
FROM %SourcePrefix%.dbo.shift WITH(NOLOCK)

GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_QM_Severity]'))
DROP VIEW [dbo].[vw_QM_Severity]
GO

CREATE VIEW [dbo].[vw_QM_Severity]
AS
-- Unused, Not Monitored, Non-Key, Key and Critical – corresponding to severity_cd values 0 through 4 respectively
SELECT 'Unused' AS 'severity_desc', 0 AS 'severity_cd'	
UNION SELECT 'Not Monitored' AS 'severity_desc', 1 AS 'severity_cd'	
UNION SELECT 'Non-Key' AS 'severity_desc', 2 AS 'severity_cd'	
UNION SELECT 'Key' AS 'severity_desc', 3 AS 'severity_cd'	
UNION SELECT 'Critical' AS 'severity_desc', 4 AS 'severity_cd'	

GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_QM_SampleFrequencyType]'))
DROP VIEW [dbo].[vw_QM_SampleFrequencyType]
GO

CREATE VIEW [dbo].[vw_QM_SampleFrequencyType]
AS
-- Unused, Not Monitored, Non-Key, Key and Critical – corresponding to severity_cd values 0 through 4 respectively
SELECT 'Shift' AS 'sample_feq_desc', 0 AS 'sample_feq_cd'	
UNION SELECT 'Calendar Time' AS 'sample_feq_desc', 1 AS 'sample_feq_cd'
-- UNION SELECT 'Main item produced changes' AS 'sample_feq_desc', 4 AS 'sample_feq_cd'
-- Line below was line above 8/6/12 KRF (per MT)
UNION SELECT 'Produced Lot Change' AS 'sample_feq_desc', 6 AS 'sample_feq_cd'
UNION SELECT 'Job Start' AS 'sample_feq_desc', 8 AS 'sample_feq_cd'
UNION SELECT 'Job End' AS 'sample_feq_desc', 20 AS 'sample_feq_cd'
UNION SELECT 'Manual' AS 'sample_feq_desc', 19 AS 'sample_feq_cd'

GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_QM_characteristic]'))
DROP VIEW [dbo].[vw_QM_characteristic]
GO

CREATE VIEW [dbo].[vw_QM_characteristic]
AS

SELECT char_name,
		char_id
FROM %SourcePrefix%.dbo.characteristic WITH(NOLOCK)

GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_QM_Spec]'))
DROP VIEW [dbo].[vw_QM_Spec]
GO

CREATE VIEW [dbo].[vw_QM_Spec]
AS

SELECT qm_spec_name,
		qm_spec_id
FROM %SourcePrefix%.dbo.qm_spec WITH(NOLOCK)

GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_QM_StatisticsColumns]'))
DROP VIEW [dbo].[vw_QM_StatisticsColumns]
GO

CREATE VIEW [dbo].[vw_QM_StatisticsColumns]
AS
-- average, min, max, standard deviation, estimated sigma, range, Cp, Cpk, Pp, Ppk, Target, LSL, and USL

SELECT 'Average' AS 'column_name', '01' AS 'column_index'	
UNION SELECT 'Min' AS 'column_name', '02' AS 'column_index'	
UNION SELECT 'Max' AS 'column_name', '03' AS 'column_index'	
UNION SELECT 'Standard Deviation' AS 'column_name', '04' AS 'column_index'
UNION SELECT 'Estimated Sigma' AS 'column_name', '05' AS 'column_index'	
UNION SELECT 'Range' AS 'column_name', '06' AS 'column_index'	
UNION SELECT 'Cp' AS 'column_name', '07' AS 'column_index'	
UNION SELECT 'Cpk' AS 'column_name', '08' AS 'column_index'	
UNION SELECT 'Pp' AS 'column_name', '09' AS 'column_index'	
UNION SELECT 'Ppk' AS 'column_name', '10' AS 'column_index'	
UNION SELECT 'Target' AS 'column_name', '11' AS 'column_index'	
UNION SELECT 'LSL' AS 'column_name', '12' AS 'column_index'	
UNION SELECT 'USL' AS 'column_name', '13' AS 'column_index'		

GO

--------- Create SPs and functions for reports

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rpt_QM_GetNextReportBasisList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[rpt_QM_GetNextReportBasisList]
GO

CREATE PROCEDURE [dbo].[rpt_QM_GetNextReportBasisList]
	@SelectedBasisList NVARCHAR(200), -- example: empty string, or |Entity|Item|
	@SingleBasis NVARCHAR(30) -- If not empty string, this will be the only value in result set
AS
BEGIN

	DECLARE @AllBasis TABLE (basis_desc NVARCHAR(30), basis_index INT)
	
	-- 'AAA' is used as initial value, instead of empty string --- unknown runtime error occur
	IF @SingleBasis <> 'AAA'
	BEGIN
		INSERT INTO @AllBasis SELECT @SingleBasis, 0 
		-- return result set
		SELECT basis_desc, basis_index FROM @AllBasis 
	END
	ELSE
	BEGIN
		IF @SelectedBasisList <> 'N/A'
		BEGIN	
			IF @SelectedBasisList <> 'AAA'
			BEGIN	
				INSERT INTO @AllBasis SELECT 'N/A', 0
			END		
			INSERT INTO @AllBasis SELECT 'Entity', 1
			INSERT INTO @AllBasis SELECT 'Item', 2
			INSERT INTO @AllBasis SELECT 'Work Order', 3
			INSERT INTO @AllBasis SELECT 'Operation', 4
			INSERT INTO @AllBasis SELECT 'Process', 5
			INSERT INTO @AllBasis SELECT 'Item Category', 6
		END
		ELSE
		BEGIN
			INSERT INTO @AllBasis SELECT 'N/A', 0
		END
		
		-- return result set	
		SELECT basis_desc, 
			   basis_index
		FROM @AllBasis 
		WHERE (CHARINDEX('|' + basis_desc + '|', @SelectedBasisList) = 0 
			  AND @SelectedBasisList <> 'N/A') 
			  OR basis_desc = 'N/A'
		ORDER BY basis_index 	
	END
END
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rpt_QM_GetSampleTimePeriod]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[rpt_QM_GetSampleTimePeriod]
GO

CREATE PROCEDURE [dbo].[rpt_QM_GetSampleTimePeriod]
	
AS
BEGIN

	DECLARE @SampleTimePeriod TABLE (period_desc NVARCHAR(30), period_index INT)
	
	INSERT INTO @SampleTimePeriod SELECT 'Current Shift', 1
	INSERT INTO @SampleTimePeriod SELECT 'Last Shift', 2
	INSERT INTO @SampleTimePeriod SELECT 'Current Day', 3
	INSERT INTO @SampleTimePeriod SELECT 'Last Day', 4
	INSERT INTO @SampleTimePeriod SELECT 'Current Week', 5
	INSERT INTO @SampleTimePeriod SELECT 'Last Week', 6
	INSERT INTO @SampleTimePeriod SELECT 'Custom', 7
	
	-- return result set	
	SELECT period_desc, 
		   period_index
    FROM @SampleTimePeriod   
    ORDER BY period_index 	

END
GO

---------------------------------- Function to get start/end UTC time ------------------------------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_qm_GetUTCTime]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fn_qm_GetUTCTime]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION dbo.fn_qm_GetUTCTime
(
	@TimePeriod NVARCHAR(50), 	
	@StartingDateTime DATETIME, -- nullable
	@EndingDateTime DATETIME, -- nullable
	@TimeZoneId INT
)
RETURNS @ReturnTable TABLE (StartTime DATETIME, EndTime DATETIME) 
AS      

BEGIN    

IF @StartingDateTime IS NULL 
	SET @StartingDateTime = '1/1/1900'
	
IF @EndingDateTime IS NULL 
	SET @EndingDateTime = '1/1/1900'	
	
-- Get local time
IF @TimePeriod = 'Current Day'
BEGIN
	SET @TimeZoneId = -1
	SET @StartingDateTime = CONVERT(DATETIME, CONVERT(CHAR(10), GETDATE(), 101) + ' 0:0:0')
	SET @EndingDateTime = CONVERT(DATETIME, CONVERT(CHAR(10), GETDATE(), 101) + ' 23:59:59')
END 

IF @TimePeriod = 'Last Day'
BEGIN
	SET @TimeZoneId = -1
	SET @StartingDateTime = DATEADD(DAY, -1, CONVERT(DATETIME, CONVERT(CHAR(10), GETDATE(), 101) + ' 0:0:0'))
	SET @EndingDateTime = DATEADD(DAY, -1, CONVERT(DATETIME, CONVERT(CHAR(10), GETDATE(), 101) + ' 23:59:59'))
END 

IF @TimePeriod = 'Current Week'
BEGIN
	SET @TimeZoneId = -1
	SET @StartingDateTime = CONVERT(DATETIME, CONVERT(CHAR(10), DATEADD(DAY, 1 - DATEPART(dw, GETDATE()), GETDATE()), 101) + ' 0:0:0')
	SET @EndingDateTime = CONVERT(DATETIME, CONVERT(CHAR(10), DATEADD(DAY, 7 - DATEPART(dw, GETDATE()), GETDATE()), 101) + + ' 23:59:59')
END 

IF @TimePeriod = 'Last Week'
BEGIN
	SET @TimeZoneId = -1
	SET @StartingDateTime = CONVERT(DATETIME, CONVERT(CHAR(10), DATEADD(DAY, - (6 + DATEPART(dw, GETDATE())), GETDATE()), 101) + ' 0:0:0')
	SET @EndingDateTime = CONVERT(DATETIME, CONVERT(CHAR(10), DATEADD(DAY,  - DATEPART(dw, GETDATE()), GETDATE()), 101) + + ' 23:59:59')
END 

-- Get UTC time
DECLARE @StartDateTimeUTC DateTime  
DECLARE @EndDateTimeUTC DateTime  

IF @TimeZoneId = -1  
BEGIN -- The ArchestrA Reports parameter page will never supply a value of "-1". Assume the time is in "server local" time rather than UTC  
      SET @TimeZoneId = -100  
   SET @StartDateTimeUTC = dbo.TimeZoneToUtc(@StartingDateTime, -100)  
   SET @EndDateTimeUTC = dbo.TimeZoneToUtc(@EndingDateTime, -100)  
END  
ELSE  
BEGIN -- The times are already in UTC, coming from the ArchestrA Reports parameter page  
   -- Anil M Fix for L00060520  
   SET @TimeZoneId = dbo.GetTimeZoneIdByChecksum(@TimeZoneId)  
   -- Anil M Fix for L00060520  
  
   SET @StartDateTimeUTC = @StartingDateTime  
   SET @EndDateTimeUTC = @EndingDateTime  
END  

-- The times are in UTC, now adjust for the "named time periods"  
SET @StartDateTimeUTC = dbo.CalculateStartTimeUtc(@StartDateTimeUTC, 0, @TimeZoneId)  
SET @EndDateTimeUTC = dbo.CalculateEndTimeUtc(@EndDateTimeUTC, 0, @TimeZoneId) 

INSERT INTO @ReturnTable SELECT CASE WHEN @StartingDateTime IS NULL THEN NULL ELSE @StartDateTimeUTC END, 
								CASE WHEN @EndingDateTime IS NULL THEN NULL ELSE @EndDateTimeUTC END

RETURN
END

GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rpt_QM_GetDefaultIgnoreStartEndDateTimeByTimePeriod]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].rpt_QM_GetDefaultIgnoreStartEndDateTimeByTimePeriod
GO

CREATE PROCEDURE [dbo].[rpt_QM_GetDefaultIgnoreStartEndDateTimeByTimePeriod]
	@TimePeriod NVARCHAR(30)	
AS
BEGIN
	IF @TimePeriod <> 'Custom'
	BEGIN
		SELECT 'True' AS 'defalut_ignore', 0 AS 'index'		
	END
	ELSE
	BEGIN
		SELECT 'False' AS 'defalut_ignore',1 AS 'index'
		UNION SELECT 'True' AS 'defalut_ignore', 2 AS 'index'		
	END	
END
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rpt_QM_QualitySummary_SummaryData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[rpt_QM_QualitySummary_SummaryData]

GO
  
CREATE PROCEDURE [dbo].[rpt_QM_QualitySummary_SummaryData]  
 @ReportBasis NVARCHAR(40), -- one from a list of Entity, Item, Work Order, Operation, Process, Item Category  
 @TimePeriod NVARCHAR(40),  -- one from a list of Current Shift, Last Shift, Current Day, Last Day, Current Week, Last Week, and Custom  
 @StartingDateTime DATETIME, -- requested_time_utc, nullable  
 @EndingDateTime DATETIME,   -- requested_time_utc, nullable  
 @TimeZoneID INT,  
 @EquipmentID NVARCHAR(MAX), -- ent_name, in comma seperated string  
 @ProductID NVARCHAR(MAX),  -- item_id, in comma seperated string  
 @Shift  NVARCHAR(200), -- shift_id, in comma seperated string  
 @Severity NVARCHAR(200), -- severity_cd, in comma seperated string  
 @WorkOrder NVARCHAR(80), -- wo_id, nullable, %% needed to allow partial entry  
 @Operation NVARCHAR(80), -- oper_id, nullable, %% needed to allow partial entry  
 @SampleName NVARCHAR(80), -- sample_name, nullable, %% needed to allow partial entry  
 @SamplePriority INT, -- priority, nullable  
 @SampleFrequencyType NVARCHAR(500), -- freq_type, in comma seperated string  
 @Process NVARCHAR(80), -- process_id, nullable, %% needed to allow partial entry  
 @ItemCategory NVARCHAR(MAX), -- category_name, in comma seperated string  
 @CountOfCharacteristic INT, --number of characteristics to show
 @LotNumber NVARCHAR(80), -- nullable, %% needed to allow partial entry  
 @SublotNumber NVARCHAR(80) -- nullable, %% needed to allow partial entry  
AS  
BEGIN
		  
	IF @TimePeriod = 'Custom' AND @StartingDateTime IS NULL AND @EndingDateTime IS NULL  
	BEGIN  
	 Raiserror('Starting / Ending Date Time can not both be NULL' , 16, 1 )   
	 Return  
	 SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
	END  
	  
	IF @EquipmentID IS NULL  
	 SET @EquipmentID = ''  
	   
	IF @ProductID IS NULL  
	 SET @ProductID = ''   
	  
	IF @Shift IS NULL  
	 SET @Shift = ''  
	   
	IF @Severity IS NULL  
	 SET @Severity = ''  
	   
	IF @WorkOrder IS NULL  
	 SET @WorkOrder = ''  
	  
	IF @Operation IS NULL  
	 SET @Operation = ''  
	   
	IF @SampleName IS NULL  
	 SET @SampleName = ''  
	   
	IF @SampleFrequencyType IS NULL  
	 SET @SampleFrequencyType = ''   
	  
	IF @Process IS NULL   
	 SET @Process = ''  
	  
	IF @ItemCategory IS NULL  
	 SET @ItemCategory = ''  

	IF @LotNumber IS NULL  
	 SET @LotNumber = '' 
	 
	IF @SublotNumber IS NULL  
	 SET @SublotNumber = ''     
  
	DECLARE @StartDateTimeUTC DateTime    
	DECLARE @EndDateTimeUTC DateTime    
	  
	SELECT @StartDateTimeUTC = StartTime, @EndDateTimeUTC = EndTime FROM dbo.fn_qm_GetUTCTime (@TimePeriod , @StartingDateTime, @EndingDateTime,  @TimeZoneID) 
	 
	EXEC %SourcePrefix%.[dbo].[rpt_QM_Quality_Data] @ReportBasis,@TimePeriod,@StartDateTimeUTC,@EndDateTimeUTC,@EquipmentID,@ProductID,@Shift,@Severity,@WorkOrder,@Operation,@SampleName,@SamplePriority,@SampleFrequencyType,@Process,@ItemCategory,@LotNumber,@SublotNumber,@CountOfCharacteristic,1, NULL,NULL,'summary'

END
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rpt_QM_QualitySummary_ChartData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[rpt_QM_QualitySummary_ChartData]

GO
  
CREATE PROCEDURE [dbo].[rpt_QM_QualitySummary_ChartData]  
 @ReportBasis NVARCHAR(40), -- one from a list of Entity, Item, Work Order, Operation, Process, Item Category  
 @TimePeriod NVARCHAR(40),  -- one from a list of Current Shift, Last Shift, Current Day, Last Day, Current Week, Last Week, and Custom  
 @StartingDateTime DATETIME, -- requested_time_utc, nullable  
 @EndingDateTime DATETIME,   -- requested_time_utc, nullable  
 @TimeZoneID INT,  
 @EquipmentID NVARCHAR(MAX), -- ent_name, in comma seperated string  
 @ProductID NVARCHAR(MAX),  -- item_id, in comma seperated string  
 @Shift  NVARCHAR(200), -- shift_id, in comma seperated string  
 @Severity NVARCHAR(200), -- severity_cd, in comma seperated string  
 @WorkOrder NVARCHAR(80), -- wo_id, nullable, %% needed to allow partial entry  
 @Operation NVARCHAR(80), -- oper_id, nullable, %% needed to allow partial entry  
 @SampleName NVARCHAR(80), -- sample_name, nullable, %% needed to allow partial entry  
 @SamplePriority INT, -- priority, nullable  
 @SampleFrequencyType NVARCHAR(500), -- freq_type, in comma seperated string  
 @Process NVARCHAR(80), -- process_id, nullable, %% needed to allow partial entry  
 @ItemCategory NVARCHAR(MAX), -- category_name, in comma seperated string  
 @CountOfCharacteristic INT, --number of characteristics to show
 @LotNumber NVARCHAR(80), -- nullable, %% needed to allow partial entry  
 @SublotNumber NVARCHAR(80) -- nullable, %% needed to allow partial entry  
AS  
BEGIN
	  
	IF @TimePeriod = 'Custom' AND @StartingDateTime IS NULL AND @EndingDateTime IS NULL  
	BEGIN  
	 Raiserror('Starting / Ending Date Time can not both be NULL' , 16, 1 )   
	 Return  
	 SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
	END  
	  
	IF @EquipmentID IS NULL  
	 SET @EquipmentID = ''  
	   
	IF @ProductID IS NULL  
	 SET @ProductID = ''   
	  
	IF @Shift IS NULL  
	 SET @Shift = ''  
	   
	IF @Severity IS NULL  
	 SET @Severity = ''  
	   
	IF @WorkOrder IS NULL  
	 SET @WorkOrder = ''  
	  
	IF @Operation IS NULL  
	 SET @Operation = ''  
	   
	IF @SampleName IS NULL  
	 SET @SampleName = ''  
	   
	IF @SampleFrequencyType IS NULL  
	 SET @SampleFrequencyType = ''   
	  
	IF @Process IS NULL   
	 SET @Process = ''  
	  
	IF @ItemCategory IS NULL  
	 SET @ItemCategory = '' 
 
	IF @LotNumber IS NULL  
	 SET @LotNumber = '' 
	 
	IF @SublotNumber IS NULL  
	 SET @SublotNumber = ''    
  
	DECLARE @StartDateTimeUTC DateTime    
	DECLARE @EndDateTimeUTC DateTime    
	  
	SELECT @StartDateTimeUTC = StartTime, @EndDateTimeUTC = EndTime FROM dbo.fn_qm_GetUTCTime (@TimePeriod , @StartingDateTime, @EndingDateTime,  @TimeZoneID) 
	 
	EXEC %SourcePrefix%.[dbo].[rpt_QM_Quality_Data] @ReportBasis,@TimePeriod,@StartDateTimeUTC,@EndDateTimeUTC,@EquipmentID,@ProductID,@Shift,@Severity,@WorkOrder,@Operation,@SampleName,@SamplePriority,@SampleFrequencyType,@Process,@ItemCategory,@LotNumber,@SublotNumber,@CountOfCharacteristic,0,NULL,NULL,'summary'

END
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_QM_CharacteristicDetailColumns]'))
DROP VIEW [dbo].[vw_QM_CharacteristicDetailColumns]
GO

CREATE VIEW [dbo].[vw_QM_CharacteristicDetailColumns]
AS

SELECT 'Entity' AS 'column_name', '01' AS 'column_index'	
UNION SELECT 'Sample Name' AS 'column_name', '02' AS 'column_index'	
UNION SELECT 'Item ID' AS 'column_name', '03' AS 'column_index'	
UNION SELECT 'Work Order' AS 'column_name', '04' AS 'column_index'
UNION SELECT 'Operation' AS 'column_name', '05' AS 'column_index'	
UNION SELECT 'Segment Requirement ID' AS 'column_name', '06' AS 'column_index'	
UNION SELECT 'Segment Response ID' AS 'column_name', '07' AS 'column_index'	
UNION SELECT 'Lot Number' AS 'column_name', '08' AS 'column_index'	
UNION SELECT 'Sublot Number' AS 'column_name', '09' AS 'column_index'	
UNION SELECT 'Sample Note' AS 'column_name', '10' AS 'column_index'	
UNION SELECT 'Spec' AS 'column_name', '11' AS 'column_index'	
UNION SELECT 'Cause Description' AS 'column_name', '12' AS 'column_index'	
UNION SELECT 'Sample Size' AS 'column_name', '13' AS 'column_index'		
UNION SELECT 'Sample In Control' AS 'column_name', '14' AS 'column_index'	

GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rpt_QM_ConvertToImage]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[rpt_QM_ConvertToImage]
GO

CREATE PROC [dbo].[rpt_QM_ConvertToImage]
	@imgInput VARCHAR(MAX)
AS
BEGIN

	SELECT CASE WHEN @imgInput IS NULL THEN NULL ELSE CONVERT(VARBINARY(MAX), @imgInput, 1) END AS 'QCImage'

END

GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rpt_QM_CharacteristicDetail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[rpt_QM_CharacteristicDetail]
GO

CREATE PROCEDURE [dbo].[rpt_QM_CharacteristicDetail]  
 
 @TimePeriod NVARCHAR(40),  -- one from a list of Current Shift, Last Shift, Current Day, Last Day, Current Week, Last Week, and Custom  
 @StartingDateTime DATETIME, -- requested_time_utc, nullable  
 @EndingDateTime DATETIME,   -- requested_time_utc, nullable  
 @TimeZoneID INT,  
 @EquipmentID NVARCHAR(MAX), -- ent_name, in comma seperated string  
 @ProductID NVARCHAR(MAX),  -- item_id, in comma seperated string  
 @Shift  NVARCHAR(200), -- shift_id, in comma seperated string  
 @Severity NVARCHAR(200), -- severity_cd, in comma seperated string  
 @WorkOrder NVARCHAR(80), -- wo_id, nullable, %% needed to allow partial entry  
 @Operation NVARCHAR(80), -- oper_id, nullable, %% needed to allow partial entry  
 @SampleName NVARCHAR(80), -- sample_name, nullable, %% needed to allow partial entry  
 @SamplePriority INT, -- priority, nullable  
 @SampleFrequencyType NVARCHAR(500), -- freq_type, in comma seperated string  
 @Process NVARCHAR(80), -- process_id, nullable, %% needed to allow partial entry  
 @ItemCategory NVARCHAR(MAX), -- category_name, in comma seperated string  
 @LotNumber NVARCHAR(80), -- nullable, %% needed to allow partial entry  
 @SublotNumber NVARCHAR(80), -- nullable, %% needed to allow partial entry  
 @CharID NVARCHAR(MAX), -- char_id, in comma seperated string 
 @SpecID NVARCHAR(MAX),-- qm_spec_id, in comma seperated string  
 @IsSummary INT -- 0 for summary data; 1 for chart data; 2 for character list which will be charted

WITH EXECUTE AS CALLER  
AS  
BEGIN
	IF @TimePeriod = 'Custom' AND @StartingDateTime IS NULL AND @EndingDateTime IS NULL  
	BEGIN  
	 Raiserror('Starting / Ending Date Time can not both be NULL' , 16, 1 )   
	 Return  
	 SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
	END  
	  
	IF @EquipmentID IS NULL  
	 SET @EquipmentID = ''  
	   
	IF @ProductID IS NULL  
	 SET @ProductID = ''   
	  
	IF @Shift IS NULL  
	 SET @Shift = ''  
	   
	IF @Severity IS NULL  
	 SET @Severity = ''  
	   
	IF @WorkOrder IS NULL  
	 SET @WorkOrder = ''  
	  
	IF @Operation IS NULL  
	 SET @Operation = ''  
	   
	IF @SampleName IS NULL  
	 SET @SampleName = ''  
	   
	IF @SampleFrequencyType IS NULL  
	 SET @SampleFrequencyType = ''   
	  
	IF @Process IS NULL   
	 SET @Process = ''  
	  
	IF @ItemCategory IS NULL  
	 SET @ItemCategory = ''  
	 
	IF @LotNumber IS NULL  
	 SET @LotNumber = '' 
	 
	IF @SublotNumber IS NULL  
	 SET @SublotNumber = '' 
	 
	IF @CharID IS NULL  
	 SET @CharID = '' 
	 
	IF @SpecID IS NULL  
	 SET @SpecID = ''   
	  
	DECLARE @StartDateTimeUTC DateTime    
	DECLARE @EndDateTimeUTC DateTime    
	  
	SELECT @StartDateTimeUTC = StartTime, @EndDateTimeUTC = EndTime FROM dbo.fn_qm_GetUTCTime (@TimePeriod , @StartingDateTime, @EndingDateTime,  @TimeZoneID) 

	
	IF @IsSummary = 0 
	BEGIN
		DECLARE @TableVar TABLE (sample_id int, char_name VARCHAR(200), requested_time_local datetime, primary_chart_value float, primary_target float,
			primary_lcl float, primary_ucl float, secondary_target float, secondary_lcl float, secondary_ucl float, sample_size int, points_per_page int, default_chart_name VARCHAR(100),
			indx int, sample_interval float, chart_sample_size int, max_sample_size int);
		INSERT @TableVar
		EXEC %SourcePrefix%.[dbo].[rpt_QM_Quality_Data] NULL,@TimePeriod,@StartDateTimeUTC,@EndDateTimeUTC,@EquipmentID,@ProductID,@Shift,@Severity,@WorkOrder,@Operation,@SampleName,@SamplePriority,@SampleFrequencyType,@Process,@ItemCategory,@LotNumber,@SublotNumber,0,@IsSummary,@CharID,@SpecID,'SPC'
		DECLARE @XmlOutput as XML;
		SET @XmlOutput =
		(
			SELECT * FROM @TableVar
			FOR XML RAW ('Row'), ROOT ('Rows'), ELEMENTS
		)
		
		SELECT 'Xml' = @XmlOutput
	END
	ELSE
		EXEC %SourcePrefix%.[dbo].[rpt_QM_Quality_Data] NULL,@TimePeriod,@StartDateTimeUTC,@EndDateTimeUTC,@EquipmentID,@ProductID,@Shift,@Severity,@WorkOrder,@Operation,@SampleName,@SamplePriority,@SampleFrequencyType,@Process,@ItemCategory,@LotNumber,@SublotNumber,0,@IsSummary,@CharID,@SpecID,'SPC'
END
GO

----------------------------------------------------------------------------------------------------
----Insert localized text for labels used in reports
-- NOTE: Layout localized texts  (Text Id starts with 0) are standard report layout text in page header/footer and report summary section; 

----------------- Scope QMFilterCriteria is to be shared by all QM reports
-- First remove the localized entries if this is not a clean install
DELETE FROM dbo.aarsLayoutLocalizedText
WHERE Scope = 'QMFilterCriteria'
GO

DECLARE @docHandle int
declare @xmlDocument nvarchar(max) 
set @xmlDocument = N'<ROOT>
<aarsLayoutLocalizedText Scope="QMFilterCriteria" TextId="0" LanguageCode="en-us" LocalizedText="All" Description="Filter criteria section"/>
<aarsLayoutLocalizedText Scope="QMFilterCriteria" TextId="1" LanguageCode="en-us" LocalizedText="Report Bases" Description="Filter criteria section"/>
<aarsLayoutLocalizedText Scope="QMFilterCriteria" TextId="2" LanguageCode="en-us" LocalizedText="Time Period" Description="Filter criteria section"/>
<aarsLayoutLocalizedText Scope="QMFilterCriteria" TextId="3" LanguageCode="en-us" LocalizedText="Entity" Description="Filter criteria section"/>
<aarsLayoutLocalizedText Scope="QMFilterCriteria" TextId="4" LanguageCode="en-us" LocalizedText="Item" Description="Filter criteria section"/>
<aarsLayoutLocalizedText Scope="QMFilterCriteria" TextId="5" LanguageCode="en-us" LocalizedText="Shift ID" Description="Filter criteria section"/>
<aarsLayoutLocalizedText Scope="QMFilterCriteria" TextId="6" LanguageCode="en-us" LocalizedText="Severity" Description="Filter criteria section"/>
<aarsLayoutLocalizedText Scope="QMFilterCriteria" TextId="7" LanguageCode="en-us" LocalizedText="Work Order" Description="Filter criteria section"/>
<aarsLayoutLocalizedText Scope="QMFilterCriteria" TextId="8" LanguageCode="en-us" LocalizedText="Operation" Description="Filter criteria section"/>
<aarsLayoutLocalizedText Scope="QMFilterCriteria" TextId="9" LanguageCode="en-us" LocalizedText="Sample Name" Description="Filter criteria section"/>
<aarsLayoutLocalizedText Scope="QMFilterCriteria" TextId="10" LanguageCode="en-us" LocalizedText="Sample Priority" Description="Filter criteria section"/>
<aarsLayoutLocalizedText Scope="QMFilterCriteria" TextId="11" LanguageCode="en-us" LocalizedText="Samp.Freq.Type" Description="Filter criteria section"/>
<aarsLayoutLocalizedText Scope="QMFilterCriteria" TextId="12" LanguageCode="en-us" LocalizedText="Report Sections" Description="Filter criteria section"/>
<aarsLayoutLocalizedText Scope="QMFilterCriteria" TextId="13" LanguageCode="en-us" LocalizedText="Process" Description="Filter criteria section"/>
<aarsLayoutLocalizedText Scope="QMFilterCriteria" TextId="14" LanguageCode="en-us" LocalizedText="Item Category" Description="Filter criteria section"/>
<aarsLayoutLocalizedText Scope="QMFilterCriteria" TextId="15" LanguageCode="en-us" LocalizedText="Chart Level" Description="Filter criteria section"/>
<aarsLayoutLocalizedText Scope="QMFilterCriteria" TextId="16" LanguageCode="en-us" LocalizedText="Lot Number" Description="Filter criteria section"/>
<aarsLayoutLocalizedText Scope="QMFilterCriteria" TextId="17" LanguageCode="en-us" LocalizedText="Sublot Number" Description="Filter criteria section"/>
<aarsLayoutLocalizedText Scope="QMFilterCriteria" TextId="18" LanguageCode="en-us" LocalizedText="Char. Display" Description="Filter criteria section"/>
<aarsLayoutLocalizedText Scope="QMFilterCriteria" TextId="19" LanguageCode="en-us" LocalizedText="Stat. Columns" Description="Filter criteria section"/>
<aarsLayoutLocalizedText Scope="QMFilterCriteria" TextId="20" LanguageCode="en-us" LocalizedText="Cp Threshold" Description="Filter criteria section"/>
<aarsLayoutLocalizedText Scope="QMFilterCriteria" TextId="21" LanguageCode="en-us" LocalizedText="Cpk Threshold" Description="Filter criteria section"/>
<aarsLayoutLocalizedText Scope="QMFilterCriteria" TextId="22" LanguageCode="en-us" LocalizedText="Pp Threshold" Description="Filter criteria section"/>
<aarsLayoutLocalizedText Scope="QMFilterCriteria" TextId="23" LanguageCode="en-us" LocalizedText="Ppk Threshold" Description="Filter criteria section"/>
<aarsLayoutLocalizedText Scope="QMFilterCriteria" TextId="24" LanguageCode="en-us" LocalizedText="OOS Threshold" Description="Filter criteria section"/>
<aarsLayoutLocalizedText Scope="QMFilterCriteria" TextId="25" LanguageCode="en-us" LocalizedText="N/A" Description="Filter criteria section"/>
<aarsLayoutLocalizedText Scope="QMFilterCriteria" TextId="26" LanguageCode="en-us" LocalizedText="Characteristics" Description="Filter criteria section"/>
<aarsLayoutLocalizedText Scope="QMFilterCriteria" TextId="27" LanguageCode="en-us" LocalizedText="Spec" Description="Filter criteria section"/>
<aarsLayoutLocalizedText Scope="QMFilterCriteria" TextId="28" LanguageCode="en-us" LocalizedText="Detail Columns" Description="Filter criteria section"/>
</ROOT>'

EXEC sp_xml_preparedocument @docHandle OUTPUT, @xmlDocument

-- Use OPENXML to provide rowset consisting of data.
INSERT aarsLayoutLocalizedText
SELECT * 
FROM OPENXML(@docHandle, N'/ROOT/aarsLayoutLocalizedText') 
  WITH aarsLayoutLocalizedText
GO

----------------- Scope QMTimePeriod is to be shared by all QM reports
-- First remove the localized entries if this is not a clean install
DELETE FROM dbo.aarsLayoutLocalizedText
WHERE Scope = 'QMTimePeriod'
GO

DECLARE @docHandle int
declare @xmlDocument nvarchar(max) 
set @xmlDocument = N'<ROOT>
<aarsLayoutLocalizedText Scope="QMTimePeriod" TextId="0" LanguageCode="en-us" LocalizedText="Current Shift" Description="Filter time period"/>
<aarsLayoutLocalizedText Scope="QMTimePeriod" TextId="1" LanguageCode="en-us" LocalizedText="Last Shift" Description="Filter time period"/>
<aarsLayoutLocalizedText Scope="QMTimePeriod" TextId="2" LanguageCode="en-us" LocalizedText="Current Day" Description="Filter time period"/>
<aarsLayoutLocalizedText Scope="QMTimePeriod" TextId="3" LanguageCode="en-us" LocalizedText="Last Day" Description="Filter time period"/>
<aarsLayoutLocalizedText Scope="QMTimePeriod" TextId="4" LanguageCode="en-us" LocalizedText="Current Week" Description="Filter time period"/>
<aarsLayoutLocalizedText Scope="QMTimePeriod" TextId="5" LanguageCode="en-us" LocalizedText="Last Week" Description="Filter time period"/>
<aarsLayoutLocalizedText Scope="QMTimePeriod" TextId="6" LanguageCode="en-us" LocalizedText="Custom" Description="Filter time period"/>
</ROOT>'

EXEC sp_xml_preparedocument @docHandle OUTPUT, @xmlDocument

-- Use OPENXML to provide rowset consisting of data.
INSERT aarsLayoutLocalizedText
SELECT * 
FROM OPENXML(@docHandle, N'/ROOT/aarsLayoutLocalizedText') 
  WITH aarsLayoutLocalizedText
GO

------------------- Quality Summary Report ------------------------
-- Report basis to display in data details table of Quality Summary report
-- First remove the localized entries if this is not a clean install
DELETE FROM dbo.aarsLayoutLocalizedText
WHERE Scope = 'QualitySummaryReportBasis'
GO

DECLARE @docHandle int
declare @xmlDocument nvarchar(max) 
set @xmlDocument = N'<ROOT>
<aarsLayoutLocalizedText Scope="QualitySummaryReportBasis" TextId="0" LanguageCode="en-us" LocalizedText="Entity" Description="Quality summary report basis"/>
<aarsLayoutLocalizedText Scope="QualitySummaryReportBasis" TextId="1" LanguageCode="en-us" LocalizedText="Item" Description="Quality summary report basis"/>
<aarsLayoutLocalizedText Scope="QualitySummaryReportBasis" TextId="2" LanguageCode="en-us" LocalizedText="Work Order" Description="Quality summary report basis"/>
<aarsLayoutLocalizedText Scope="QualitySummaryReportBasis" TextId="3" LanguageCode="en-us" LocalizedText="Operation" Description="Quality summary report basis"/>
<aarsLayoutLocalizedText Scope="QualitySummaryReportBasis" TextId="4" LanguageCode="en-us" LocalizedText="Process" Description="Quality summary report basis"/>
<aarsLayoutLocalizedText Scope="QualitySummaryReportBasis" TextId="5" LanguageCode="en-us" LocalizedText="Item Category" Description="Quality summary report basis"/>
</ROOT>'
EXEC sp_xml_preparedocument @docHandle OUTPUT, @xmlDocument

-- Use OPENXML to provide rowset consisting of data.
INSERT aarsLayoutLocalizedText
SELECT * 
FROM OPENXML(@docHandle, N'/ROOT/aarsLayoutLocalizedText') 
  WITH aarsLayoutLocalizedText
GO

-- Titles, lables and column headers
-- First remove the localized entries if this is not a clean install
DELETE FROM dbo.aarsLayoutLocalizedText
WHERE Scope = 'QMQualitySummary'
GO

DECLARE @docHandle int
declare @xmlDocument nvarchar(max) 
set @xmlDocument = N'<ROOT>
<aarsLayoutLocalizedText Scope="QMQualitySummary" TextId="0" LanguageCode="en-us" LocalizedText="Quality Summary Report" Description="Report Title"/>
<aarsLayoutLocalizedText Scope="QMQualitySummary" TextId="1" LanguageCode="en-us" LocalizedText="Filter Criteria" Description="Report sections"/>
<aarsLayoutLocalizedText Scope="QMQualitySummary" TextId="2" LanguageCode="en-us" LocalizedText="% OOS" Description="Report sections"/>
<aarsLayoutLocalizedText Scope="QMQualitySummary" TextId="3" LanguageCode="en-us" LocalizedText="Count OOS" Description="Report sections"/>
<aarsLayoutLocalizedText Scope="QMQualitySummary" TextId="4" LanguageCode="en-us" LocalizedText="% OOC" Description="Report sections"/>
<aarsLayoutLocalizedText Scope="QMQualitySummary" TextId="5" LanguageCode="en-us" LocalizedText="Count OOC" Description="Report sections"/>
<aarsLayoutLocalizedText Scope="QMQualitySummary" TextId="6" LanguageCode="en-us" LocalizedText="Characteristic Statistics" Description="Report sections"/>
<aarsLayoutLocalizedText Scope="QMQualitySummary" TextId="7" LanguageCode="en-us" LocalizedText="Num Results" Description="Summary Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualitySummary" TextId="8" LanguageCode="en-us" LocalizedText="Count OOS" Description="Summary Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualitySummary" TextId="9" LanguageCode="en-us" LocalizedText="% OOS" Description="Summary Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualitySummary" TextId="10" LanguageCode="en-us" LocalizedText="Avg" Description="Statistical Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualitySummary" TextId="11" LanguageCode="en-us" LocalizedText="Min" Description="Statistical Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualitySummary" TextId="12" LanguageCode="en-us" LocalizedText="Max" Description="Statistical Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualitySummary" TextId="13" LanguageCode="en-us" LocalizedText="Std Dev" Description="Statistical Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualitySummary" TextId="14" LanguageCode="en-us" LocalizedText="Est Sigma" Description="Statistical Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualitySummary" TextId="15" LanguageCode="en-us" LocalizedText="Range" Description="Statistical Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualitySummary" TextId="16" LanguageCode="en-us" LocalizedText="Cp" Description="Statistical Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualitySummary" TextId="17" LanguageCode="en-us" LocalizedText="Cpk" Description="Statistical Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualitySummary" TextId="18" LanguageCode="en-us" LocalizedText="Pp" Description="Statistical Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualitySummary" TextId="19" LanguageCode="en-us" LocalizedText="Ppk" Description="Statistical Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualitySummary" TextId="20" LanguageCode="en-us" LocalizedText="LSL" Description="Statistical Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualitySummary" TextId="21" LanguageCode="en-us" LocalizedText="USL" Description="Statistical Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualitySummary" TextId="22" LanguageCode="en-us" LocalizedText="Summary Data" Description="Report sections"/>
<aarsLayoutLocalizedText Scope="QMQualitySummary" TextId="23" LanguageCode="en-us" LocalizedText="Statistical Data" Description="Report sections"/>
<aarsLayoutLocalizedText Scope="QMQualitySummary" TextId="24" LanguageCode="en-us" LocalizedText="Char" Description="Summary Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualitySummary" TextId="25" LanguageCode="en-us" LocalizedText="Sample Count" Description="Summary Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualitySummary" TextId="26" LanguageCode="en-us" LocalizedText="Count OOC" Description="Summary Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualitySummary" TextId="27" LanguageCode="en-us" LocalizedText="% OOC" Description="Summary Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualitySummary" TextId="28" LanguageCode="en-us" LocalizedText="Target" Description="Statistical Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualitySummary" TextId="29" LanguageCode="en-us" LocalizedText="Spec" Description="Statistical Data Table Column"/>
</ROOT>'
EXEC sp_xml_preparedocument @docHandle OUTPUT, @xmlDocument

-- Use OPENXML to provide rowset consisting of data.
INSERT aarsLayoutLocalizedText
SELECT * 
FROM OPENXML(@docHandle, N'/ROOT/aarsLayoutLocalizedText') 
  WITH aarsLayoutLocalizedText
GO

-- Header of report sections
-- First remove the localized entries if this is not a clean install
DELETE FROM dbo.aarsLayoutLocalizedText
WHERE Scope = 'QualitySummarySections'
GO

DECLARE @docHandle int
declare @xmlDocument nvarchar(max) 
set @xmlDocument = N'<ROOT>
<aarsLayoutLocalizedText Scope="QualitySummarySections" TextId="0" LanguageCode="en-us" LocalizedText="Filter Criteria" Description="Filter the report sections"/>
<aarsLayoutLocalizedText Scope="QualitySummarySections" TextId="1" LanguageCode="en-us" LocalizedText="% Out of Spec (Graphic)" Description="Filter the report sections"/>
<aarsLayoutLocalizedText Scope="QualitySummarySections" TextId="2" LanguageCode="en-us" LocalizedText="Count Out of Spec (Graphic)" Description="Filter the report sections"/>
<aarsLayoutLocalizedText Scope="QualitySummarySections" TextId="3" LanguageCode="en-us" LocalizedText="% Out of Control (Graphic)" Description="Filter the report sections"/>
<aarsLayoutLocalizedText Scope="QualitySummarySections" TextId="4" LanguageCode="en-us" LocalizedText="Count Out of Control (Graphic)" Description="Filter the report sections"/>
<aarsLayoutLocalizedText Scope="QualitySummarySections" TextId="5" LanguageCode="en-us" LocalizedText="Summary Data" Description="Filter the report sections"/>
<aarsLayoutLocalizedText Scope="QualitySummarySections" TextId="6" LanguageCode="en-us" LocalizedText="Statistical Data" Description="Filter the report sections"/>
</ROOT>'
EXEC sp_xml_preparedocument @docHandle OUTPUT, @xmlDocument

-- Use OPENXML to provide rowset consisting of data.
INSERT aarsLayoutLocalizedText
SELECT * 
FROM OPENXML(@docHandle, N'/ROOT/aarsLayoutLocalizedText') 
  WITH aarsLayoutLocalizedText
GO

------------------- Quality Characteristic Detail Report ------------------------
-- First remove the localized entries if this is not a clean install
DELETE FROM dbo.aarsLayoutLocalizedText
WHERE Scope = 'QMQualityCharacteristicDetail'
GO

DECLARE @docHandle int
declare @xmlDocument nvarchar(max) 
set @xmlDocument = N'<ROOT>
<aarsLayoutLocalizedText Scope="QMQualityCharacteristicDetail" TextId="0" LanguageCode="en-us" LocalizedText="Quality Characteristic Detail Report" Description="Report Title"/>
<aarsLayoutLocalizedText Scope="QMQualityCharacteristicDetail" TextId="1" LanguageCode="en-us" LocalizedText="Char" Description="Detail Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualityCharacteristicDetail" TextId="2" LanguageCode="en-us" LocalizedText="Time" Description="Detail Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualityCharacteristicDetail" TextId="3" LanguageCode="en-us" LocalizedText="Entity" Description="Detail Data Table Columns"/>
<aarsLayoutLocalizedText Scope="QMQualityCharacteristicDetail" TextId="4" LanguageCode="en-us" LocalizedText="Name" Description="Detail Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualityCharacteristicDetail" TextId="5" LanguageCode="en-us" LocalizedText="Item" Description="Detail Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualityCharacteristicDetail" TextId="6" LanguageCode="en-us" LocalizedText="WO" Description="Detail Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualityCharacteristicDetail" TextId="7" LanguageCode="en-us" LocalizedText="Oper" Description="Detail Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualityCharacteristicDetail" TextId="8" LanguageCode="en-us" LocalizedText="Seg Req" Description="Detail Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualityCharacteristicDetail" TextId="9" LanguageCode="en-us" LocalizedText="Seg Resp" Description="Detail Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualityCharacteristicDetail" TextId="10" LanguageCode="en-us" LocalizedText="Lot" Description="Detail Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualityCharacteristicDetail" TextId="11" LanguageCode="en-us" LocalizedText="Sublot" Description="Detail Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualityCharacteristicDetail" TextId="12" LanguageCode="en-us" LocalizedText="Note" Description="Detail Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualityCharacteristicDetail" TextId="13" LanguageCode="en-us" LocalizedText="Spec" Description="Detail Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualityCharacteristicDetail" TextId="14" LanguageCode="en-us" LocalizedText="Cause" Description="Detail Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualityCharacteristicDetail" TextId="15" LanguageCode="en-us" LocalizedText="Result" Description="Detail Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualityCharacteristicDetail" TextId="16" LanguageCode="en-us" LocalizedText="Sec val" Description="Detail Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualityCharacteristicDetail" TextId="17" LanguageCode="en-us" LocalizedText="Size" Description="Detail Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualityCharacteristicDetail" TextId="18" LanguageCode="en-us" LocalizedText="OOC" Description="Detail Data Table Column"/>
<aarsLayoutLocalizedText Scope="QMQualityCharacteristicDetail" TextId="19" LanguageCode="en-us" LocalizedText="Filter Criteria" Description="Report sections"/>
<aarsLayoutLocalizedText Scope="QMQualityCharacteristicDetail" TextId="20" LanguageCode="en-us" LocalizedText="Characteristic Detail Data" Description="Report sections"/>
</ROOT>'
EXEC sp_xml_preparedocument @docHandle OUTPUT, @xmlDocument

-- Use OPENXML to provide rowset consisting of data.
INSERT aarsLayoutLocalizedText
SELECT * 
FROM OPENXML(@docHandle, N'/ROOT/aarsLayoutLocalizedText') 
  WITH aarsLayoutLocalizedText
GO

-- Sections to display on Quality Characteristic Detail report
-- First remove the localized entries if this is not a clean install
DELETE FROM dbo.aarsLayoutLocalizedText
WHERE Scope = 'QualityCharacteristicDetailSections'
GO

DECLARE @docHandle int
declare @xmlDocument nvarchar(max) 
set @xmlDocument = N'<ROOT>
<aarsLayoutLocalizedText Scope="QualityCharacteristicDetailSections" TextId="0" LanguageCode="en-us" LocalizedText="Filter Criteria" Description="Filter the report sections"/>
<aarsLayoutLocalizedText Scope="QualityCharacteristicDetailSections" TextId="1" LanguageCode="en-us" LocalizedText="SPC Chart" Description="Filter the report sections"/>
<aarsLayoutLocalizedText Scope="QualityCharacteristicDetailSections" TextId="2" LanguageCode="en-us" LocalizedText="Characteristic Details" Description="Filter the report sections"/>
</ROOT>'
EXEC sp_xml_preparedocument @docHandle OUTPUT, @xmlDocument

-- Use OPENXML to provide rowset consisting of data.
INSERT aarsLayoutLocalizedText
SELECT * 
FROM OPENXML(@docHandle, N'/ROOT/aarsLayoutLocalizedText') 
  WITH aarsLayoutLocalizedText
GO

-- End of MES QM Report script