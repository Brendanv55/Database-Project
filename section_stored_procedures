DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_section`(courseID varchar(8),secID varchar(8), section_semester varchar(6), section_year decimal(4,0), section_building varchar(15), section_room_num varchar(7), section_time_slot_ID varchar(4))
BEGIN
	INSERT INTO section
    VALUES(courseID, secID, section_semester, section_year, section_building, section_room_num, section_time_slot_ID);
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_section`(courseID varchar(8),secID varchar(8), section_semester varchar(6), section_year decimal(4,0), section_building varchar(15), section_room_num varchar(7), section_time_slot_ID varchar(4))
BEGIN
    DELETE FROM section
    WHERE courseID=course_ID
    AND secID=sec_ID
    AND section_semester=semester
    AND section_year=year
    AND section_buiding=building
    AND section_room_num=room_num
    AND section_time_slot_ID=time_slot_ID;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `read_section`()
BEGIN 
	SELECT *
    FROM section;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_section`(courseID varchar(8),secID varchar(8), section_semester varchar(6), section_year decimal(4,0), section_building varchar(15), section_room_num varchar(7), section_time_slot_ID varchar(4))
BEGIN
    UPDATE section
    SET courseID=course_ID
    AND secID=sec_ID
    AND section_semester=semester
    AND section_year=year
    AND section_buiding=building
    AND section_room_num=room_num
    AND section_time_slot_ID=time_slot_ID;
END$$
DELIMITER ;
