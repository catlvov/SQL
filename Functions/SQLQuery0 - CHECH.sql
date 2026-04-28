USE p_421_import;
SET DATEFIRST 1;

--PRINT dbo.GetNextLearningDay(N'P_421',N'2026-04-28');
--PRINT dbo.GetNextLearningDate(N'P_421',N'2026-04-28');

--PRINT dbo.GetNewYearHolidaysStartDate(2027);
--PRINT dbo.GetSummerHolidaysStartDate(2023);
--PRINT dbo.GetEasterDate(2025);
PRINT dbo.GetHolidaysStartDate(2026, N'Лет%');