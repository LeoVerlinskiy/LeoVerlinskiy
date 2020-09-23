SELECT
	DatabaseName
	,Sum(CurrentPerm)/1024/1024/1024 AS USEDSPACE_IN_GB
	,Sum(MaxPerm)/1024/1024/1024 AS MAXSPACE_IN_GB
	--,Sum(CurrentPerm)/ NullIfZero (Sum(MaxPerm)) *100 (Format 'zz9.99%') AS Percentage_Used 
        ,USEDSPACE_IN_GB * 100 /  MAXSPACE_IN_GB AS Percentage_Used

	,MAXSPACE_IN_GB- USEDSPACE_IN_GB AS REMAININGSPACE_IN_GB
	FROM DBC.DiskSpace
	WHERE DatabaseName = 'ENTPRIL_BHI_EXTRACT'
	ORDER BY 3 DESC
	GROUP BY DatabaseName;

SELECT
	DatabaseName
	,Sum(CurrentPerm)/1024/1024/1024 AS USEDSPACE_IN_GB
	,Sum(MaxPerm)/1024/1024/1024 AS MAXSPACE_IN_GB
	--,Sum(CurrentPerm)/ NullIfZero (Sum(MaxPerm)) *100 (Format 'zz9.99%') AS Percentage_Used 
        ,USEDSPACE_IN_GB * 100 /  MAXSPACE_IN_GB AS Percentage_Used

	,MAXSPACE_IN_GB- USEDSPACE_IN_GB AS REMAININGSPACE_IN_GB
	FROM DBC.DiskSpace
	WHERE DatabaseName = 'ENTPRNM_BHI_EXTRACT'
	ORDER BY 3 DESC
	GROUP BY DatabaseName;
	
	SELECT
	DatabaseName
	,Sum(CurrentPerm)/1024/1024/1024 AS USEDSPACE_IN_GB
	,Sum(MaxPerm)/1024/1024/1024 AS MAXSPACE_IN_GB
	--,Sum(CurrentPerm)/ NullIfZero (Sum(MaxPerm)) *100 (Format 'zz9.99%') AS Percentage_Used 
        ,USEDSPACE_IN_GB * 100 /  MAXSPACE_IN_GB AS Percentage_Used

	,MAXSPACE_IN_GB- USEDSPACE_IN_GB AS REMAININGSPACE_IN_GB
	FROM DBC.DiskSpace
	WHERE DatabaseName = 'ENTPRMT_BHI_EXTRACT'
	ORDER BY 3 DESC
	GROUP BY DatabaseName;
	
		SELECT
	DatabaseName
	,Sum(CurrentPerm)/1024/1024/1024 AS USEDSPACE_IN_GB
	,Sum(MaxPerm)/1024/1024/1024 AS MAXSPACE_IN_GB
	--,Sum(CurrentPerm)/ NullIfZero (Sum(MaxPerm)) *100 (Format 'zz9.99%') AS Percentage_Used 
        ,USEDSPACE_IN_GB * 100 /  MAXSPACE_IN_GB AS Percentage_Used

	,MAXSPACE_IN_GB- USEDSPACE_IN_GB AS REMAININGSPACE_IN_GB
	FROM DBC.DiskSpace
	WHERE DatabaseName = 'ENTPROK_BHI_EXTRACT'
	ORDER BY 3 DESC
	GROUP BY DatabaseName;
	
			SELECT
	DatabaseName
	,Sum(CurrentPerm)/1024/1024/1024 AS USEDSPACE_IN_GB
	,Sum(MaxPerm)/1024/1024/1024 AS MAXSPACE_IN_GB
	--,Sum(CurrentPerm)/ NullIfZero (Sum(MaxPerm)) *100 (Format 'zz9.99%') AS Percentage_Used 
        ,USEDSPACE_IN_GB * 100 /  MAXSPACE_IN_GB AS Percentage_Used

	,MAXSPACE_IN_GB- USEDSPACE_IN_GB AS REMAININGSPACE_IN_GB
	FROM DBC.DiskSpace
	WHERE DatabaseName = 'ENTPRTX_BHI_EXTRACT'
	ORDER BY 3 DESC
	GROUP BY DatabaseName;