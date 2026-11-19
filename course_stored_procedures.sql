DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `course_create`(c_ID varchar(8), titl varchar(50), dept_nm varchar(20), creds decimal(2,0))
BEGIN
    INSERT INTO course
    VALUES(c_ID, titl, dept_nm, creds) ;
END$$
DELIMITER ;


CREATE DEFINER=`root`@`localhost` PROCEDURE `course_read`(c_ID varchar(8))
BEGIN
    SELECT * FROM course  WHERE
    c_ID = course.course_ID ;
END$$
DELIMITER ;


CREATE DEFINER=`root`@`localhost` PROCEDURE `course_drop`(c_ID varchar(8), titl varchar(50), dept_nm varchar(20), creds decimal(2,0))
BEGIN
    DELETE FROM course WHERE 
    c_ID = course.course_ID AND titl = course.title AND dept_nm = course.dept_name AND creds = course.credits ;
END$$
DELIMITER ; 

