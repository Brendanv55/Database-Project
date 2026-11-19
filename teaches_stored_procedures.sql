DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `teaches_create`(i_ID varchar(5), c_ID varchar(8), s_ID varchar(8), sem varchar(6), teachesYear decimal(4,0))
BEGIN
    INSERT INTO teaches
    VALUES(i_ID , c_ID, s_ID, sem, teachesYear) ;
END$$
DELIMITER ;


CREATE DEFINER=`root`@`localhost` PROCEDURE `teaches_view_all_classes`(i_ID varchar(5), sem varchar(6))
BEGIN
    SELECT * FROM teaches WHERE
    i_ID = teaches.instructor_ID AND sem = teaches.semester ;
END$$
DELIMITER ;


CREATE DEFINER=`root`@`localhost` PROCEDURE `teaches_read`()
BEGIN
    SELECT * FROM teaches ;
END$$
DELIMITER ;


CREATE DEFINER=`root`@`localhost` PROCEDURE `teaches_drop`(i_ID varchar(5), c_ID varchar(8), s_ID varchar(8), sem varchar(6), teachesYear decimal(4,0))
BEGIN
    DELETE FROM teaches WHERE 
    i_ID = teaches.instructor_ID AND c_ID = teaches.course_ID AND s_ID = teaches.section_ID AND sem = teaches.semester AND teachesYear = teaches.year ;
END$$
DELIMITER ; 

