create database college_db;
use college_db:

create table if not exists students (
    s_id int auto_increment primary key,
    first_name varchar(30) not null,
    last_name varchar(30) not null,
    score float(5,2)
);


insert into student value(null, "Leyla", "Garcia", 42);
insert into student value(null, "David", "Freitas", 99);
insert into student value(null, "Eli", "Jarvis", 75);



select * from student;

-- alter table student add grade char(1);
-- insert into student value(null, "Martin", "Fernandez", 81,null);

CREATE PROCEDURE IF NOT EXISTs update_student_grade(IN p_id INT)
BEGIN
    UPDATE student
    SET grade = CASE
        WHEN score >= 90 THEN 'A'
        WHEN score >= 80 THEN 'B'
        WHEN score >= 70 THEN 'C'
        WHEN score >= 60 THEN 'D'
        ELSE 'F'
    END
    WHERE s_id = p_id;
END;

CALL update_student_grade(2);
select * from student;