--SQLQuery5-CREATE HomeWork and HWresults.sql

USE P_421_DDL

CREATE TABLE HomeWorks (
    lesson_id BIGINT PRIMARY KEY
	   CONSTRAINT FK_HomeWorks_Schedule FOREIGN KEY REFERENCES Schedule(lesson_id),
    task NVARCHAR(1024) NOT NULL,
    deadline DATE NOT NULL,
    [date] DATE NULL  
);

CREATE TABLE HWresults (
    lesson_id BIGINT
        CONSTRAINT FK_HWresults_HomeWorks FOREIGN KEY REFERENCES Schedule(lesson_id),
    student_id INT
        CONSTRAINT FK_HWresults_Students FOREIGN KEY REFERENCES Students(student_id),
    PRIMARY KEY (lesson_id, student_id),
    submission_date DATE NOT NULL,  
    answer NVARCHAR(1024) NOT NULL,
    grade TINYINT NOT NULL
);