USE [aaReports]
GO
/****** Object:  StoredProcedure [dbo].[MES_BSC_LineStateData]    Script Date: 9/22/2016 3:52:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[MES_BSC_LineStateData]
	@StartShiftLocal datetime,
	@EndShiftLocal datetime

AS

BEGIN -- PROCEDURE		

DECLARE
	@Ent_ID int,
	@GroupByOpt int


SELECT @GroupByOpt = 0, @Ent_ID = 0



SELECT ent.ent_name, ent.ent_id, tpm.shift_start_local, tpm.hour_start_local, sh.shift_desc,
	SUM(tpm.runtime) AS runtime,
	SUM(tpm.downtime) AS downtime,
	SUM(tpm.idletime) AS idletime,
	SUM(tpm.runtime + tpm.downtime) AS availtime,
	SUM((tpm.runtime + tpm.downtime) / tpm.std_prod_rate / 3600) AS tmax_avail,
	SUM(tpm.runtime / tpm.std_prod_rate / 3600) AS tmax_run,
	SUM(tpm.qty_good) AS qty_good,
	SUM(tpm.qty_reject) AS qty_reject,
	SUM(tpm.qty_good + tpm.qty_reject) AS qty_total
	INTO #tpm_temp
	FROM MESDB.dbo.tpm_stat tpm WITH (NOLOCK)
	INNER JOIN (SELECT * FROM dbo.MES_BSC_PerformanceRpt_Entities(@Ent_ID)) ent ON tpm.ent_id = ent.ent_id
	INNER JOIN MESDB.dbo.shift sh ON tpm.shift_id = sh.shift_id
	WHERE tpm.shift_start_local >= @StartShiftLocal AND tpm.shift_start_local <= @EndShiftLocal
	GROUP BY ent.ent_name, ent.ent_id, tpm.shift_start_local, tpm.hour_start_local, sh.shift_desc


/* Flexible  Grid */
SELECT utl.ent_id, utl.ent_name,
	CASE @GroupByOpt
		WHEN 1 THEN LEFT(CONVERT(varchar(20), utl.hour_start_local, 108), 2) 
--		WHEN 2 THEN sh.shift_desc
		WHEN 3 THEN CONVERT(varchar(20), utl.shift_start_local, 101)
		ELSE 'ALL'
		END AS GroupN,
	SUM(utl.duration) AS TotalTime,
	SUM(CASE utl.state_cd WHEN 1 THEN utl.duration ELSE 0 END) AS Producing,
	SUM(CASE utl.state_cd WHEN 2 THEN utl.duration ELSE 0 END) AS PlanDown,
	SUM(CASE utl.state_cd WHEN 3 THEN utl.duration ELSE 0 END) AS NonSched,
	SUM(CASE utl.state_cd WHEN 4 THEN utl.duration ELSE 0 END) AS Blocked,
	SUM(CASE utl.state_cd WHEN 5 THEN utl.duration ELSE 0 END) AS Starved,
	SUM(CASE WHEN utl.state_cd NOT BETWEEN 1 AND 5 THEN utl.duration ELSE 0 END) AS Failed,
	COUNT(CASE WHEN utl.state_cd NOT BETWEEN 1 AND 5 THEN utl.duration ELSE 0 END) AS NumBreakdowns
	FROM
	(SELECT tpm.ent_id, tpm.ent_name, tpm.shift_start_local, tpm.hour_start_local, evt.state_cd,
		SUM(CASE
			WHEN evt.EventStart >= tpm.hour_start_local AND evt.EventEnd <= DATEADD(hh, 1, tpm.hour_start_local) THEN evt.duration  -- Event Within Hour
			WHEN evt.EventStart < tpm.hour_start_local AND evt.EventEnd > DATEADD(hh, 1, tpm.hour_start_local) THEN 3600  -- Event Spans Full Hour
			WHEN evt.EventEnd >= tpm.hour_start_local AND tpm.hour_start_local > evt.EventStart THEN DATEDIFF(ss, tpm.hour_start_local, evt.EventEnd)   -- Overlaps End
			WHEN evt.EventStart >= tpm.hour_start_local AND evt.EventEnd > DATEADD(hh, 1, tpm.hour_start_local) THEN 3600 - DATEDIFF(ss, tpm.hour_start_local, evt.EventStart)   -- Overlaps Start
			ELSE 0 END) AS duration
	FROM #tpm_temp tpm
	INNER JOIN 	
		(SELECT ut.ent_id, ut.shift_start_local, ut.state_cd, ut.event_time_local AS EventStart, DATEADD(ss, ut.duration, ut.event_time_local) AS EventEnd, ut.duration
			FROM MESDB.dbo.util_log ut WITH (NOLOCK)
			INNER JOIN (SELECT * FROM dbo.MES_BSC_PerformanceRpt_Entities(@Ent_ID)) tmp ON ut.ent_id = tmp.ent_id
			WHERE ut.shift_start_local >= @StartShiftLocal AND ut.shift_start_local <= @EndShiftLocal
			) evt
		ON tpm.ent_id = evt.ent_id AND tpm.shift_start_local = evt.shift_start_local
		AND (tpm.hour_start_local BETWEEN DATEADD(hh, -1, evt.EventStart) AND evt.EventEnd)
		GROUP BY  tpm.ent_id, tpm.ent_name, tpm.shift_start_local, tpm.hour_start_local, evt.state_cd) utl
	GROUP BY  utl.ent_id, utl.ent_name,
	CASE @GroupByOpt
		WHEN 1 THEN LEFT(CONVERT(varchar(20), utl.hour_start_local, 108), 2) 
