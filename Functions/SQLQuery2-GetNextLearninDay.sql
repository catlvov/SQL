USE p_421_import;
SET DATEFIRST 1;
GO

CREATE FUNCTION GetNextLearningDay(@group_name AS NVARCHAR(10), @date AS DATE)RETURNS TINYINT
AS
BEGIN
	DECLARE @learning_days AS TINYINT = (SELECT learning_days FROM Groups WHERE group_name=@group_name)
	DECLARE @day		   AS TINYINT = DATEPART(WEEKDAY, @date);
	WHILE @day < 14
	BEGIN
		IF (POWER(2,@day%7) & @learning_days) <> 0 RETURN @day%7+1;
		SET @day+=1;
	END
	RETURN @day%7+1;
END