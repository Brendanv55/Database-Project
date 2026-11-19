DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `department_create`(d_name varchar(20), build varchar(15), budg decimal(12,2))
BEGIN
    INSERT INTO department
    VALUES(d_name, build, budg) ;
END$$
DELIMITER ;


CREATE DEFINER=`root`@`localhost` PROCEDURE `department_read`(d_name varchar(20))
BEGIN
    SELECT * FROM department  WHERE
    d_name = department.dept_name ;
END$$
DELIMITER ;


CREATE DEFINER=`root`@`localhost` PROCEDURE `department_drop`(d_name varchar(20), build varchar(15), budg decimal(12,2))
BEGIN
    DELETE FROM department WHERE 
    d_name = department.dept_name AND build = department.building AND budg = department.budget ;
END$$
DELIMITER ; 

