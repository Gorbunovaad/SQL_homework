-- Задача 1

DROP FUNCTION IF EXISTS date_translate;
DELIMITER $$
CREATE FUNCTION date_translate(num integer)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
	DECLARE days INT;
    DECLARE hours INT;
    DECLARE minutes INT;
    DECLARE seconds INT;
    DECLARE result VARCHAR(100);
	SET days = floor(num/(24*60*60));
    SET num = num % (24*60*60);
    SET hours = floor(num/(60*60));
    SET num = num % (60*60);
	SET minutes = floor(num/60);
    SET seconds = num % 60;
    SET result = CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ', seconds, ' seconds ');
RETURN result;
END $$
DELIMITER ;

SELECT date_translate(123456);