--		WHEN 2 THEN sh.shift_desc
		WHEN 3 THEN CONVERT(varchar(20), utl.shift_start_local, 101)
		ELSE 'ALL'
		END


DROP TABLE #tpm_temp

END
GO
/****** Object:  StoredProcedure [dbo].[MES_BSC_LineStateData2]    Script Date: 9/22/2016 3:52:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[MES_BSC_LineStateData2]
	

AS

BEGIN -- PROCEDURE		

DECLARE
	@Ent_ID int,
	@GroupByOpt int,
	@FirstDayLastMonth datetime,
	@LastDayLastMonth datetime,
	@YesterdayDate datetime,
	@TodayDate datetime,
	@FirstDayLastWeek datetime,
	@LastDayLastWeek datetime


SELECT @GroupByOpt = 0, 
	@Ent_ID = 0, 
	@FirstDayLastMonth = DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE())-1, 0), 
	@LastDayLastMonth = DATEADD(MONTH, DATEDIFF(MONTH, -1, GETDATE())-1, -1),
	@TodayDate = DATEADD(d, 0, DATEDIFF(d, 0, GETDATE())),
	@YesterdayDate = DATEADD(dd, -1, DATEADD(d, 0, DATEDIFF(d, 0, GETDATE()))),
	@FirstDayLastWeek = DATEADD(dd, -1, DATEADD(wk, DATEDIFF(wk, 6, GETDATE()), 0)),
	@lastDayLastWeek = DATEADD(dd, -1, DATEADD(wk, DATEDIFF(wk, 6, GETDATE()), 6))



SELECT ent.ent_name, ent.ent_id, tpm.shift_start_local, tpm.hour_start_local, sh.shift_desc,
	SUM(tpm.runtime) AS runtime,
	SUM(tpm.downtime) AS downtime,
	SUM(tpm.idletime) AS idletime,
	SUM(tpm.runtime + tpm.downtime) AS availtime,
	SUM((tpm.runtime + tpm.downtime) / tpm.std_prod_rate / 3600) AS tmax_avail,
	SUM(tpm.runtime / tpm.std_prod_rate / 3600) AS tmax_run,
	SUM(tpm.qty_good) AS qty_good,
	SUM(tpm.qty_reject) AS qty_reject,
	SUM(tpm.qty_good + tpm.qty_reject) AS qty_total
	INTO #tpm_temp
	FROM MESDB.dbo.tpm_stat tpm WITH (NOLOCK)
	INNER JOIN (SELECT * FROM dbo.MES_BSC_PerformanceRpt_Entities(@Ent_ID)) ent ON tpm.ent_id = ent.ent_id
	INNER JOIN MESDB.dbo.shift sh ON tpm.shift_id = sh.shift_id
	WHERE tpm.shift_start_local >= @FirstDayLastMonth AND tpm.shift_start_local <= @LastDayLastMonth
	GROUP BY ent.ent_name, ent.ent_id, tpm.shift_start_local, tpm.hour_start_local, sh.shift_desc


SELECT ent.ent_name, ent.ent_id, tpm.shift_start_local, tpm.hour_start_local, sh.shift_desc,
	SUM(tpm.runtime) AS runtime,
	SUM(tpm.downtime) AS downtime,
	SUM(tpm.idletime) AS idletime,
	SUM(tpm.runtime + tpm.downtime) AS availtime,
	SUM((tpm.runtime + tpm.downtime) / tpm.std_prod_rate / 3600) AS tmax_avail,
	SUM(tpm.runtime / tpm.std_prod_rate / 3600) AS tmax_run,
	SUM(tpm.qty_good) AS qty_good,
	SUM(tpm.qty_reject) AS qty_reject,
	SUM(tpm.qty_good + tpm.qty_reject) AS qty_total
	INTO #tpm_temp2
	FROM MESDB.dbo.tpm_stat tpm WITH (NOLOCK)
	INNER JOIN (SELECT * FROM dbo.MES_BSC_PerformanceRpt_Entities(@Ent_ID)) ent ON tpm.ent_id = ent.ent_id
	INNER JOIN MESDB.dbo.shift sh ON tpm.shift_id = sh.shift_id
	WHERE tpm.shift_start_local >= @FirstDayLastWeek AND tpm.shift_start_local <= @LastDayLastWeek
	GROUP BY ent.ent_name, ent.ent_id, tpm.shift_start_local, tpm.hour_start_local, sh.shift_desc

SELECT ent.ent_name, ent.ent_id, tpm.shift_start_local, tpm.hour_start_local, sh.shift_desc,
	SUM(tpm.runtime) AS runtime,
	SUM(tpm.downtime) AS downtime,
	SUM(tpm.idletime) AS idletime,
	SUM(tpm.runtime + tpm.downtime) AS availtime,
	SUM((tpm.runtime + tpm.downtime) / tpm.std_prod_rate / 3600) AS tmax_avail,
	SUM(tpm.runtime / tpm.std_prod_rate / 3600) AS tmax_run,
	SUM(tpm.qty_good) AS qty_good,
	SUM(tpm.qty_reject) AS qty_reject,
	SUM(tpm.qty_good + tpm.qty_reject) AS qty_total
	INTO #tpm_temp3
	FROM MESDB.dbo.tpm_stat tpm WITH (NOLOCK)
	INNER JOIN (SELECT * FROM dbo.MES_BSC_PerformanceRpt_Entities(@Ent_ID)) ent ON tpm.ent_id = ent.ent_id
	INNER JOIN MESDB.dbo.shift sh ON tpm.shift_id = sh.shift_id
	WHERE tpm.shift_start_local >= @YesterdayDate AND tpm.shift_start_local <= @TodayDate
	GROUP BY ent.ent_name, ent.ent_id, tpm.shift_start_local, tpm.hour_start_local, sh.shift_desc


SELECT * FROM(
/* Flexible  Grid */
SELECT utl.ent_name,
	SUM(CASE utl.state_cd WHEN 1 THEN utl.duration ELSE 0 END) AS MonthProducing,
	SUM(CASE utl.state_cd WHEN 2 THEN utl.duration ELSE 0 END) AS MonthPlanDown,
	SUM(CASE utl.state_cd WHEN 3 THEN utl.duration ELSE 0 END) AS MonthNonSched,
	SUM(CASE utl.state_cd WHEN 4 THEN utl.duration ELSE 0 END) AS MonthBlocked,
	SUM(CASE utl.state_cd WHEN 5 THEN utl.duration ELSE 0 END) AS MonthStarved,
	SUM(CASE WHEN utl.state_cd NOT BETWEEN 1 AND 5 THEN utl.duration ELSE 0 END) AS MonthFailed,
	COUNT(CASE WHEN utl.state_cd NOT BETWEEN 1 AND 5 THEN utl.duration ELSE 0 END) AS MonthNumBreakdowns
	FROM
	(SELECT tpm.ent_id, tpm.ent_name, tpm.shift_start_local, tpm.hour_start_local, evt.state_cd,
		SUM(CASE
			WHEN evt.EventStart >= tpm.hour_start_local AND evt.EventEnd <= DATEADD(hh, 1, tpm.hour_start_local) THEN evt.duration  -- Event Within Hour
			WHEN evt.EventStart < tpm.hour_start_local AND evt.EventEnd > DATEADD(hh, 1, tpm.hour_start_local) THEN 3600  -- Event Spans Full Hour
			WHEN evt.EventEnd >= tpm.hour_start_local AND tpm.hour_start_local > evt.EventStart THEN DATEDIFF(ss, tpm.hour_start_local, evt.EventEnd)   -- Overlaps End
			WHEN evt.EventStart >= tpm.hour_start_local AND evt.EventEnd > DATEADD(hh, 1, tpm.hour_start_local) THEN 3600 - DATEDIFF(ss, tpm.hour_start_local, evt.EventStart)   -- Overlaps Start
			ELSE 0 END) AS duration
	FROM #tpm_temp tpm
	INNER JOIN 	
		(SELECT ut.ent_id, ut.shift_start_local, ut.state_cd, ut.event_time_local AS EventStart, DATEADD(ss, ut.duration, ut.event_time_local) AS EventEnd, ut.duration
			FROM MESDB.dbo.util_log ut WITH (NOLOCK)
			INNER JOIN (SELECT * FROM dbo.MES_BSC_PerformanceRpt_Entities(@Ent_ID)) tmp ON ut.ent_id = tmp.ent_id
			WHERE ut.shift_start_local >= @FirstDayLastMonth AND ut.shift_start_local <= @LastDayLastMonth
			) evt
		ON tpm.ent_id = evt.ent_id AND tpm.shift_start_local = evt.shift_start_local
		AND (tpm.hour_start_local BETWEEN DATEADD(hh, -1, evt.EventStart) AND evt.EventEnd)
		GROUP BY  tpm.ent_id, tpm.ent_name, tpm.shift_start_local, tpm.hour_start_local, evt.state_cd) utl
	GROUP BY  utl.ent_id, utl.ent_name,
	CASE @GroupByOpt
		WHEN 1 THEN LEFT(CONVERT(varchar(20), utl.hour_start_local, 108), 2) 
