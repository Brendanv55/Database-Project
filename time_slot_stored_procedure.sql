DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `time_slot_create`(t_ID varchar(4), day varchar(1), s_hr float(2,0), s_min decimal(2,0), e_hr decimal(2,0), e_min decimal(2,0))
BEGIN
    INSERT INTO time_slot
    VALUES(t_ID, day, s_hr, s_min, e_hr, e_min) ;
END$$
DELIMITER ;


CREATE DEFINER=`root`@`localhost` PROCEDURE `time_slot_read`(t_ID varchar(4), day varchar(1), s_hr float(2,0), s_min decimal(2,0))
BEGIN
    SELECT * FROM time_slot WHERE
    t_ID = time_slot.time_slot_ID AND day = time_slot.day AND s_hr = time_slot.start_hr AND s_min = time_slot.start_min;
END$$
DELIMITER ;


CREATE DEFINER=`root`@`localhost` PROCEDURE `time_slot_drop`(t_ID varchar(4), day varchar(1), s_hr float(2,0), s_min decimal(2,0), e_hr decimal(2,0), e_min decimal(2,0))
BEGIN
    DELETE FROM time_slot WHERE 
     t_ID = time_slot.time_slot_ID AND day = time_slot.day AND s_hr = time_slot.start_hr AND s_min = time_slot.start_min AND e_hr = time_slot.end_hr AND e_min = time_slot.end_min ;
END$$
DELIMITER ; 

