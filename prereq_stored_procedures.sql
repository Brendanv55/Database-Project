DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `prereq_create`(c_ID varchar(8), pre_ID varchar(8))
BEGIN
    INSERT INTO prereq
    VALUES(c_ID, pre_ID) ;
END$$
DELIMITER ;


CREATE DEFINER=`root`@`localhost` PROCEDURE `prereq_read`(c_ID varchar(8))
BEGIN
    SELECT * FROM prereq  WHERE
    c_ID = prereq.course_ID ;
END$$
DELIMITER ;


CREATE DEFINER=`root`@`localhost` PROCEDURE `time_slot_drop`(c_ID varchar(8), pre_ID varchar(8))
BEGIN
    DELETE FROM prereq WHERE 
     c_ID = prereq.course_ID AND pre_ID = prereq.prereq_ID ;
END$$
DELIMITER ; 