--		WHEN 2 THEN sh.shift_desc
		WHEN 3 THEN CONVERT(varchar(20), utl.shift_start_local, 101)
		ELSE 'ALL'
		END) MTH

		LEFT JOIN

(SELECT --utl.ent_name,
	SUM(CASE utl.state_cd WHEN 1 THEN utl.duration ELSE 0 END) AS DayProducing,
	SUM(CASE utl.state_cd WHEN 2 THEN utl.duration ELSE 0 END) AS DayPlanDown,
	SUM(CASE utl.state_cd WHEN 3 THEN utl.duration ELSE 0 END) AS DayNonSched,
	SUM(CASE utl.state_cd WHEN 4 THEN utl.duration ELSE 0 END) AS DayBlocked,
	SUM(CASE utl.state_cd WHEN 5 THEN utl.duration ELSE 0 END) AS DayStarved,
	SUM(CASE WHEN utl.state_cd NOT BETWEEN 1 AND 5 THEN utl.duration ELSE 0 END) AS DayFailed,
	COUNT(CASE WHEN utl.state_cd NOT BETWEEN 1 AND 5 THEN utl.duration ELSE 0 END) AS DayNumBreakdowns
	FROM
	(SELECT tpm.ent_id, tpm.ent_name, tpm.shift_start_local, tpm.hour_start_local, evt.state_cd,
		SUM(CASE
			WHEN evt.EventStart >= tpm.hour_start_local AND evt.EventEnd <= DATEADD(hh, 1, tpm.hour_start_local) THEN evt.duration  -- Event Within Hour
			WHEN evt.EventStart < tpm.hour_start_local AND evt.EventEnd > DATEADD(hh, 1, tpm.hour_start_local) THEN 3600  -- Event Spans Full Hour
			WHEN evt.EventEnd >= tpm.hour_start_local AND tpm.hour_start_local > evt.EventStart THEN DATEDIFF(ss, tpm.hour_start_local, evt.EventEnd)   -- Overlaps End
			WHEN evt.EventStart >= tpm.hour_start_local AND evt.EventEnd > DATEADD(hh, 1, tpm.hour_start_local) THEN 3600 - DATEDIFF(ss, tpm.hour_start_local, evt.EventStart)   -- Overlaps Start
			ELSE 0 END) AS duration
	FROM #tpm_temp2 tpm
	INNER JOIN 	
		(SELECT ut.ent_id, ut.shift_start_local, ut.state_cd, ut.event_time_local AS EventStart, DATEADD(ss, ut.duration, ut.event_time_local) AS EventEnd, ut.duration
			FROM MESDB.dbo.util_log ut WITH (NOLOCK)
			INNER JOIN (SELECT * FROM dbo.MES_BSC_PerformanceRpt_Entities(@Ent_ID)) tmp ON ut.ent_id = tmp.ent_id
			WHERE ut.shift_start_local >= @FirstDayLastWeek AND ut.shift_start_local <= @LastDayLastWeek
			) evt
		ON tpm.ent_id = evt.ent_id AND tpm.shift_start_local = evt.shift_start_local
		AND (tpm.hour_start_local BETWEEN DATEADD(hh, -1, evt.EventStart) AND evt.EventEnd)
		GROUP BY  tpm.ent_id, tpm.ent_name, tpm.shift_start_local, tpm.hour_start_local, evt.state_cd) utl
	GROUP BY  utl.ent_id, utl.ent_name,
	CASE @GroupByOpt
		WHEN 1 THEN LEFT(CONVERT(varchar(20), utl.hour_start_local, 108), 2) 
--		WHEN 2 THEN sh.shift_desc
		WHEN 3 THEN CONVERT(varchar(20), utl.shift_start_local, 101)
		ELSE 'ALL'
		END) DY

