--SQLQuery0-CHECK PROCEDURES.sql
USE P_421_Import;
SET DATEFIRST 1;

--DELETE FROM Schedule;

--EXECUTE sp_InsertSchedule N'P_421', N'%MS SQL Server', N'Юыху', N'2026-03-26', N'14:00'
--EXECUTE sp_SelectSchedule;
EXEC sp_SetALLholidaysFor 2026;

SELECT [date], holiday_name 
FROM DaysOFF 
JOIN Holidays ON (hiliday = holiday_id);