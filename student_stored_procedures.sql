DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `student_create`(s_ID varchar(5), fName varchar(20), lName varchar(20), deptName varchar(20), creds decimal(3,0))
BEGIN
    INSERT INTO student
    VALUES(s_ID , fName, lName, deptName, creds) ;
END$$
DELIMITER ;


CREATE DEFINER=`root`@`localhost` PROCEDURE `student_read`(s_ID varchar(5))
BEGIN
    SELECT * FROM student WHERE
    s_ID = student.ID ;
END$$
DELIMITER ;


CREATE DEFINER=`root`@`localhost` PROCEDURE `student_drop`(s_ID varchar(5), fName varchar(20), lName varchar(20), deptName varchar(20), creds decimal(3,0))
BEGIN
    DELETE FROM student WHERE 
    s_ID = student.ID AND fName = student.name_first AND lName = student.name_last AND deptName = student.dept_name AND creds = student.tot_cred ;
END$$
DELIMITER ; 