ON Mth.ent_name = DY.ent_name

SELECT utl.ent_name,
	SUM(CASE utl.state_cd WHEN 1 THEN utl.duration ELSE 0 END) AS Producing,
	SUM(CASE utl.state_cd WHEN 2 THEN utl.duration ELSE 0 END) AS PlanDown,
	SUM(CASE utl.state_cd WHEN 3 THEN utl.duration ELSE 0 END) AS NonSched,
	SUM(CASE utl.state_cd WHEN 4 THEN utl.duration ELSE 0 END) AS Blocked,
	SUM(CASE utl.state_cd WHEN 5 THEN utl.duration ELSE 0 END) AS Starved,
	SUM(CASE WHEN utl.state_cd NOT BETWEEN 1 AND 5 THEN utl.duration ELSE 0 END) AS Failed,
	COUNT(CASE WHEN utl.state_cd NOT BETWEEN 1 AND 5 THEN utl.duration ELSE 0 END) AS NumBreakdowns
	FROM
	(SELECT tpm.ent_id, tpm.ent_name, tpm.shift_start_local, tpm.hour_start_local, evt.state_cd,
		SUM(CASE
			WHEN evt.EventStart >= tpm.hour_start_local AND evt.EventEnd <= DATEADD(hh, 1, tpm.hour_start_local) THEN evt.duration  -- Event Within Hour
			WHEN evt.EventStart < tpm.hour_start_local AND evt.EventEnd > DATEADD(hh, 1, tpm.hour_start_local) THEN 3600  -- Event Spans Full Hour
			WHEN evt.EventEnd >= tpm.hour_start_local AND tpm.hour_start_local > evt.EventStart THEN DATEDIFF(ss, tpm.hour_start_local, evt.EventEnd)   -- Overlaps End
			WHEN evt.EventStart >= tpm.hour_start_local AND evt.EventEnd > DATEADD(hh, 1, tpm.hour_start_local) THEN 3600 - DATEDIFF(ss, tpm.hour_start_local, evt.EventStart)   -- Overlaps Start
			ELSE 0 END) AS duration
	FROM #tpm_temp3 tpm
	INNER JOIN 	
		(SELECT ut.ent_id, ut.shift_start_local, ut.state_cd, ut.event_time_local AS EventStart, DATEADD(ss, ut.duration, ut.event_time_local) AS EventEnd, ut.duration
			FROM MESDB.dbo.util_log ut WITH (NOLOCK)
			INNER JOIN (SELECT * FROM dbo.MES_BSC_PerformanceRpt_Entities(@Ent_ID)) tmp ON ut.ent_id = tmp.ent_id
			WHERE ut.shift_start_local >= @YesterdayDate AND ut.shift_start_local <= @TodayDate
			) evt
		ON tpm.ent_id = evt.ent_id AND tpm.shift_start_local = evt.shift_start_local
		AND (tpm.hour_start_local BETWEEN DATEADD(hh, -1, evt.EventStart) AND evt.EventEnd)
		GROUP BY  tpm.ent_id, tpm.ent_name, tpm.shift_start_local, tpm.hour_start_local, evt.state_cd) utl
	GROUP BY  utl.ent_id, utl.ent_name,
	CASE @GroupByOpt
		WHEN 1 THEN LEFT(CONVERT(varchar(20), utl.hour_start_local, 108), 2) 
