DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `instructor_create`(i_ID varchar(5), fName varchar(20), lName varchar(20), deptName varchar(20), salary decimal(8,2))
BEGIN
    INSERT INTO instructor
    VALUES(i_ID , fName, lName, deptName, salary) ;
END$$
DELIMITER ;


CREATE DEFINER=`root`@`localhost` PROCEDURE `instructor_read`(i_ID varchar(5))
BEGIN
    SELECT * FROM instructor WHERE
    i_ID = instructor.ID ;
END$$
DELIMITER ;


CREATE DEFINER=`root`@`localhost` PROCEDURE `instructor_drop`(i_ID varchar(5), fName varchar(20), lName varchar(20), deptName varchar(20), salary decimal(8,2))
BEGIN
    DELETE FROM instructor WHERE 
    i_ID = instructor.ID AND fName = instructor.name_first AND lName = instructor.name_last AND deptName = instructor.dept_name AND salary = instructor.salary ;
END$$
DELIMITER ; 

