DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `advisor_create`(studentID varchar(5), instructorID varchar(5))
begin 
insert into advisor values (studentID, instructorID);  
end$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `advisor_delete`(student_ID varchar(5), instructor_ID varchar(5))
begin 
delete from advisor where s_ID = student_ID AND i_ID = instructor_ID;
end$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `advisor_read`()
begin 
select * from advisor;  
end$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `advisor_update`(student_ID varchar(5), instructor_ID varchar(5))
BEGIN
update advisor set i_ID = instructor_ID where s_ID = student_ID;
end$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `course_create`(course__ID varchar(8), title_ varchar(50), dept__name varchar(20), credits_ decimal(2,0))
BEGIN
insert into course values (course__ID, title_, dept__name, credits_);
end$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `course_delete`(course__ID varchar(8))
BEGIN
delete from course where course_ID = course__ID;
end$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `course_read`()
BEGIN
select * from course;
end$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `course_update`(course__ID varchar(8), title_ varchar(50), dept__name varchar(20), credits_ decimal(2,0))
BEGIN
update course set title = title_, dept_name = dept__name, credits = credits_ where course_ID = course__ID;
end$$
DELIMITER ;
