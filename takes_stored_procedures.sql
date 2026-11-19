
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `takes_update_grade`(stud_ID varchar(5), crs_ID varchar(8), section_ID varchar(8), sem varchar(6), takesYear decimal(4,0), newGrade varchar(2))
BEGIN
    UPDATE takes
    SET grade = newGrade WHERE 
    stud_ID = takes.student_ID AND crs_ID = takes.course_ID AND section_ID = takes.sec_ID AND sem = takes.semester AND takesYear = takes.year; 
END$$
DELIMITER ;


CREATE DEFINER=`root`@`localhost` PROCEDURE `takes_enroll`(stud_ID varchar(5), crs_ID varchar(8), section_ID varchar(8), sem varchar(6), takesYear decimal(4,0), newGrade varchar(2))
BEGIN
    INSERT INTO takes
    VALUES(stud_ID , crs_ID, section_ID, sem, takesYear, newGrade) ;
END$$
DELIMITER ;


CREATE DEFINER=`root`@`localhost` PROCEDURE `takes_drop`(stud_ID varchar(5), crs_ID varchar(8), section_ID varchar(8), sem varchar(6), takesYear decimal(4,0), newGrade varchar(2))
BEGIN
    DELETE FROM takes WHERE 
    stud_ID = takes.student_ID AND crs_ID = takes.course_ID AND section_ID = takes.sec_ID AND sem = takes.semester AND takesYear = takes.year; 
END$$
DELIMITER ;


CREATE DEFINER=`root`@`localhost` PROCEDURE `takes_view_student_classes`(stud_ID varchar(5), sem varchar(6))
BEGIN
    SELECT * FROM takes WHERE
    stud_ID = takes.student_ID AND sem = takes.semester;
END$$
DELIMITER ;




CREATE DEFINER=`root`@`localhost` PROCEDURE `takes_read`(stud_ID varchar(5), sem varchar(6))
BEGIN
    SELECT * FROM takes;
END$$
DELIMITER ;

