--SQLQuery2-GetNextLearninDate.sql

USE p_421_import;
SET DATEFIRST 1;
GO

CREATE OR ALTER FUNCTION GetNextLearningDate(@group_name AS NVARCHAR(10), @date AS DATE)RETURNS DATE
AS
BEGIN 
	DECLARE @interval AS INT       = CAST(dbo.GetNextLearningDay(@group_name,@date)AS INT) - DATEPART(WEEKDAY,@date);
	IF @interval < 0 SET @interval = @interval+7;
	DECLARE @next_date AS DATE	   = DATEADD(DAY,@interval,@date);
	IF EXISTS (SELECT hiliday FROM DaysOFF WHERE [date]=@next_date)
		SET @next_date = dbo.GetNextLearningDate(@group_name,@next_date);
	RETURN @next_date;
END