--		WHEN 2 THEN sh.shift_desc
		WHEN 3 THEN CONVERT(varchar(20), utl.shift_start_local, 101)
		ELSE 'ALL'
		END



DROP TABLE #tpm_temp
DROP TABLE #tpm_temp2
DROP TABLE #tpm_temp3

END
GO
/****** Object:  StoredProcedure [dbo].[MES_BSC_PerformanceRpt]    Script Date: 9/22/2016 3:52:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[MES_BSC_PerformanceRpt]
	@Ent_ID int,
	@TimeRangeOpt int,
	@GroupByOpt int,
	@StartShiftLocal datetime,
	@EndShiftLocal datetime

AS

BEGIN -- PROCEDURE

EXEC dbo.MES_BSC_PerformanceRpt_TimeRangeOpt
	@TimeRangeOpt = @TimeRangeOpt,
	@Ent_ID = @Ent_ID,
	@StartShiftLocal = @StartShiftLocal OUTPUT,
	@EndShiftLocal = @EndShiftLocal OUTPUT

SELECT ent.ent_name, ent.ent_id,
	CASE @GroupByOpt
		WHEN 1 THEN LEFT(CONVERT(varchar(20), tpm.hour_start_local, 108), 2) 
		WHEN 2 THEN sh.shift_desc
		WHEN 3 THEN CONVERT(varchar(20), tpm.shift_start_local, 101)
		ELSE 'ALL'
		END AS GroupN,
	MIN(tpm.shift_start_local) AS StartShiftLocal, MAX(tpm.shift_start_local) AS EndShiftLocal,
	CASE WHEN SUM(tpm.runtime) = 0 THEN 0 ELSE SUM(tpm.qty_good + tpm.qty_reject) / SUM(tpm.runtime / tpm.std_prod_rate / 3600) * 100 END AS Perf,
	CASE WHEN SUM(tpm.runtime + tpm.downtime) = 0 THEN 0 ELSE CONVERT(real, SUM(tpm.runtime)) / CONVERT(real, SUM(tpm.runtime + tpm.downtime)) * 100 END AS Avail,
	CASE WHEN SUM(tpm.qty_good + tpm.qty_reject) = 0 THEN 0 ELSE CONVERT(real, SUM(tpm.qty_good)) / CONVERT(real, SUM(tpm.qty_good + tpm.qty_reject)) * 100 END AS Qual,
	CASE WHEN SUM(tpm.runtime + tpm.downtime) = 0 THEN 0 ELSE SUM(tpm.qty_good) / SUM((tpm.runtime + tpm.downtime) / tpm.std_prod_rate / 3600) * 100 END AS OEE,
	CASE WHEN SUM(tpm.runtime + tpm.downtime) = 0 THEN 0 ELSE SUM(tpm.qty_good) / SUM((tpm.runtime + tpm.downtime) / tpm.std_prod_rate / 3600) * 100 END AS MOEE,
	CASE LEFT(ent.ent_name,1)
		WHEN 'R' THEN SUM(tpm.qty_good) * 12 
		ELSE SUM(tpm.qty_good) 
		END AS Prod
	FROM MESDB.dbo.tpm_stat tpm WITH (NOLOCK)
	INNER JOIN (SELECT * FROM dbo.MES_BSC_PerformanceRpt_Entities(@Ent_ID)) ent ON tpm.ent_id = ent.ent_id
	INNER JOIN MESDB.dbo.shift sh ON tpm.shift_id = sh.shift_id
	WHERE tpm.shift_start_local >= @StartShiftLocal AND tpm.shift_start_local <= @EndShiftLocal
	GROUP BY ent.ent_name, ent.ent_id,
	CASE @GroupByOpt
		WHEN 1 THEN LEFT(CONVERT(varchar(20), tpm.hour_start_local, 108), 2) 
		WHEN 2 THEN sh.shift_desc
		WHEN 3 THEN CONVERT(varchar(20), tpm.shift_start_local, 101)
		ELSE 'ALL'
		END

END -- PROCEDURE


GO
/****** Object:  StoredProcedure [dbo].[MES_BSC_PerformanceRpt_EntOpt]    Script Date: 9/22/2016 3:52:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[MES_BSC_PerformanceRpt_EntOpt]

AS

BEGIN -- PROCEDURE

CREATE TABLE #TempEntities
	(ent_id int, ent_name varchar(25))

/* Option For Top Level Entity */
INSERT INTO #TempEntities VALUES (0, 'ALL')

