USE p_421_import;
SET DATEFIRST 1;

PRINT dbo.GetNextLearningDay(N'P_421',N'2026-04-28');
PRINT dbo.GetNextLearningDate(N'P_421',N'2026-04-28');