--SQLQuery2-AGGREGATION.sql

USE p_421_import

--SELECT COUNT(*) FROM Directions
--SELECT 
--	[Направление обучения] = direction_name,
--	[Количество групп] = COUNT(group_id) 
--FROM Groups,Directions
--WHERE direction = direction_id 
--GROUP BY direction_name
--;

--SELECT
--  [Название группы] = Group_name,
--  [Кол-во Студентов] = COUNT(stud_id)
--FROM Groups,Students
--WHERE [group] = group_id
--GROUP BY group_name
--;

--SELECT 
--  [Название направления] = direction_name,
--  [Кол-во Студентов] = COUNT(stud_id)
--FROM Students,Directions,Groups
--WHERE [group] = group_id AND direction = direction_id
--GROUP BY direction_name
--;

--SELECT 
--  [Название дисцлины] = discipline_name,
--  [Кол-во преподователей] = COUNT(teacher_id)
--FROM Teachers, Disciplines, TeachersDisciplinesRelation
--WHERE TeachersDisciplinesRelation.teacher = teacher_id AND discipline = discipline_id
--GROUP BY discipline_name
--ORDER BY COUNT(teacher_id) ASC
--;

--SELECT 
--	[ID] = stud_id,
--	[Студент] = FORMATMESSAGE(N'%s %s %s', last_name,first_name,middle_name),
--	[Возраст] = DATEDIFF(HOUR,birth_date,GETDATE())/8766 
--FROM Students,Groups,Directions
--WHERE [group] = group_id
--    AND direction = direction_id
--    AND DATEDIFF(HOUR, birth_date, GETDATE()) / 8766 BETWEEN 22 AND 35
--ORDER BY [Возраст];

SELECT
	[Group] = group_name,
	[Кол-во студентов] = COUNT(stud_id)
FROM Groups, Students
WHERE [group] = group_id 
GROUP BY group_name
HAVING COUNT(stud_id) < 10
;

SELECT
	[Group] = group_name,
	[Кол-во студентов] = COUNT(stud_id)
FROM Groups, Students
WHERE [group] = group_id 
GROUP BY group_name
HAVING COUNT(stud_id) = 1
;

SELECT * FROM Groups