/* Option For Top Level Entity, Retrieve Children */
INSERT INTO #TempEntities
	SELECT ent_id + 1000, ent_name + ' (By Line)'
		FROM MESDB.dbo.ent WHERE parent_ent_id IS NULL

/* Options For Line Level Entities */
INSERT INTO #TempEntities
	SELECT ent.ent_id, '  ' + ent.ent_name
		FROM MESDB.dbo.ent
		INNER JOIN #TempEntities tmp ON ent.parent_ent_id = (tmp.ent_id - 1000)

SELECT * FROM #TempEntities

DROP TABLE #TempEntities

END -- PROCEDURE

GO
/****** Object:  StoredProcedure [dbo].[MES_BSC_PerformanceRpt_TimeRangeOpt]    Script Date: 9/22/2016 3:52:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[MES_BSC_PerformanceRpt_TimeRangeOpt]
	@TimeRangeOpt int = null,
	@Ent_ID int = null,
	@StartShiftLocal datetime = null OUTPUT,
	@EndShiftLocal datetime = null OUTPUT

AS

BEGIN -- PROCEDURE

DECLARE @CurrentDay datetime

SET DATEFIRST 1

IF @TimeRangeOpt IS NULL
	BEGIN -- Called By Report, Retrieve Options
	CREATE TABLE #TempTimeRangeOpts
		(OptionID int, OptionName varchar(20))
	INSERT INTO #TempTimeRangeOpts VALUES (1, 'Current Shift')
	INSERT INTO #TempTimeRangeOpts VALUES (2, 'Prev Shift')
	INSERT INTO #TempTimeRangeOpts VALUES (3, 'Current Day')
	INSERT INTO #TempTimeRangeOpts VALUES (4, 'Prev Day')
	INSERT INTO #TempTimeRangeOpts VALUES (5, 'Current Week')
	INSERT INTO #TempTimeRangeOpts VALUES (6, 'Prev Week')
	INSERT INTO #TempTimeRangeOpts VALUES (0, 'Custom Range')
	SELECT * FROM #TempTimeRangeOpts
	DROP TABLE #TempTimeRangeOpts
	END -- Called By Report, Retrieve Options
ELSE
	BEGIN -- Called As SubRoutine To Get Shift Start/End Times
	IF @TimeRangeOpt = 1
		BEGIN -- Cur Shift
		SELECT @StartShiftLocal = MIN(cur_shift_start_time_local), @EndShiftLocal = MIN(cur_shift_start_time_local)
		FROM dbo.MES_BSC_PerformanceRpt_Entities(@Ent_ID)
		END -- Cur Shift
	IF @TimeRangeOpt = 2
		BEGIN -- Prev Shift
		SELECT @StartShiftLocal = MAX(sh.shift_start_local), @EndShiftLocal =MAX(sh.shift_start_local)
		FROM (SELECT * FROM dbo.MES_BSC_PerformanceRpt_Entities(@Ent_ID)) tmp
		INNER JOIN mesdb.dbo.shift_history sh ON sh.shift_start_local < tmp.cur_shift_start_time_local AND sh.shift_start_local > DATEADD(dd, -1,  tmp.cur_shift_start_time_local)
		END -- Prev Shift
	IF @TimeRangeOpt = 3
		BEGIN -- Cur Day
		SELECT @CurrentDay = CONVERT(datetime, CONVERT(varchar(20), MAX(tmp.cur_shift_start_time_local), 101))
			FROM (SELECT * FROM dbo.MES_BSC_PerformanceRpt_Entities(@Ent_ID)) tmp
		SELECT @StartShiftLocal = MIN(sh.shift_start_local), @EndShiftLocal =MAX(sh.shift_start_local)
		FROM mesdb.dbo.shift_history sh
		WHERE sh.shift_start_local >= @CurrentDay
		END -- Cur Day
	IF @TimeRangeOpt = 4
		BEGIN -- Prev Day
		SELECT @CurrentDay = CONVERT(datetime, CONVERT(varchar(20), MAX(tmp.cur_shift_start_time_local), 101))
			FROM (SELECT * FROM dbo.MES_BSC_PerformanceRpt_Entities(@Ent_ID)) tmp
		SELECT @StartShiftLocal = MIN(sh.shift_start_local), @EndShiftLocal =MAX(sh.shift_start_local)
		FROM mesdb.dbo.shift_history sh
		WHERE sh.shift_start_local >= DATEADD(dd, -1, @CurrentDay) AND sh.shift_start_local < @CurrentDay
		END -- Prev Day
	IF @TimeRangeOpt = 5
		BEGIN -- Cur Week
		SELECT @CurrentDay = DATEADD(dd, - (DATEPART(dw, getdate()) - 1), CONVERT(datetime, CONVERT(varchar(20), MAX(tmp.cur_shift_start_time_local), 101)))
			FROM (SELECT * FROM dbo.MES_BSC_PerformanceRpt_Entities(@Ent_ID)) tmp
		SELECT @StartShiftLocal = MIN(sh.shift_start_local), @EndShiftLocal =MAX(sh.shift_start_local)
		FROM mesdb.dbo.shift_history sh
		WHERE sh.shift_start_local >= @CurrentDay AND sh.shift_start_local < DATEADD(dd, 7, @CurrentDay)
		END -- Cur Week
	IF @TimeRangeOpt = 6
		BEGIN -- Prev Week
		SELECT @CurrentDay = DATEADD(dd, - (DATEPART(dw, getdate()) - 1) - 7, CONVERT(datetime, CONVERT(varchar(20), MAX(tmp.cur_shift_start_time_local), 101)))
			FROM (SELECT * FROM dbo.MES_BSC_PerformanceRpt_Entities(@Ent_ID)) tmp
		SELECT @StartShiftLocal = MIN(sh.shift_start_local), @EndShiftLocal =MAX(sh.shift_start_local)
		FROM mesdb.dbo.shift_history sh
		WHERE sh.shift_start_local >= @CurrentDay AND sh.shift_start_local < DATEADD(dd, 7, @CurrentDay)
		END -- Prev Week
	END -- Called As SubRoutine To Get Shift Start/End Times

END -- PROCEDURE


GO
/****** Object:  StoredProcedure [dbo].[MES_BSC_UserCommentsRpt]    Script Date: 9/22/2016 3:52:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[MES_BSC_UserCommentsRpt]
	@Ent_ID int,
	@TimeRangeOpt int,
	@StartShiftLocal datetime,
	@EndShiftLocal datetime

AS

BEGIN -- PROCEDURE

EXEC dbo.MES_BSC_PerformanceRpt_TimeRangeOpt
	@TimeRangeOpt = @TimeRangeOpt,
	@Ent_ID = @Ent_ID,
	@StartShiftLocal = @StartShiftLocal OUTPUT,
	@EndShiftLocal = @EndShiftLocal OUTPUT

SELECT ent.ent_name AS Entity, sh.shift_desc AS Shift, ur.reas_desc AS Reason, ul.event_time_local AS StartTime, CONVERT(varchar, DATEADD(ms, ul.duration * 1000, 0), 8) AS Duration, ul.comments AS Comments
	FROM MESDB.dbo.util_log ul WITH (NOLOCK)
	INNER JOIN (SELECT * FROM dbo.MES_BSC_PerformanceRpt_Entities(@Ent_ID)) ent ON ul.ent_id = ent.ent_id
	INNER JOIN MESDB.dbo.shift sh ON ul.shift_id = sh.shift_id
	INNER JOIN MESDB.dbo.util_reas ur ON ul.reas_cd = ur.reas_cd
	WHERE ul.shift_start_local >= @StartShiftLocal AND ul.shift_start_local <= @EndShiftLocal
	AND ul.comments IS NOT NULL
	ORDER BY ul.event_time_local

END -- PROCEDURE



GO
/****** Object:  StoredProcedure [dbo].[MES_BSC_WaterfallRpt]    Script Date: 9/22/2016 3:52:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[MES_BSC_WaterfallRpt]
	@Ent_ID int,
	@TimeRangeOpt int,
	@GroupByOpt int,
	@StartShiftLocal datetime,
	@EndShiftLocal datetime

AS

BEGIN -- PROCEDURE

EXEC dbo.MES_BSC_PerformanceRpt_TimeRangeOpt
	@TimeRangeOpt = @TimeRangeOpt,
	@Ent_ID = @Ent_ID,
	@StartShiftLocal = @StartShiftLocal OUTPUT,
	@EndShiftLocal = @EndShiftLocal OUTPUT

SELECT ent.ent_name, ent.ent_id,
	CASE @GroupByOpt
		WHEN 1 THEN LEFT(CONVERT(varchar(20), tpm.hour_start_local, 108), 2) 
		WHEN 2 THEN sh.shift_desc
		WHEN 3 THEN CONVERT(varchar(20), tpm.shift_start_local, 101)
		ELSE 'ALL'
		END AS GroupN,
	MIN(tpm.shift_id) AS ShiftID,
	MIN(tpm.shift_start_local) AS StartShiftLocal, MAX(tpm.shift_start_local) AS EndShiftLocal,
	MIN(tpm.hour_start_Local) AS StartDate, DATEADD(hh, 1, MAX(tpm.hour_start_Local)) AS EndDate,
	CASE WHEN SUM(tpm.runtime + tpm.downtime) = 0 THEN 0 ELSE (SUM(tpm.runtime / tpm.std_prod_rate / 3600) - SUM(tpm.qty_good + tpm.qty_reject)) / SUM((tpm.runtime + tpm.downtime) / tpm.std_prod_rate / 3600)  * 100 END AS PerfLoss,
	CASE WHEN SUM(tpm.runtime + tpm.downtime) = 0 THEN 0 ELSE CONVERT(real, SUM(tpm.downtime)) / CONVERT(real, SUM(tpm.runtime + tpm.downtime)) * 100 END AS AvailLoss,
	CASE WHEN SUM(tpm.qty_good + tpm.qty_reject) = 0 THEN 0 ELSE CONVERT(real, SUM(tpm.qty_reject)) / CONVERT(real, SUM(tpm.qty_good + tpm.qty_reject)) * 100 END AS QualLoss,
	CASE WHEN SUM(tpm.runtime + tpm.downtime) = 0 THEN 0 ELSE SUM(tpm.qty_good) / SUM((tpm.runtime + tpm.downtime) / tpm.std_prod_rate / 3600) * 100 END AS OEE
	FROM MESDB.dbo.tpm_stat tpm WITH (NOLOCK)
	INNER JOIN (SELECT * FROM dbo.MES_BSC_PerformanceRpt_Entities(@Ent_ID)) ent ON tpm.ent_id = ent.ent_id
	INNER JOIN MESDB.dbo.shift sh ON tpm.shift_id = sh.shift_id
	WHERE tpm.shift_start_local >= @StartShiftLocal AND tpm.shift_start_local <= @EndShiftLocal
	GROUP BY ent.ent_name, ent.ent_id,
	CASE @GroupByOpt
		WHEN 1 THEN LEFT(CONVERT(varchar(20), tpm.hour_start_local, 108), 2) 
		WHEN 2 THEN sh.shift_desc
		WHEN 3 THEN CONVERT(varchar(20), tpm.shift_start_local, 101)
		ELSE 'ALL'
		END

END -- PROCEDURE


GO
/****** Object:  UserDefinedFunction [dbo].[MES_BSC_PerformanceRpt_Entities]    Script Date: 9/22/2016 3:52:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[MES_BSC_PerformanceRpt_Entities](@Ent_ID int)
RETURNS @retEntities TABLE 
(ent_id int, ent_name varchar(20), cur_shift_start_time_local datetime)

AS 

BEGIN -- Function

IF @Ent_ID = 0
	BEGIN -- All Entities
	INSERT INTO @retEntities
		SELECT ent.ent_id,ent.ent_name, ent.cur_shift_start_time_local
			FROM MESDB.dbo.ent
			INNER JOIN  MESDB.dbo.ent pent ON ent.parent_ent_id = pent.ent_id
			WHERE pent.parent_ent_id IS NULL
	END -- All Entities

IF @Ent_ID > 1000
	BEGIN -- Top Level Entity
	INSERT INTO @retEntities
		SELECT ent.ent_id,ent.ent_name, ent.cur_shift_start_time_local
			FROM MESDB.dbo.ent
			INNER JOIN  MESDB.dbo.ent pent ON ent.parent_ent_id = pent.ent_id
			WHERE pent.ent_id = (@Ent_ID - 1000)
	END -- Top Level Entity

IF @Ent_ID > 0 AND @Ent_id < 1000
	BEGIN -- Single Entity
	INSERT INTO @retEntities
		SELECT ent.ent_id,ent.ent_name, ent.cur_shift_start_time_local
			FROM MESDB.dbo.ent
			WHERE ent_id = @Ent_ID
	END -- Single Entity

RETURN
END -- Function


GO
