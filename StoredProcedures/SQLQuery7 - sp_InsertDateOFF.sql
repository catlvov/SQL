--SQLQuery7 - sp_InsertDateOFF.sql

USE p_421_import
SET DATEFIRST 1;
GO

CREATE OR ALTER PROCEDURE sp_InsertDayOFF
		@holiday AS TINYINT,
		@date   AS DATE    OUTPUT ,
		@day    AS TINYINT OUTPUT
AS
BEGIN
	INSERT DaysOFF([date],hiliday) VALUES (@date, @holiday)
	SET @day += 1;
	SET @date = DATEADD(DAY,1,@date)
END