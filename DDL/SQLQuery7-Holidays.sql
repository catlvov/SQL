--SQLQuery7-Holidays.sql

USE p_421_import;

--CREATE TABLE Holidays
--(
--	holiday_id		TINYINT PRIMARY KEY,
--	holiday_name	NVARCHAR(150) NOT NULL,
--	[month]			TINYINT		   NULL,
--	[day]			TINYINT		   NULL,
--	duration		TINYINT		   NOT NULL,
--);

--CREATE TABLE DaysOFF
--(
--	[date]   DATE PRIMARY KEY,
--	hiliday	 TINYINT CONSTRAINT FK_DaysOff_Holidays FOREIGN KEY REFERENCES Holidays(Holiday_id)
--);

INSERT Holidays
		(holiday_id, holiday_name,        [month],  [day], duration)
VALUES  
		(1        ,N'Новый год'		     , NULL    ,NULL  ,14      ),
		(2        ,N'23 Февраля'	     , 2       ,23    ,1       ),
		(3        ,N'8 марта'			 , 3       ,8     ,3       ),
		(4        ,N'Пасха'			     , NULL    ,NULL  ,3       ),
		(5        ,N'Майские праздники'  , 5       ,1     ,10      ),
		(6        ,N'Летние каникулы'	 , NULL    ,NULL  ,14      );